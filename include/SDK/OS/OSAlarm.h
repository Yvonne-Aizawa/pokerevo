#ifndef POKEREVO_OSALARM_H
#define POKEREVO_OSALARM_H

#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSTime.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSAlarm OSAlarm;
typedef void (*OSAlarmHandler)(OSAlarm *alarm, OSContext *context);

struct OSAlarm
{
    OSAlarmHandler handler; // 0x0
    u32 tag;                // 0x4
    OSTime fire;            // 0x8
    OSAlarm *prev;          // 0x10
    OSAlarm *next;          // 0x14
    OSTime period;          // 0x18
    OSTime start;           // 0x20
    void *userData;         // 0x28
};

void __OSInitAlarm(void);
void OSCreateAlarm(OSAlarm *alarm);
void OSSetAlarm(OSAlarm *alarm, OSTime tick, OSAlarmHandler handler);
void OSSetPeriodicAlarm(OSAlarm *alarm, OSTime start, OSTime period, OSAlarmHandler handler);
void OSCancelAlarm(OSAlarm *alarm);
void OSSetAlarmTag(OSAlarm *alarm, u32 tag);
void OSSetAlarmUserData(OSAlarm *alarm, void *userData);
void *OSGetAlarmUserData(const OSAlarm *alarm);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSALARM_H
