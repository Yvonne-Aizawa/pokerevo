#ifndef POKEREVO_OSTIME_H
#define POKEREVO_OSTIME_H

#ifdef __cplusplus
extern "C" {
#endif

typedef s64 OSTime;
typedef u32 OSTick;

typedef struct OSCalendarTime
{
    int sec;  // 0x0
    int min;  // 0x4
    int hour; // 0x8
    int mday; // 0xC
    int mon;  // 0x10
    int year; // 0x14
    int wday; // 0x18
    int yday; // 0x1C
    int msec; // 0x20
    int usec; // 0x24
} OSCalendarTime;

#define OS_BUS_CLOCK   (*(u32 *)0x800000F8)
#define OS_TIMER_CLOCK (OS_BUS_CLOCK / 4)

#define OSSecondsToTicks(sec)       ((sec) * OS_TIMER_CLOCK)
#define OSMillisecondsToTicks(msec) ((msec) * (OS_TIMER_CLOCK / 1000))
#define OSMicrosecondsToTicks(usec) (((usec) * (OS_TIMER_CLOCK / 125000)) / 8)
#define OSTicksToSeconds(ticks)      ((ticks) / OS_TIMER_CLOCK)
#define OSTicksToMilliseconds(ticks) ((ticks) / (OS_TIMER_CLOCK / 1000))
#define OSTicksToMicroseconds(ticks) (((ticks) * 8) / (OS_TIMER_CLOCK / 125000))

OSTime OSGetTime(void);
OSTick OSGetTick(void);
OSTime __OSGetSystemTime(void);
OSTime __OSTimeToSystemTime(OSTime time);
void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime *td);
OSTime OSCalendarTimeToTicks(const OSCalendarTime *td);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSTIME_H
