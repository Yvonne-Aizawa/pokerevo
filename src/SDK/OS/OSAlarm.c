#include "types.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSAlarm.h"
#include "SDK/OS/OSThread.h"
#include "SDK/OS/OSError.h"

typedef BOOL (*OSShutdownFunction)(BOOL final, u32 event);

typedef struct OSShutdownFunctionInfo
{
    OSShutdownFunction func;              // 0x0
    u32 priority;                         // 0x4
    struct OSShutdownFunctionInfo *next;  // 0x8
    struct OSShutdownFunctionInfo *prev;  // 0xC
} OSShutdownFunctionInfo;

typedef struct OSAlarmQueue
{
    OSAlarm *head;
    OSAlarm *tail;
} OSAlarmQueue;

void OSRegisterShutdownFunction(OSShutdownFunctionInfo *info);
void PPCMtdec(u32 value);
BOOL __DVDTestAlarm(const OSAlarm *alarm);

// Still defined in sbss_2.s, which links after every TU; static in the original.
extern OSAlarmQueue AlarmQueue;

static void DecrementerExceptionHandler(__OSException exception, OSContext *context);
static BOOL OnReset(BOOL final, u32 event);

static OSShutdownFunctionInfo ResetFunctionInfo = {OnReset, 0xFFFFFFFF, NULL, NULL};

static inline void SetTimer(OSAlarm *alarm)
{
    OSTime delta = alarm->fire - __OSGetSystemTime();

    if (delta < 0) {
        PPCMtdec(0);
    } else if (delta < 0x80000000) {
        PPCMtdec((u32)delta);
    } else {
        PPCMtdec(0x7fffffff);
    }
}

void __OSInitAlarm(void)
{
    if (__OSGetExceptionHandler(__OS_EXCEPTION_DECREMENTER) != DecrementerExceptionHandler) {
        AlarmQueue.head = AlarmQueue.tail = NULL;
        __OSSetExceptionHandler(__OS_EXCEPTION_DECREMENTER, DecrementerExceptionHandler);
        OSRegisterShutdownFunction(&ResetFunctionInfo);
    }
}

void OSCreateAlarm(OSAlarm *alarm)
{
    alarm->handler = NULL;
    alarm->tag = 0;
}

static void InsertAlarm(OSAlarm *alarm, OSTime fire, OSAlarmHandler handler)
{
    OSAlarm *next;
    OSAlarm *prev;

    if (0 < alarm->period) {
        OSTime time = __OSGetSystemTime();

        fire = alarm->start;
        if (alarm->start < time) {
            fire += alarm->period * ((time - alarm->start) / alarm->period + 1);
        }
    }

    alarm->handler = handler;
    alarm->fire = fire;

    for (next = AlarmQueue.head; next; next = next->next) {
        if (next->fire <= fire) {
            continue;
        }

        alarm->prev = next->prev;
        next->prev = alarm;
        alarm->next = next;
        prev = alarm->prev;
        if (prev) {
            prev->next = alarm;
        } else {
            AlarmQueue.head = alarm;
            SetTimer(alarm);
        }
        return;
    }

    alarm->next = NULL;
    prev = AlarmQueue.tail;
    AlarmQueue.tail = alarm;
    alarm->prev = prev;
    if (prev) {
        prev->next = alarm;
    } else {
        AlarmQueue.head = AlarmQueue.tail = alarm;
        SetTimer(alarm);
    }
}

void OSSetAlarm(OSAlarm *alarm, OSTime tick, OSAlarmHandler handler)
{
    BOOL enabled = OSDisableInterrupts();

    alarm->period = 0;
    InsertAlarm(alarm, __OSGetSystemTime() + tick, handler);
    OSRestoreInterrupts(enabled);
}

void OSSetPeriodicAlarm(OSAlarm *alarm, OSTime start, OSTime period, OSAlarmHandler handler)
{
    BOOL enabled = OSDisableInterrupts();

    alarm->period = period;
    alarm->start = __OSTimeToSystemTime(start);
    InsertAlarm(alarm, 0, handler);
    OSRestoreInterrupts(enabled);
}

void OSCancelAlarm(OSAlarm *alarm)
{
    OSAlarm *next;
    BOOL enabled = OSDisableInterrupts();

    if (alarm->handler == NULL) {
        OSRestoreInterrupts(enabled);
        return;
    }

    next = alarm->next;
    if (next == NULL) {
        AlarmQueue.tail = alarm->prev;
    } else {
        next->prev = alarm->prev;
    }

    if (alarm->prev) {
        alarm->prev->next = next;
    } else {
        AlarmQueue.head = next;
        if (next) {
            SetTimer(next);
        }
    }

    alarm->handler = NULL;
    OSRestoreInterrupts(enabled);
}

static void DecrementerExceptionCallback(__OSException exception, OSContext *context)
{
    OSAlarm *alarm;
    OSAlarm *next;
    OSAlarmHandler handler;
    OSTime time;
    OSContext exceptionContext;
#pragma unused(exception)

    time = __OSGetSystemTime();
    alarm = AlarmQueue.head;
    if (alarm == NULL) {
        OSLoadContext(context);
    }

    if (time < alarm->fire) {
        SetTimer(alarm);
        OSLoadContext(context);
    }

    next = alarm->next;
    AlarmQueue.head = next;
    if (next == NULL) {
        AlarmQueue.tail = NULL;
    } else {
        next->prev = NULL;
    }

    handler = alarm->handler;
    alarm->handler = NULL;
    if (0 < alarm->period) {
        InsertAlarm(alarm, 0, handler);
    }

    if (AlarmQueue.head) {
        SetTimer(AlarmQueue.head);
    }

    OSDisableScheduler();
    OSClearContext(&exceptionContext);
    OSSetCurrentContext(&exceptionContext);
    handler(alarm, context);
    OSClearContext(&exceptionContext);
    OSSetCurrentContext(context);
    OSEnableScheduler();
    __OSReschedule();
    OSLoadContext(context);
}

static asm void DecrementerExceptionHandler(register __OSException exception, register OSContext *context)
{
    nofralloc
    stw r0, 0x0(r4)
    stw r1, 0x4(r4)
    stw r2, 0x8(r4)
    stmw r6, 0x18(r4)
    mfspr r0, 0x391
    stw r0, 0x1a8(r4)
    mfspr r0, 0x392
    stw r0, 0x1ac(r4)
    mfspr r0, 0x393
    stw r0, 0x1b0(r4)
    mfspr r0, 0x394
    stw r0, 0x1b4(r4)
    mfspr r0, 0x395
    stw r0, 0x1b8(r4)
    mfspr r0, 0x396
    stw r0, 0x1bc(r4)
    mfspr r0, 0x397
    stw r0, 0x1c0(r4)
    stwu r1, -8(r1)
    b DecrementerExceptionCallback
}

void OSSetAlarmTag(OSAlarm *alarm, u32 tag)
{
    alarm->tag = tag;
}

static BOOL OnReset(BOOL final, u32 event)
{
    OSAlarm *alarm;
    OSAlarm *next;

    if (final) {
        alarm = AlarmQueue.head;
        next = alarm ? alarm->next : NULL;
        while (alarm) {
            if (__DVDTestAlarm(alarm) == FALSE) {
                OSCancelAlarm(alarm);
            }
            alarm = next;
            next = alarm ? alarm->next : NULL;
        }
    }

    return TRUE;
}

void OSSetAlarmUserData(OSAlarm *alarm, void *userData)
{
    alarm->userData = userData;
}

void *OSGetAlarmUserData(const OSAlarm *alarm)
{
    return alarm->userData;
}
