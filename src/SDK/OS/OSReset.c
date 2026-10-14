#include "types.h"
#include "string.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSStateTM.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSThread.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSArena.h"
#include "SDK/OS/OSReboot.h"
#include "SDK/OS/OSStateFlags.h"
#include "SDK/OS/OSReset.h"

#define OS_SD_EVENT_FATAL          0
#define OS_SD_EVENT_REBOOT         1
#define OS_SD_EVENT_SHUTDOWN       2
#define OS_SD_EVENT_RESTART        4
#define OS_SD_EVENT_RETURN_TO_MENU 5
#define OS_SD_EVENT_LAUNCH_APP     6

#define __OSActiveThreadQueue (*(OSThreadQueue *)0x800000DC)
#define __PIRegs              ((vu32 *)0xCC003000)

typedef struct OSShutdownFunctionQueue
{
    OSShutdownFunctionInfo *head;
    OSShutdownFunctionInfo *tail;
} OSShutdownFunctionQueue;

typedef struct SCIdleModeInfo
{
    u8 wc24;
    u8 slotLight;
} SCIdleModeInfo;

typedef struct NANDBootInfo
{
    u8 unk0[0x8];
    u32 unk8;
    u32 unkC;
    u8 unk10[0x1010];
} NANDBootInfo;

// No headers for these yet: their files are still asm.
void SCInit(void);
u32 SCCheckStatus(void);
BOOL SCGetIdleMode(SCIdleModeInfo *mode);
void __DVDPrepareReset(void);
u32 __DVDGetCoverStatus(void);
BOOL __PADDisableRecalibration(BOOL disable);
void __OSStopAudioSystem(void);
BOOL __OSSyncSram(void);
BOOL __OSGetRTCFlags(u32 *flags);
BOOL __OSClearRTCFlags(void);
void __OSStopPlayRecord(void);
void __OSLaunchMenu(void);
void __OSWriteNandbootInfo(NANDBootInfo *info);
void func_8027430C(NANDBootInfo *info);
void func_8026C328(void);
void __VISetRGBModeImm(void);

static OSShutdownFunctionQueue ShutdownFunctionQueue;
static u32 bootThisDol;

void OSRegisterShutdownFunction(OSShutdownFunctionInfo *info)
{
    OSShutdownFunctionInfo *tmp;
    OSShutdownFunctionInfo *iter;

    for (iter = ShutdownFunctionQueue.head; iter && iter->priority <= info->priority; iter = iter->next) {
    }

    if (iter == NULL) {
        tmp = ShutdownFunctionQueue.tail;
        if (tmp == NULL) {
            ShutdownFunctionQueue.head = info;
        } else {
            tmp->next = info;
        }
        info->prev = tmp;
        info->next = NULL;
        ShutdownFunctionQueue.tail = info;
    } else {
        info->next = iter;
        tmp = iter->prev;
        iter->prev = info;
        info->prev = tmp;
        if (tmp == NULL) {
            ShutdownFunctionQueue.head = info;
        } else {
            tmp->next = info;
        }
    }
}

BOOL __OSCallShutdownFunctions(BOOL final, u32 event)
{
    OSShutdownFunctionInfo *info;
    BOOL err;
    u32 priority;

    priority = 0;
    err = FALSE;
    for (info = ShutdownFunctionQueue.head; info; info = info->next) {
        if (err && priority != info->priority) {
            break;
        }
        err |= !info->func(final, event);
        priority = info->priority;
    }

    err |= !__OSSyncSram();
    return err ? FALSE : TRUE;
}

static inline void KillThreads(void)
{
    OSThread *thread;
    OSThread *next;

    for (thread = __OSActiveThreadQueue.head; thread; thread = next) {
        next = thread->linkActive.next;
        switch (thread->state) {
        case OS_THREAD_STATE_READY:
        case OS_THREAD_STATE_WAITING:
            OSCancelThread(thread);
            break;
        }
    }
}

void __OSShutdownDevices(u32 event)
{
    BOOL disableRecalibration;
    BOOL padIntr;

    switch (event) {
    case OS_SD_EVENT_FATAL:
    case OS_SD_EVENT_RESTART:
    case OS_SD_EVENT_RETURN_TO_MENU:
    case OS_SD_EVENT_LAUNCH_APP:
        padIntr = FALSE;
        break;
    default:
        padIntr = TRUE;
        break;
    }

    __OSStopAudioSystem();

    if (!padIntr) {
        disableRecalibration = __PADDisableRecalibration(TRUE);
    }

    while (!__OSCallShutdownFunctions(FALSE, event)) {
    }

    while (!__OSSyncSram()) {
    }

    OSDisableInterrupts();
    __OSCallShutdownFunctions(TRUE, event);
    LCDisable();

    if (!padIntr) {
        __PADDisableRecalibration(disableRecalibration);
    }

    KillThreads();
}

