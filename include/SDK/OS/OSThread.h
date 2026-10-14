#ifndef POKEREVO_OSTHREAD_H
#define POKEREVO_OSTHREAD_H

#include "SDK/OS/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSThread OSThread;
typedef struct OSMutex OSMutex;

typedef struct OSThreadQueue {
    OSThread *head;
    OSThread *tail;
} OSThreadQueue;

typedef struct OSThreadLink {
    OSThread *next;
    OSThread *prev;
} OSThreadLink;

typedef struct OSMutexQueue {
    OSMutex *head;
    OSMutex *tail;
} OSMutexQueue;

typedef struct OSMutexLink {
    OSMutex *next;
    OSMutex *prev;
} OSMutexLink;

struct OSThread
{
    OSContext context;         // 0x0
    u16 state;                 // 0x2C8
    u16 attr;                  // 0x2CA
    s32 suspend;               // 0x2CC
    s32 priority;              // 0x2D0
    s32 base;                  // 0x2D4
    void *val;                 // 0x2D8
    OSThreadQueue *queue;      // 0x2DC
    OSThreadLink link;         // 0x2E0
    OSThreadQueue queueJoin;   // 0x2E8
    OSMutex *mutex;            // 0x2F0
    OSMutexQueue queueMutex;   // 0x2F4
    OSThreadLink linkActive;   // 0x2FC
    u8 *stackBase;             // 0x304
    u32 *stackEnd;             // 0x308
    s32 error;                 // 0x30C
    void *specific[2];         // 0x310
};

void OSInitThreadQueue(OSThreadQueue *queue);
OSThread *OSGetCurrentThread(void);
void OSSleepThread(OSThreadQueue *queue);
void OSWakeupThread(OSThreadQueue *queue);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSTHREAD_H
