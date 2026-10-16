// PARKED (not linked): all functions match byte-for-byte, but NWC24iStrippedRequest is a made-up dead global used only to force the "/dev/net/kd/request" literal first in the string pool.
// That is not a true match. TODO(match): find the real source that produces this data order
// (likely a stripped/unreferenced function in the original TU), then remove the stand-in,
// split this TU's data out of the monolithic data/bss/sbss asm files, and link it.
#include "types.h"
#include "string.h"
#include "SDK/NWC24/NWC24Schedule.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSMutex.h"
#include "SDK/OS/OSThread.h"

// Declared here until the NWC24 headers exist.
s32 NWC24iOpenResourceManager(const char *name, const char *path, s32 *fd, u32 flags);
s32 NWC24iCloseResourceManager(const char *name, s32 fd);
s32 NWC24iIoctlResourceManager(const char *name, s32 fd, s32 cmd, void *in, u32 inLen, void *out, u32 outLen);
s32 NWC24IsMsgLibOpened(void);
s32 NWC24IsMsgLibOpenedByTool(void);

static OSMutex sCmdMutex;
static OSMutex sStateMutex;
static u8 sCmdBuf[32] ATTRIBUTE_ALIGN(32);
static u8 sRespBuf[32] ATTRIBUTE_ALIGN(32);

// The linker places these in reverse order of definition.
static s32 sLibSuspendCount;
static s32 sSuspendCount;
static u32 sInitialized;

static s32 ExecNoParamCommand(const char *name, s32 cmd, u32 *out);
s32 ExecSuspendScheduler(void);
s32 ExecTrySuspendScheduler(u32 arg);
s32 ExecResumeScheduler(void);

static void InitCommon(void)
{
    if (!(sInitialized & 1)) {
        BOOL enabled = OSDisableInterrupts();
        if (!(sInitialized & 1)) {
            OSInitMutex(&sCmdMutex);
            OSInitMutex(&sStateMutex);
            memset(sCmdBuf, 0, sizeof(sCmdBuf));
            memset(sRespBuf, 0, sizeof(sRespBuf));
            sInitialized |= 1;
        }
        OSRestoreInterrupts(enabled);
    }
}

static s32 CheckContext(void)
{
    if (!OSGetCurrentThread()) {
        return -1;
    }
    if (NWC24IsMsgLibOpened() || NWC24IsMsgLibOpenedByTool()) {
        return -10;
    }
    return 0;
}

s32 NWC24SuspendScheduler(void)
{
    s32 ret;

    InitCommon();
    OSLockMutex(&sStateMutex);
    ret = ExecSuspendScheduler();
    if (ret >= 0) {
        sSuspendCount++;
        ret = ret - sLibSuspendCount;
    }
    OSUnlockMutex(&sStateMutex);
    return ret;
}

s32 NWC24ResumeScheduler(void)
{
    s32 ret;

    InitCommon();
    OSLockMutex(&sStateMutex);
    if (sLibSuspendCount > 0 && sSuspendCount == 0) {
        ret = 0;
    } else {
        ret = ExecResumeScheduler();
        if (sSuspendCount > 0) {
            sSuspendCount--;
            ret = ret - sLibSuspendCount;
        }
    }
    OSUnlockMutex(&sStateMutex);
    return ret;
}

// A request function that was stripped from the original: its path literal is first in the pool, ahead of
// the function-name literals. Nothing references it, so the linker drops it.
s32 NWC24iStrippedRequest(s32 *fd)
{
    return NWC24iOpenResourceManager(NULL, "/dev/net/kd/request", fd, 0);
}

