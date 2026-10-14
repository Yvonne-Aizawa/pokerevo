#include "types.h"
#include "SDK/OS/OSAssert.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSAlarm.h"
#include "SDK/OS/OSMutex.h"
#include "SDK/OS/OSThread.h"

#define OS_ERROR_FPE 16

#define MSR_FE0 0x00000800
#define MSR_FE1 0x00000100

#define FPSCR_ENABLE 0x000000F8
#define FPSCR_NI     0x00000004

#define __OSFPUContext         (*(OSContext **)0x800000D8)
#define __OSActiveThreadQueue  (*(OSThreadQueue *)0x800000DC)
#define __OSCurrentThread      (*(OSThread **)0x800000E4)

// Defined by OSError.c, still in asm.
extern void *__OSErrorTable[];
extern u32 __OSFpscrEnableBits;

// Linker-generated
extern u8 _stack_addr[];
extern u8 _stack_end[];

static void DefaultSwitchThreadCallback(OSThread *from, OSThread *to);

static OSContext IdleContext;
static OSThread IdleThread;
static OSThreadQueue RunQueue[OS_PRIORITY_MAX + 1];
static OSThread DefaultThread;
static volatile u32 RunQueueBits;
static volatile BOOL RunQueueHint;
static volatile s32 Reschedule;

static OSSwitchThreadCallback SwitchThreadCallback = DefaultSwitchThreadCallback;

#define AddTail(queue, thread, link)       \
    {                                      \
        OSThread *__prev;                  \
                                           \
        __prev = (queue)->tail;            \
        if (__prev == NULL) {              \
            (queue)->head = (thread);      \
        } else {                           \
            __prev->link.next = (thread);  \
        }                                  \
        (thread)->link.prev = __prev;      \
        (thread)->link.next = NULL;        \
        (queue)->tail = (thread);          \
    }

#define AddPrio(queue, thread, link)                                                  \
    {                                                                                 \
        OSThread *__prev, *__next;                                                    \
                                                                                      \
        for (__next = (queue)->head; __next && __next->priority <= (thread)->priority; \
             __next = __next->link.next) {                                            \
        }                                                                             \
        if (__next == NULL) {                                                         \
            AddTail(queue, thread, link);                                             \
        } else {                                                                      \
            (thread)->link.next = __next;                                             \
            __prev = __next->link.prev;                                               \
            __next->link.prev = (thread);                                             \
            (thread)->link.prev = __prev;                                             \
            if (__prev == NULL) {                                                     \
                (queue)->head = (thread);                                             \
            } else {                                                                  \
                __prev->link.next = (thread);                                         \
            }                                                                         \
        }                                                                             \
    }

#define RemoveItem(queue, thread, link)    \
    {                                      \
        OSThread *__next, *__prev;         \
                                           \
        __next = (thread)->link.next;      \
        __prev = (thread)->link.prev;      \
        if (__next == NULL) {              \
            (queue)->tail = __prev;        \
        } else {                           \
            __next->link.prev = __prev;    \
        }                                  \
        if (__prev == NULL) {              \
            (queue)->head = __next;        \
        } else {                           \
            __prev->link.next = __next;    \
        }                                  \
    }

#define RemoveHead(queue, thread, link)    \
    {                                      \
        OSThread *__next;                  \
                                           \
        (thread) = (queue)->head;          \
        __next = (thread)->link.next;      \
        if (__next == NULL) {              \
            (queue)->tail = NULL;          \
        } else {                           \
            __next->link.prev = NULL;      \
        }                                  \
        (queue)->head = __next;            \
    }

static inline void OSInitMutexQueue(OSMutexQueue *queue)
{
    queue->head = queue->tail = NULL;
}

static void DefaultSwitchThreadCallback(OSThread *from, OSThread *to)
{
#pragma unused(from, to)
}

