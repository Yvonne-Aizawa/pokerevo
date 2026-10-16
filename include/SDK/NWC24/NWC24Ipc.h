#ifndef POKEREVO_NWC24_NWC24IPC_H
#define POKEREVO_NWC24_NWC24IPC_H

#include "types.h"
#include "SDK/IPC/ipcclt.h"

#ifdef __cplusplus
extern "C" {
#endif

s32 NWC24iOpenResourceManager(const char *name, const char *path, s32 *outHandle, s32 flags);
s32 NWC24iCloseResourceManager(const char *name, s32 handle);
s32 NWC24iIoctlResourceManager(const char *name, s32 handle, s32 cmd, void *input, u32 inputLength,
                               void *output, u32 outputLength);
s32 NWC24iIoctlResourceManagerAsync(const char *name, s32 handle, s32 cmd, void *input,
                                    u32 inputLength, void *output, u32 outputLength,
                                    void *callbackArg);
s32 NWC24iIsAsyncRequestPending(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NWC24_NWC24IPC_H