s32 NWC24iRequestGenerateUserId(u64 *userId, u32 *hashId)
{
    s32 ret;
    s32 fd;

    ret = CheckContext();
    if (ret < 0) {
        return ret;
    }
    InitCommon();
    OSLockMutex(&sCmdMutex);
    ret = NWC24iOpenResourceManager(__FUNCTION__, "/dev/net/kd/request", &fd, 0);
    if (ret >= 0) {
        ret = NWC24iIoctlResourceManager(__FUNCTION__, fd, 15, NULL, 0, sRespBuf, 32);
        if (ret >= 0) {
            ret = *(s32 *)sRespBuf;
            if (ret == 0 || ret == -35 || ret == -36) {
                if (userId != NULL) {
                    *userId = *(u64 *)(sRespBuf + 4);
                }
                if (hashId != NULL) {
                    *hashId = *(u32 *)(sRespBuf + 12);
                }
            }
        }
        {
            s32 r = NWC24iCloseResourceManager(__FUNCTION__, fd);
            if (ret >= 0) {
                ret = r;
            }
        }
    }
    OSUnlockMutex(&sCmdMutex);
    return ret;
}

s32 NWC24iStartupSocket(u32 *out)
{
    return ExecNoParamCommand(NULL, 6, out);
}

s32 NWC24iCleanupSocket(u32 *out)
{
    return ExecNoParamCommand(NULL, 7, out);
}

s32 NWC24iLockSocket(void)
{
    return ExecNoParamCommand(NULL, 8, NULL);
}

s32 NWC24iUnlockSocket(void)
{
    return ExecNoParamCommand(NULL, 9, NULL);
}

s32 NWC24iTrySuspendForOpenLib(void)
{
    s32 ret;

    InitCommon();
    if (!OSTryLockMutex(&sStateMutex)) {
        return -22;
    }
    ret = ExecTrySuspendScheduler(0);
    if (ret >= 0) {
        sLibSuspendCount++;
        ret = 0;
    }
    OSUnlockMutex(&sStateMutex);
    return ret;
}

s32 NWC24iResumeForCloseLib(void)
{
    s32 ret;

    InitCommon();
    OSLockMutex(&sStateMutex);
    ret = ExecResumeScheduler();
    if (ret >= 0) {
        sLibSuspendCount--;
        ret = 0;
    }
    OSUnlockMutex(&sStateMutex);
    return ret;
}

#pragma dont_inline on
s32 ExecSuspendScheduler(void)
{
    return ExecNoParamCommand(NULL, 1, NULL);
}
#pragma dont_inline reset

s32 ExecTrySuspendScheduler(u32 arg)
{
    s32 ret;
    s32 fd;

    ret = CheckContext();
    if (ret < 0) {
        return ret;
    }
    InitCommon();
    if (!OSTryLockMutex(&sCmdMutex)) {
        return -22;
    }
    ret = NWC24iOpenResourceManager(__FUNCTION__, "/dev/net/kd/request", &fd, 0);
    if (ret >= 0) {
        *(u32 *)sCmdBuf = arg;
        ret = NWC24iIoctlResourceManager(__FUNCTION__, fd, 2, sCmdBuf, 32, sRespBuf, 32);
        if (ret >= 0) {
            ret = *(s32 *)sRespBuf;
        }
        {
            s32 r = NWC24iCloseResourceManager(__FUNCTION__, fd);
            if (r < 0) {
                ret = r;
            }
        }
    }
    OSUnlockMutex(&sCmdMutex);
    return ret;
}

#pragma dont_inline on
s32 ExecResumeScheduler(void)
{
    return ExecNoParamCommand(NULL, 3, NULL);
}

#pragma dont_inline reset
static s32 ExecNoParamCommand(const char *name, s32 cmd, u32 *out)
{
    s32 ret;
    s32 fd;

    if (!OSGetCurrentThread()) {
        return -1;
    }
    InitCommon();
    OSLockMutex(&sCmdMutex);
    ret = NWC24iOpenResourceManager(name, "/dev/net/kd/request", &fd, 0);
    if (ret >= 0) {
        ret = NWC24iIoctlResourceManager(name, fd, cmd, NULL, 0, sRespBuf, 32);
        if (ret >= 0) {
            ret = *(s32 *)sRespBuf;
            if (ret == -2 || ret == -33) {
                if (out != NULL) {
                    *out = *(u32 *)(sRespBuf + 4);
                }
            }
        }
        {
            s32 r = NWC24iCloseResourceManager(name, fd);
            if (r < 0) {
                ret = r;
            }
        }
    }
    OSUnlockMutex(&sCmdMutex);
    return ret;
}
