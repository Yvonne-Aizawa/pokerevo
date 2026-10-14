#ifndef POKEREVO_OSMUTEX_H
#define POKEREVO_OSMUTEX_H

#include "SDK/OS/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

struct OSMutex
{
    OSThreadQueue queue; // 0x0
    OSThread *thread;    // 0x8
    s32 count;           // 0xC
    OSMutexLink link;    // 0x10
};

typedef struct OSCond
{
    OSThreadQueue queue; // 0x0
} OSCond;

void OSInitMutex(OSMutex *mutex);
void OSLockMutex(OSMutex *mutex);
void OSUnlockMutex(OSMutex *mutex);
void __OSUnlockAllMutex(OSThread *thread);
BOOL OSTryLockMutex(OSMutex *mutex);
void OSInitCond(OSCond *cond);
void OSSignalCond(OSCond *cond);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSMUTEX_H
