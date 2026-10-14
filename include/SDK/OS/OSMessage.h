#ifndef POKEREVO_OSMESSAGE_H
#define POKEREVO_OSMESSAGE_H

#include "SDK/OS/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void *OSMessage;

typedef struct OSMessageQueue
{
    OSThreadQueue queueSend;    // 0x0
    OSThreadQueue queueReceive; // 0x8
    OSMessage *msgArray;        // 0x10
    s32 msgCount;               // 0x14
    s32 firstIndex;             // 0x18
    s32 usedCount;              // 0x1C
} OSMessageQueue;

#define OS_MESSAGE_NOBLOCK 0
#define OS_MESSAGE_BLOCK   1

void OSInitMessageQueue(OSMessageQueue *mq, OSMessage *msgArray, s32 msgCount);
BOOL OSSendMessage(OSMessageQueue *mq, OSMessage msg, s32 flags);
BOOL OSReceiveMessage(OSMessageQueue *mq, OSMessage *msg, s32 flags);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSMESSAGE_H