void __OSThreadInit(void)
{
    OSThread *thread = &DefaultThread;
    int prio;

    thread->state = OS_THREAD_STATE_RUNNING;
    thread->attr = OS_THREAD_ATTR_DETACH;
    thread->priority = thread->base = 16;
    thread->suspend = 0;
    thread->val = (void *)-1;
    thread->mutex = NULL;
    OSInitThreadQueue(&thread->queueJoin);
    OSInitMutexQueue(&thread->queueMutex);

    __OSFPUContext = &thread->context;

    OSClearContext(&thread->context);
    OSSetCurrentContext(&thread->context);
    thread->stackBase = _stack_addr;
    thread->stackEnd = (u32 *)_stack_end;
    *thread->stackEnd = OS_THREAD_STACK_MAGIC;

    SwitchThreadCallback(__OSCurrentThread, thread);
    __OSCurrentThread = thread;

    {
        u32 *p;
        u32 *sp = (u32 *)OSGetStackPointer();

        for (p = __OSCurrentThread->stackEnd + 1; p < sp; p++) {
            *p = 0;
        }
    }

    RunQueueBits = 0;
    RunQueueHint = FALSE;
    for (prio = OS_PRIORITY_MIN; prio <= OS_PRIORITY_MAX; ++prio) {
        OSInitThreadQueue(&RunQueue[prio]);
    }

    OSInitThreadQueue(&__OSActiveThreadQueue);
    AddTail(&__OSActiveThreadQueue, thread, linkActive);
    OSClearContext(&IdleContext);
    Reschedule = 0;
}

void OSInitThreadQueue(OSThreadQueue *queue)
{
    queue->head = queue->tail = NULL;
}

OSThread *OSGetCurrentThread(void)
{
    return __OSCurrentThread;
}

BOOL OSIsThreadSuspended(OSThread *thread)
{
    return thread->suspend > 0 ? TRUE : FALSE;
}

BOOL OSIsThreadTerminated(OSThread *thread)
{
    return thread->state == OS_THREAD_STATE_MORIBUND || thread->state == 0 ? TRUE : FALSE;
}

static inline BOOL __OSIsThreadActive(OSThread *thread)
{
    OSThread *active;

    if (thread->state == 0) {
        return FALSE;
    }

    for (active = __OSActiveThreadQueue.head; active; active = active->linkActive.next) {
        if (thread == active) {
            return TRUE;
        }
    }

    return FALSE;
}

s32 OSDisableScheduler(void)
{
    BOOL enabled;
    s32 count;

    enabled = OSDisableInterrupts();
    count = Reschedule++;
    OSRestoreInterrupts(enabled);
    return count;
}

s32 OSEnableScheduler(void)
{
    BOOL enabled;
    s32 count;

    enabled = OSDisableInterrupts();
    count = Reschedule--;
    OSRestoreInterrupts(enabled);
    return count;
}

static inline void SetRun(OSThread *thread)
{
    thread->queue = &RunQueue[thread->priority];
    AddTail(thread->queue, thread, link);
    RunQueueBits |= 1u << (OS_PRIORITY_MAX - thread->priority);
    RunQueueHint = TRUE;
}

static void UnsetRun(OSThread *thread)
{
    OSThreadQueue *queue;

    // Compiled out; their text is the Dolphin SDK's. They keep UnsetRun from being inlined.
    ASSERT(thread->state == OS_THREAD_STATE_READY);
    ASSERT(OS_PRIORITY_MIN <= thread->priority && thread->priority <= OS_PRIORITY_MAX);
    ASSERT(thread->queue == &RunQueue[thread->priority]);

    queue = thread->queue;
    RemoveItem(queue, thread, link);
    if (queue->head == NULL) {
        RunQueueBits &= ~(1u << (OS_PRIORITY_MAX - thread->priority));
    }
    thread->queue = NULL;
}

s32 __OSGetEffectivePriority(OSThread *thread)
{
    s32 priority;
    OSMutex *mutex;
    OSThread *blocked;

    priority = thread->base;
    for (mutex = thread->queueMutex.head; mutex; mutex = mutex->link.next) {
        blocked = mutex->queue.head;
        if (blocked && blocked->priority < priority) {
            priority = blocked->priority;
        }
    }
    return priority;
}

static OSThread *SetEffectivePriority(OSThread *thread, s32 priority)
{
    switch (thread->state) {
    case OS_THREAD_STATE_READY:
        UnsetRun(thread);
        thread->priority = priority;
        SetRun(thread);
        break;
    case OS_THREAD_STATE_WAITING:
        RemoveItem(thread->queue, thread, link);
        thread->priority = priority;
        AddPrio(thread->queue, thread, link);
        if (thread->mutex) {
            return thread->mutex->thread;
        }
        break;
    case OS_THREAD_STATE_RUNNING:
        RunQueueHint = TRUE;
        thread->priority = priority;
        break;
    }
    return NULL;
}

