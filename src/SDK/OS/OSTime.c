#include "types.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSTime.h"

#define OS_TIME_ADJUST (*(OSTime *)0x800030D8)

#define USEC_MAX     1000
#define MSEC_MAX     1000
#define MONTH_MAX    12
#define WEEK_DAY_MAX 7
#define YEAR_DAY_MAX 365

#define SECS_IN_MIN  60
#define SECS_IN_HOUR (SECS_IN_MIN * 60)
#define SECS_IN_DAY  (SECS_IN_HOUR * 24)
#define SECS_IN_YEAR (SECS_IN_DAY * 365)

// Days from 0000-01-01 to 2000-01-01
#define BIAS (2000 * 365 + (2000 + 3) / 4 - (2000 - 1) / 100 + (2000 - 1) / 400)

static int YearDays[MONTH_MAX] = {0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334};
static int LeapYearDays[MONTH_MAX] = {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335};

asm OSTime OSGetTime(void)
{
    nofralloc
loop:
    mftbu r3
    mftb r4
    mftbu r5
    cmpw r3, r5
    bne loop
    blr
}

asm OSTick OSGetTick(void)
{
    nofralloc
    mftb r3
    blr
}

OSTime __OSGetSystemTime(void)
{
    BOOL enabled;
    OSTime *timeAdjustAddr = &OS_TIME_ADJUST;
    OSTime result;

    enabled = OSDisableInterrupts();
    result = *timeAdjustAddr + OSGetTime();
    OSRestoreInterrupts(enabled);
    return result;
}

OSTime __OSTimeToSystemTime(OSTime time)
{
    BOOL enabled;
    OSTime *timeAdjustAddr = &OS_TIME_ADJUST;
    OSTime result;

    enabled = OSDisableInterrupts();
    result = *timeAdjustAddr + time;
    OSRestoreInterrupts(enabled);
    return result;
}

static inline BOOL IsLeapYear(int year)
{
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
}

static inline int GetLeapDays(int year)
{
    if (year < 1) {
        return 0;
    }
    return (year + 3) / 4 - (year - 1) / 100 + (year - 1) / 400;
}

static void GetDates(int days, OSCalendarTime *td)
{
    int year;
    int n;
    int month;
    int *p_days;

    td->wday = (days + 6) % WEEK_DAY_MAX;

    for (year = days / YEAR_DAY_MAX; days < (n = year * YEAR_DAY_MAX + GetLeapDays(year)); year--) {
    }
    days -= n;
    td->year = year;
    td->yday = days;

    p_days = IsLeapYear(year) ? LeapYearDays : YearDays;
    for (month = MONTH_MAX; days < p_days[--month];) {
    }
    td->mon = month;
    td->mday = days - p_days[month] + 1;
}

void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime *td)
{
    int days;
    int secs;
    OSTime d;

    d = ticks % OSSecondsToTicks(1);
    if (d < 0) {
        d += OSSecondsToTicks(1);
    }

    td->usec = (int)(OSTicksToMicroseconds(d) % USEC_MAX);
    td->msec = (int)(OSTicksToMilliseconds(d) % MSEC_MAX);
    ticks -= d;

    days = (int)(OSTicksToSeconds(ticks) / SECS_IN_DAY + BIAS);
    secs = (int)(OSTicksToSeconds(ticks) % SECS_IN_DAY);
    if (secs < 0) {
        days -= 1;
        secs += SECS_IN_DAY;
    }

    GetDates(days, td);
    td->hour = secs / 60 / 60;
    td->min = (secs / 60) % 60;
    td->sec = secs % 60;
}

OSTime OSCalendarTimeToTicks(const OSCalendarTime *td)
{
    OSTime secs;
    int ov_mon;
    int mon;
    int year;

    ov_mon = td->mon / MONTH_MAX;
    mon = td->mon - ov_mon * MONTH_MAX;
    if (mon < 0) {
        mon += MONTH_MAX;
        ov_mon--;
    }
    year = td->year + ov_mon;

    secs = (OSTime)SECS_IN_YEAR * year +
           (OSTime)SECS_IN_DAY * (GetLeapDays(year) + (IsLeapYear(year) ? LeapYearDays : YearDays)[mon] + td->mday - 1) +
           (OSTime)SECS_IN_HOUR * td->hour + (OSTime)SECS_IN_MIN * td->min + td->sec -
           (OSTime)SECS_IN_DAY * BIAS;

    return OSSecondsToTicks(secs) + OSMillisecondsToTicks((OSTime)td->msec) +
           OSMicrosecondsToTicks((OSTime)td->usec);
}
