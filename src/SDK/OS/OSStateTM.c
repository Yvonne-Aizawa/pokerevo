#include "types.h"
#include "SDK/OS/OSStateTM.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/IPC/ipcclt.h"

#define VI_DISP_CONFIG (*(volatile u16 *)0xCC002002)  // display configuration register
#define __PIRegs       ((vu32 *)0xCC003000)

static u32 StmEhInBuf[8] ATTRIBUTE_ALIGN(32);
static u32 StmEhOutBuf[8] ATTRIBUTE_ALIGN(32);
static u32 StmImInBuf[8] ATTRIBUTE_ALIGN(32);
static u32 StmImOutBuf[8] ATTRIBUTE_ALIGN(32);
static u32 StmVdInBuf[8] ATTRIBUTE_ALIGN(32);
static u32 StmVdOutBuf[8] ATTRIBUTE_ALIGN(32);

static OSResetCallback ResetCallback;
static OSPowerCallback PowerCallback;
static BOOL StmVdInUse;
static BOOL StmEhRegistered;
static s32 StmEhDesc;
static s32 StmImDesc;
static BOOL StmReady;
static BOOL ResetDown;

static s32 __OSStateEventHandler(s32 result, void *arg);
static s32 __OSVIDimReplyHandler(s32 result, void *arg);
static void __OSDefaultResetCallback(void);
static void __OSDefaultPowerCallback(void);

static void __OSRegisterStateEvent(void)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if (IOS_IoctlAsync(StmEhDesc, 0x1000, StmEhInBuf, sizeof(StmEhInBuf), StmEhOutBuf, sizeof(StmEhOutBuf),
                       __OSStateEventHandler, NULL) == 0) {
        StmEhRegistered = TRUE;
    } else {
        StmEhRegistered = FALSE;
    }
    OSRestoreInterrupts(enabled);
}

OSResetCallback OSSetResetCallback(OSResetCallback callback)
{
    BOOL enabled;
    OSResetCallback prev;

    enabled = OSDisableInterrupts();
    prev = ResetCallback;
    ResetCallback = callback;
    if (!StmEhRegistered) {
        __OSRegisterStateEvent();
    }
    OSRestoreInterrupts(enabled);
    return prev;
}

OSPowerCallback OSSetPowerCallback(OSPowerCallback callback)
{
    BOOL enabled;
    OSPowerCallback prev;

    enabled = OSDisableInterrupts();
    prev = PowerCallback;
    PowerCallback = callback;
    if (!StmEhRegistered) {
        __OSRegisterStateEvent();
    }
    OSRestoreInterrupts(enabled);
    return prev;
}

BOOL OSGetResetButtonState(void)
{
    BOOL enabled;
    BOOL state;

    enabled = OSDisableInterrupts();
    state = ResetDown;
    ResetDown = FALSE;
    OSRestoreInterrupts(enabled);
    if (!StmEhRegistered) {
        __OSRegisterStateEvent();
    }
    return state;
}

BOOL __OSInitSTM(void)
{
    PowerCallback = __OSDefaultPowerCallback;
    ResetCallback = __OSDefaultResetCallback;
    ResetDown = FALSE;

    if (StmReady) {
        return TRUE;
    }

    StmVdInUse = FALSE;
    StmImDesc = IOS_Open("/dev/stm/immediate", 0);
    if (StmImDesc < 0) {
        StmReady = FALSE;
        return FALSE;
    }
    StmEhDesc = IOS_Open("/dev/stm/eventhook", 0);
    if (StmEhDesc < 0) {
        StmReady = FALSE;
        return FALSE;
    }

    __OSRegisterStateEvent();
    StmReady = TRUE;
    return TRUE;
}

// The panics below are OSPanic(__FILE__, __LINE__, ...) in the SDK; its file name and line numbers are
// written out, since this file's own don't match.