static inline void UpdatePriority(OSThread *thread)
{
    s32 priority;

    do {
        if (0 < thread->suspend) {
            break;
        }
        priority = __OSGetEffectivePriority(thread);
        if (thread->priority == priority) {
            break;
        }
        thread = SetEffectivePriority(thread, priority);
    } while (thread);
}

void __OSPromoteThread(OSThread *thread, s32 priority)
{
    do {
        if (0 < thread->suspend || thread->priority <= priority) {
            break;
        }
        thread = SetEffectivePriority(thread, priority);
    } while (thread);
}

static OSThread *SelectThread(BOOL yield)
{
    OSContext *currentContext;
    OSThread *currentThread;
    OSThread *nextThread;
    s32 priority;
    OSThreadQueue *queue;

    if (0 < Reschedule) {
        return NULL;
    }

    currentContext = OSGetCurrentContext();
    currentThread = OSGetCurrentThread();
    if (currentContext != &currentThread->context) {
        return NULL;
    }

    if (currentThread) {
        if (currentThread->state == OS_THREAD_STATE_RUNNING) {
            if (!yield) {
                priority = __cntlzw(RunQueueBits);
                if (currentThread->priority <= priority) {
                    return NULL;
                }
            }
            currentThread->state = OS_THREAD_STATE_READY;
            SetRun(currentThread);
        }

        if (!(currentThread->context.state & OS_CONTEXT_STATE_EXC) && OSSaveContext(&currentThread->context)) {
            return NULL;
        }
    }

    if (RunQueueBits == 0) {
        SwitchThreadCallback(__OSCurrentThread, NULL);
        __OSCurrentThread = NULL;
        OSSetCurrentContext(&IdleContext);
        do {
            OSEnableInterrupts();
            while (RunQueueBits == 0) {
            }
            OSDisableInterrupts();
        } while (RunQueueBits == 0);
        OSClearContext(&IdleContext);
    }

    RunQueueHint = FALSE;

    priority = __cntlzw(RunQueueBits);
    queue = &RunQueue[priority];
    RemoveHead(queue, nextThread, link);
    if (queue->head == NULL) {
        RunQueueBits &= ~(1u << (OS_PRIORITY_MAX - priority));
    }
    nextThread->queue = NULL;
    nextThread->state = OS_THREAD_STATE_RUNNING;
    SwitchThreadCallback(__OSCurrentThread, nextThread);
    __OSCurrentThread = nextThread;
    OSSetCurrentContext(&nextThread->context);
    OSLoadContext(&nextThread->context);
    return nextThread;
}

void __OSReschedule(void)
{
    if (!RunQueueHint) {
        return;
    }
    SelectThread(FALSE);
}

void OSYieldThread(void)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();
    SelectThread(TRUE);
    OSRestoreInterrupts(enabled);
}

BOOL OSCreateThread(OSThread *thread, void *(*func)(void *), void *param, void *stack, u32 stackSize, s32 priority,
                    u16 attr)
{
    BOOL enabled;
    u32 sp;
    int i;

    if (priority < OS_PRIORITY_MIN || OS_PRIORITY_MAX < priority) {
        return FALSE;
    }

    thread->state = OS_THREAD_STATE_READY;
    thread->attr = (u16)(attr & OS_THREAD_ATTR_DETACH);
    thread->base = priority;
    thread->priority = priority;
    thread->suspend = 1;
    thread->val = (void *)-1;
    thread->mutex = NULL;
    OSInitThreadQueue(&thread->queueJoin);
    OSInitMutexQueue(&thread->queueMutex);

    sp = (u32)stack;
    sp &= ~7;
    sp -= 8;
    ((u32 *)sp)[0] = 0;
    ((u32 *)sp)[1] = 0;
    OSInitContext(&thread->context, (u32)func, sp);
    thread->context.lr = (u32)OSExitThread;
    thread->context.gpr[3] = (u32)param;
    thread->stackBase = stack;
    thread->stackEnd = (u32 *)((u32)stack - stackSize);
    *thread->stackEnd = OS_THREAD_STACK_MAGIC;
    thread->error = 0;
    thread->specific[0] = NULL;
    thread->specific[1] = NULL;

    enabled = OSDisableInterrupts();

    if (__OSErrorTable[OS_ERROR_FPE] != NULL) {
        thread->context.srr1 |= MSR_FE0 | MSR_FE1;
        thread->context.state |= OS_CONTEXT_STATE_FPSAVED;
        thread->context.fpscr = (__OSFpscrEnableBits & FPSCR_ENABLE) | FPSCR_NI;
        for (i = 0; i < 32; ++i) {
            *(u64 *)&thread->context.fpr[i] = (u64)0xffffffffffffffffLL;
            *(u64 *)&thread->context.psf[i] = (u64)0xffffffffffffffffLL;
        }
    }

    AddTail(&__OSActiveThreadQueue, thread, linkActive);
    OSRestoreInterrupts(enabled);
    return TRUE;
}

