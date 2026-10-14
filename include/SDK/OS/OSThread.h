#ifndef POKEREVO_OSTHREAD_H
#define POKEREVO_OSTHREAD_H

#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSTime.h"

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

#define OS_THREAD_STATE_READY    1
#define OS_THREAD_STATE_RUNNING  2
#define OS_THREAD_STATE_WAITING  4
#define OS_THREAD_STATE_MORIBUND 8

#define OS_THREAD_ATTR_DETACH 0x0001

#define OS_PRIORITY_MIN  0
#define OS_PRIORITY_MAX  31
#define OS_PRIORITY_IDLE OS_PRIORITY_MAX

#define OS_THREAD_STACK_MAGIC 0xDEADBABE

typedef void (*OSSwitchThreadCallback)(OSThread *from, OSThread *to);
typedef void (*OSIdleFunction)(void *param);

void __OSThreadInit(void);
void OSInitThreadQueue(OSThreadQueue *queue);
OSThread *OSGetCurrentThread(void);
BOOL OSIsThreadSuspended(OSThread *thread);
BOOL OSIsThreadTerminated(OSThread *thread);
s32 OSDisableScheduler(void);
s32 OSEnableScheduler(void);
s32 __OSGetEffectivePriority(OSThread *thread);
void __OSPromoteThread(OSThread *thread, s32 priority);
void __OSReschedule(void);
void OSYieldThread(void);
BOOL OSCreateThread(OSThread *thread, void *(*func)(void *), void *param, void *stack, u32 stackSize, s32 priority,
                    u16 attr);
void OSExitThread(void *val);
void OSCancelThread(OSThread *thread);
BOOL OSJoinThread(OSThread *thread, void **val);
s32 OSResumeThread(OSThread *thread);
s32 OSSuspendThread(OSThread *thread);
void OSSleepThread(OSThreadQueue *queue);
void OSWakeupThread(OSThreadQueue *queue);
BOOL OSSetThreadPriority(OSThread *thread, s32 priority);
s32 OSGetThreadPriority(OSThread *thread);
OSThread *OSSetIdleFunction(OSIdleFunction idleFunction, void *param, void *stack, u32 stackSize);
void OSSleepTicks(OSTime ticks);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSTHREAD_H