void __OSShutdownToSBY(void)
{
    VI_DISP_CONFIG = 0;
    if (!StmReady) {
        OSPanic("OSStateTM.c", 276, "Error: The firmware doesn't support shutdown feature.\n");
    }
    StmImInBuf[0] = 0;
    IOS_Ioctl(StmImDesc, 0x2003, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));
    OSDisableInterrupts();
    ICFlashInvalidate();
    while (TRUE) {
    }
}

void __OSHotReset(void)
{
    VI_DISP_CONFIG = 0;
    if (!StmReady) {
        OSPanic("OSStateTM.c", 340, "Error: The firmware doesn't support reboot feature.\n");
    }
    IOS_Ioctl(StmImDesc, 0x2001, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));
    OSDisableInterrupts();
    ICFlashInvalidate();
    while (TRUE) {
    }
}

s32 __OSSetVIForceDimming(BOOL isEnabled, u32 yShift, u32 xShift)
{
    BOOL enabled;
    s32 result;

    if (!StmReady) {
        return -10;  // IPC error codes, as the SDK returns them
    }

    enabled = OSDisableInterrupts();
    if (StmVdInUse) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }
    StmVdInUse = TRUE;
    OSRestoreInterrupts(enabled);

    StmVdInBuf[0] = (yShift << 3) | xShift | (isEnabled << 7);
    StmVdInBuf[1] = 0;
    StmVdInBuf[2] = 0;
    StmVdInBuf[3] = 0;
    StmVdInBuf[4] = 0;
    StmVdInBuf[5] = 0xFFFFFFFF;
    StmVdInBuf[6] = 0xFFFF0000;
    StmVdInBuf[7] = 0;

    result = IOS_IoctlAsync(StmImDesc, 0x5001, StmVdInBuf, sizeof(StmVdInBuf), StmVdOutBuf, sizeof(StmVdOutBuf),
                            __OSVIDimReplyHandler, NULL);
    if (result != 0) {
        return result;
    }
    return TRUE;
}

s32 __OSSetIdleLEDMode(u32 mode)
{
    if (!StmReady) {
        return -6;
    }
    StmImInBuf[0] = mode;
    return IOS_Ioctl(StmImDesc, 0x6002, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));
}

s32 __OSUnRegisterStateEvent(void)
{
    s32 result;

    if (!StmEhRegistered) {
        return 0;
    }
    if (!StmReady) {
        return -6;
    }
    result = IOS_Ioctl(StmImDesc, 0x3002, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));
    if (result == 0) {
        StmEhRegistered = FALSE;
    }
    return result;
}

static s32 __OSVIDimReplyHandler(s32 result, void *arg)
{
#pragma unused(result, arg)
    StmVdInUse = FALSE;
    return 0;
}

static void __OSDefaultResetCallback(void)
{
}

static void __OSDefaultPowerCallback(void)
{
}

static BOOL IsResetButtonDown(void)
{
    return (__PIRegs[0] & 0x10000) == 0 ? TRUE : FALSE;
}

static s32 __OSStateEventHandler(s32 result, void *arg)
{
#pragma unused(arg)
    BOOL enabled;
    OSResetCallback resetCallback;
    OSPowerCallback powerCallback;

    if (result != 0) {
        OSPanic("OSStateTM.c", 748, "Error on STM state event handler\n");
    }
    StmEhRegistered = FALSE;

    if (StmEhOutBuf[0] == 0x20000) {
        if (IsResetButtonDown()) {
            enabled = OSDisableInterrupts();
            resetCallback = ResetCallback;
            ResetDown = TRUE;
            ResetCallback = __OSDefaultResetCallback;
            resetCallback();
            OSRestoreInterrupts(enabled);
        }
        __OSRegisterStateEvent();
    }

    if (StmEhOutBuf[0] == 0x800) {
        enabled = OSDisableInterrupts();
        powerCallback = PowerCallback;
        PowerCallback = __OSDefaultPowerCallback;
        powerCallback();
        OSRestoreInterrupts(enabled);
    }

    return 0;
}