void OSExitThread(void *val)
{
    OSThread *currentThread;
    BOOL enabled;

    enabled = OSDisableInterrupts();
    currentThread = __OSCurrentThread;
    OSClearContext(&currentThread->context);

    if (currentThread->attr & OS_THREAD_ATTR_DETACH) {
        RemoveItem(&__OSActiveThreadQueue, currentThread, linkActive);
        currentThread->state = 0;
    } else {
        currentThread->state = OS_THREAD_STATE_MORIBUND;
        currentThread->val = val;
    }

    __OSUnlockAllMutex(currentThread);
    OSWakeupThread(&currentThread->queueJoin);
    RunQueueHint = TRUE;
    __OSReschedule();
    OSRestoreInterrupts(enabled);
}

void OSCancelThread(OSThread *thread)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();

    switch (thread->state) {
    case OS_THREAD_STATE_READY:
        if (!(0 < thread->suspend)) {
            UnsetRun(thread);
        }
        break;
    case OS_THREAD_STATE_RUNNING:
        RunQueueHint = TRUE;
        break;
    case OS_THREAD_STATE_WAITING:
        RemoveItem(thread->queue, thread, link);
        thread->queue = NULL;
        if (!(0 < thread->suspend) && thread->mutex) {
            UpdatePriority(thread->mutex->thread);
        }
        break;
    default:
        OSRestoreInterrupts(enabled);
        return;
    }

    OSClearContext(&thread->context);
    if (thread->attr & OS_THREAD_ATTR_DETACH) {
        RemoveItem(&__OSActiveThreadQueue, thread, linkActive);
        thread->state = 0;
    } else {
        thread->state = OS_THREAD_STATE_MORIBUND;
    }

    __OSUnlockAllMutex(thread);
    OSWakeupThread(&thread->queueJoin);
    __OSReschedule();
    OSRestoreInterrupts(enabled);
}

BOOL OSJoinThread(OSThread *thread, void **val)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();

    if (!(thread->attr & OS_THREAD_ATTR_DETACH) && thread->state != OS_THREAD_STATE_MORIBUND &&
        thread->queueJoin.head == NULL) {
        OSSleepThread(&thread->queueJoin);
        if (!__OSIsThreadActive(thread)) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }
    }

    if (thread->state == OS_THREAD_STATE_MORIBUND) {
        if (val) {
            *val = thread->val;
        }
        RemoveItem(&__OSActiveThreadQueue, thread, linkActive);
        thread->state = 0;
        OSRestoreInterrupts(enabled);
        return TRUE;
    }

    OSRestoreInterrupts(enabled);
    return FALSE;
}

s32 OSResumeThread(OSThread *thread)
{
    BOOL enabled;
    s32 suspendCount;

    enabled = OSDisableInterrupts();
    suspendCount = thread->suspend--;
    if (thread->suspend < 0) {
        thread->suspend = 0;
    } else if (thread->suspend == 0) {
        switch (thread->state) {
        case OS_THREAD_STATE_READY:
            thread->priority = __OSGetEffectivePriority(thread);
            SetRun(thread);
            break;
        case OS_THREAD_STATE_WAITING:
            RemoveItem(thread->queue, thread, link);
            thread->priority = __OSGetEffectivePriority(thread);
            AddPrio(thread->queue, thread, link);
            if (thread->mutex) {
                UpdatePriority(thread->mutex->thread);
            }
            break;
        }
        __OSReschedule();
    }
    OSRestoreInterrupts(enabled);
    return suspendCount;
}