static inline void SetDiscState(OSStateFlags *state)
{
    u32 flags;

    if (__DVDGetCoverStatus() != 2) {
        state->dvdBootInfo = 3;
    } else if (state->dvdBootInfo != 1 || (__OSGetRTCFlags(&flags) && flags != 0)) {
        state->dvdBootInfo = 2;
    } else {
        state->dvdBootInfo = 1;
    }
}

void OSRebootSystem(void)
{
    OSStateFlags state;

    __OSStopPlayRecord();
    __OSUnRegisterStateEvent();
    __DVDPrepareReset();
    __OSReadStateFlags(&state);
    SetDiscState(&state);
    state.lastShutdown = 2;
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    OSDisableScheduler();
    __OSShutdownDevices(OS_SD_EVENT_REBOOT);
    __OSHotReset();
}

void OSShutdownSystem(void)
{
    SCIdleModeInfo idleMode;
    OSStateFlags state;
    OSIOSRev rev;

    memset(&idleMode, 0, sizeof(SCIdleModeInfo));
    SCInit();
    while (SCCheckStatus() == 1) {
    }
    SCGetIdleMode(&idleMode);

    __OSStopPlayRecord();
    __OSUnRegisterStateEvent();
    __DVDPrepareReset();
    __OSReadStateFlags(&state);
    SetDiscState(&state);
    if (idleMode.wc24 == 1) {
        state.lastShutdown = 5;
    } else {
        state.lastShutdown = 1;
    }
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);
    __OSGetIOSRev(&rev);

    if (idleMode.wc24 == 1) {
        OSDisableScheduler();
        __OSShutdownDevices(OS_SD_EVENT_RETURN_TO_MENU);
        OSEnableScheduler();
        __OSLaunchMenu();
    } else {
        OSDisableScheduler();
        __OSShutdownDevices(OS_SD_EVENT_SHUTDOWN);
        __OSShutdownToSBY();
    }
}

void __OSRebootForNANDAPP(u32 resetCode)
{
    NANDBootInfo *info;
    OSStateFlags state;

    OSSetArenaLo((void *)0x81280000);
    OSSetArenaHi((void *)0x812F0000);
    info = OSAllocFromMEM1ArenaLo(sizeof(NANDBootInfo), 32);
    memset(info, 0, sizeof(NANDBootInfo));
    func_8027430C(info);
    info->unk8 = 1;
    info->unkC = resetCode | 0x80000000;
    __OSWriteNandbootInfo(info);

    if (__OSReadStateFlags(&state)) {
        state.lastShutdown = 3;
        __OSWriteStateFlags(&state);
    }

    OSDisableScheduler();
    __OSShutdownDevices(OS_SD_EVENT_RESTART);
    OSEnableScheduler();
    func_8026C328();
}

void OSRestart(u32 resetCode)
{
    u8 appType;

    appType = OSGetAppType();
    __OSStopPlayRecord();
    __OSUnRegisterStateEvent();

    if (appType == OS_APP_TYPE_CHANNEL) {
        __OSRebootForNANDAPP(resetCode);
    } else if (appType == OS_APP_TYPE_DVD) {
        OSDisableScheduler();
        __OSShutdownDevices(OS_SD_EVENT_RESTART);
        OSEnableScheduler();
        __OSReboot(resetCode, bootThisDol);
    }

    OSDisableScheduler();
    __OSShutdownDevices(OS_SD_EVENT_REBOOT);
    __OSHotReset();
}

// The panics below are OSPanic(__FILE__, __LINE__, ...) in the SDK; its file name and line numbers are
// written out, since this file's own don't match.

void OSReturnToMenu(void)
{
    OSStateFlags state;

    __OSStopPlayRecord();
    __OSUnRegisterStateEvent();
    __DVDPrepareReset();
    __OSReadStateFlags(&state);
    SetDiscState(&state);
    state.lastShutdown = 3;
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    OSDisableScheduler();
    __OSShutdownDevices(OS_SD_EVENT_RETURN_TO_MENU);
    OSEnableScheduler();
    __OSLaunchMenu();

    OSDisableScheduler();
    __VISetRGBModeImm();
    __OSHotReset();

    OSPanic("OSReset.c", 843, "OSReturnToMenu(): Falied to boot system menu.\n");
}

void __OSReturnToMenuForError(void)
{
    OSStateFlags state;

    __OSReadStateFlags(&state);
    state.dvdBootInfo = 2;
    state.lastShutdown = 3;
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);
    __OSLaunchMenu();

    OSDisableScheduler();
    __VISetRGBModeImm();
    __OSHotReset();

    OSPanic("OSReset.c", 869, "__OSReturnToMenu(): Falied to boot system menu.\n");
}

u32 OSGetResetCode(void)
{
    if (__OSRebootParams.valid) {
        return 0x80000000 | __OSRebootParams.restartCode;
    }
    return __PIRegs[9] >> 3;
}

void OSResetSystem(int reset, u32 resetCode, BOOL forceMenu)
{
    // Obsolete: keeps the SDK signature, and only panics
#pragma unused(reset, resetCode, forceMenu)
    OSPanic("OSReset.c", 1020, "OSResetSystem() is obsoleted. It doesn't work any longer.\n");
}
