#ifndef POKEREVO_OSTHREAD_H
#define POKEREVO_OSTHREAD_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSThread OSThread;

typedef struct OSThreadQueue {
    OSThread *head;
    OSThread *tail;
} OSThreadQueue;

void OSInitThreadQueue(OSThreadQueue *queue);
void OSSleepThread(OSThreadQueue *queue);
void OSWakeupThread(OSThreadQueue *queue);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSTHREAD_H