s32 OSSuspendThread(OSThread *thread)
{
    BOOL enabled;
    s32 suspendCount;

    enabled = OSDisableInterrupts();
    suspendCount = thread->suspend++;
    if (suspendCount == 0) {
        switch (thread->state) {
        case OS_THREAD_STATE_RUNNING:
            RunQueueHint = TRUE;
            thread->state = OS_THREAD_STATE_READY;
            break;
        case OS_THREAD_STATE_READY:
            UnsetRun(thread);
            break;
        case OS_THREAD_STATE_WAITING:
            RemoveItem(thread->queue, thread, link);
            thread->priority = 32;
            AddTail(thread->queue, thread, link);
            if (thread->mutex) {
                UpdatePriority(thread->mutex->thread);
            }
            break;
        }
        __OSReschedule();
    }
    OSRestoreInterrupts(enabled);
    return suspendCount;
}

void OSSleepThread(OSThreadQueue *queue)
{
    BOOL enabled;
    OSThread *currentThread;

    enabled = OSDisableInterrupts();
    currentThread = OSGetCurrentThread();
    currentThread->state = OS_THREAD_STATE_WAITING;
    currentThread->queue = queue;
    AddPrio(queue, currentThread, link);
    RunQueueHint = TRUE;
    __OSReschedule();
    OSRestoreInterrupts(enabled);
}

void OSWakeupThread(OSThreadQueue *queue)
{
    BOOL enabled;
    OSThread *thread;

    enabled = OSDisableInterrupts();
    while (queue->head) {
        RemoveHead(queue, thread, link);
        thread->state = OS_THREAD_STATE_READY;
        if (!(0 < thread->suspend)) {
            SetRun(thread);
        }
    }
    __OSReschedule();
    OSRestoreInterrupts(enabled);
}

BOOL OSSetThreadPriority(OSThread *thread, s32 priority)
{
    BOOL enabled;

    if (priority < OS_PRIORITY_MIN || OS_PRIORITY_MAX < priority) {
        return FALSE;
    }

    enabled = OSDisableInterrupts();
    if (thread->base != priority) {
        thread->base = priority;
        UpdatePriority(thread);
        __OSReschedule();
    }
    OSRestoreInterrupts(enabled);
    return TRUE;
}

s32 OSGetThreadPriority(OSThread *thread)
{
    return thread->base;
}

OSThread *OSSetIdleFunction(OSIdleFunction idleFunction, void *param, void *stack, u32 stackSize)
{
    if (idleFunction) {
        if (IdleThread.state == 0) {
            OSCreateThread(&IdleThread, (void *(*)(void *))idleFunction, param, stack, stackSize, OS_PRIORITY_IDLE,
                           OS_THREAD_ATTR_DETACH);
            OSResumeThread(&IdleThread);
            return &IdleThread;
        }
    } else if (IdleThread.state != 0) {
        OSCancelThread(&IdleThread);
    }
    return NULL;
}

static void SleepAlarmHandler(OSAlarm *alarm, OSContext *context)
{
#pragma unused(context)
    OSResumeThread((OSThread *)OSGetAlarmUserData(alarm));
}

void OSSleepTicks(OSTime ticks)
{
    BOOL enabled;
    OSThread *currentThread;
    OSAlarm alarm;

    enabled = OSDisableInterrupts();
    currentThread = OSGetCurrentThread();
    if (currentThread == NULL) {
        OSRestoreInterrupts(enabled);
        return;
    }

    OSCreateAlarm(&alarm);
    OSSetAlarmTag(&alarm, (u32)currentThread);
    OSSetAlarmUserData(&alarm, currentThread);
    OSSetAlarm(&alarm, ticks, SleepAlarmHandler);
    OSSuspendThread(currentThread);
    OSCancelAlarm(&alarm);
    OSRestoreInterrupts(enabled);
}
