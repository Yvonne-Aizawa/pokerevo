#ifndef POKEREVO_IPCCLT_H
#define POKEREVO_IPCCLT_H

#ifdef __cplusplus
extern "C" {
#endif

// Owned by ipcclt.c, which is still asm.

typedef struct IOSIoctlVector
{
    void *base;
    u32 length;
} IOSIoctlVector;

typedef s32 (*IOSAsyncCallback)(s32 result, void *arg);

s32 IOS_Open(const char *path, u32 flags);
s32 IOS_Close(s32 fd);
s32 IOS_Ioctl(s32 fd, s32 cmd, void *input, u32 inputLength, void *output, u32 outputLength);
s32 IOS_IoctlAsync(s32 fd, s32 cmd, void *input, u32 inputLength, void *output, u32 outputLength,
                   IOSAsyncCallback callback, void *callbackArg);
s32 IOS_Ioctlv(s32 fd, s32 cmd, s32 readCount, s32 writeCount, IOSIoctlVector *vectors);
s32 IOS_IoctlvReboot(s32 fd, s32 cmd, s32 readCount, s32 writeCount, IOSIoctlVector *vectors);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_IPCCLT_H
