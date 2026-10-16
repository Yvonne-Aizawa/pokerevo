#include "types.h"
#include "SDK/IPC/ipcclt.h"
#include "SDK/NWC24/NWC24Ipc.h"

static s32 sNwc24AsyncRequestPending;

static s32 CallbackAsyncIpc(s32 result, void *arg);

s32 NWC24iOpenResourceManager(const char *name, const char *path, s32 *outHandle, s32 flags)
{
#pragma unused(name)
    s32 result;

    if (outHandle == NULL) {
        return -3;
    }

    result = IOS_Open(path, flags);
    *outHandle = result;

    if (result < 0) {
        if (result == -6) {
            return -29;
        }
        if (result == -8) {
            return -26;
        }
        return -42;
    }
    return 0;
}

s32 NWC24iCloseResourceManager(const char *name, s32 handle)
{
#pragma unused(name)
    s32 result = IOS_Close(handle);
    void *ret;

    if (result < 0) {
        ret = (void *)-42;
    } else {
        ret = NULL;
    }
    return (s32)ret;
}

s32 NWC24iIoctlResourceManager(const char *name, s32 handle, s32 cmd, void *input, u32 inputLength,
                               void *output, u32 outputLength)
{
#pragma unused(name)
    s32 result = IOS_Ioctl(handle, cmd, input, inputLength, output, outputLength);
    void *ret;

    if (result < 0) {
        ret = (void *)-42;
    } else {
        ret = NULL;
    }
    return (s32)ret;
}

s32 NWC24iIoctlResourceManagerAsync(const char *name, s32 handle, s32 cmd, void *input,
                                    u32 inputLength, void *output, u32 outputLength,
                                    void *callbackArg)
{
#pragma unused(name)
    s32 result = IOS_IoctlAsync(handle, cmd, input, inputLength, output, outputLength,
                                CallbackAsyncIpc, callbackArg);

    if (result < 0) {
        return -42;
    }
    sNwc24AsyncRequestPending = 1;
    return 0;
}

s32 NWC24iIsAsyncRequestPending(void)
{
    return sNwc24AsyncRequestPending;
}

static s32 CallbackAsyncIpc(s32 result, void *arg)
{
    if (arg != NULL) {
        *(s32 *)arg = result;
    }
    sNwc24AsyncRequestPending = 0;
    return 0;
}
