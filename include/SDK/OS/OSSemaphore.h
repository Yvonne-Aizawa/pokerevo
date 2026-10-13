#ifndef POKEREVO_OSSEMAPHORE_H
#define POKEREVO_OSSEMAPHORE_H

#include "SDK/OS/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSSemaphore
{
    volatile s32 count;  // 0x0
    OSThreadQueue queue; // 0x4
    u8 unkC[0x4];        // 0xC
} OSSemaphore;

void OSInitSemaphore(OSSemaphore *sem, s32 count);
s32 OSWaitSemaphore(OSSemaphore *sem);
s32 OSTryWaitSemaphore(OSSemaphore *sem);
s32 OSSignalSemaphore(OSSemaphore *sem);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSSEMAPHORE_H
