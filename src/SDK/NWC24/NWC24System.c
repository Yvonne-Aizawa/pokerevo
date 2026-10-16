#include "types.h"
#include "SDK/OS/OSReset.h"
#include "SDK/OS/OSStateTM.h"
#include "SDK/NWC24/NWC24Ipc.h"
#include "SDK/NWC24/NWC24Manage.h"
#include "SDK/NWC24/NWC24System.h"

u32 SCCheckStatus(void);
s32 SCGetIdleMode(void *buf);

static BOOL NWC24Shutdown(BOOL final, u32 event);

static OSShutdownFunctionInfo ShutdownFunctionInfo;
static u8 RequestBuf[0x20] __attribute__((aligned(32)));
static u8 ReplyBuf[0x20] __attribute__((aligned(32)));

static s32 ShutdownFd = -1;
static s32 RequestResult;
static BOOL RequestPending;
static s32 RetryCount;

s32 NWC24iPrepareShutdown(void)
{
    s32 ret = 0;
    u8 idle[8];

    NWC24iRegister();
    ShutdownFunctionInfo.func = NWC24Shutdown;
    ShutdownFunctionInfo.priority = 110;
    OSRegisterShutdownFunction(&ShutdownFunctionInfo);

    if (ShutdownFd < 0) {
        ret = NWC24iOpenResourceManager("NWC24iPrepareShutdown", "/dev/net/kd/request", &ShutdownFd, 1);
    }
    RetryCount = 5;

    for (;;) {
        u32 status = SCCheckStatus();
        if (status == 2) {
            break;
        }
        if (status != 1) {
            SCGetIdleMode(idle);
            __OSSetIdleLEDMode(idle[1]);
            break;
        }
    }
    return ret;
}

static BOOL NWC24Shutdown(BOOL final, u32 event)
{
    if (final) {
        return TRUE;
    }
    if (RequestPending) {
        if (NWC24iIsAsyncRequestPending()) {
            return FALSE;
        }
        if (RequestResult >= 0) {
            return TRUE;
        }
        if (RetryCount > 0) {
            RequestPending = FALSE;
            RetryCount--;
        } else {
            return TRUE;
        }
    } else {
        *(u32 *)RequestBuf = event;
        if (NWC24iIoctlResourceManagerAsync("NWC24iRequestShutdown", ShutdownFd, 0x28, RequestBuf, 0x20,
                                            ReplyBuf, 0x20, &RequestResult) >= 0) {
            RequestPending = TRUE;
        }
    }
    return FALSE;
}
