#include "types.h"
#include "SDK/SI/SIBios.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/VI/vi.h"

#define VI_CLOCK_SEL (*(volatile u16 *)0xCC00206C)

#define SI_MAX_SAMPLING_RATE 11

typedef struct XY {
    u16 line;  // 0x0
    u8 count;  // 0x2
} XY;

static XY XYNTSC[12] = {
    {246, 2}, {14, 19}, {30, 9}, {44, 6}, {52, 5}, {65, 4},
    {87, 3}, {87, 3}, {87, 3}, {131, 2}, {131, 2}, {131, 2},
};

static XY XYPAL[12] = {
    {296, 2}, {15, 21}, {29, 11}, {45, 7}, {52, 6}, {63, 5},
    {78, 4}, {104, 3}, {104, 3}, {104, 3}, {104, 3}, {156, 2},
};

static u32 SamplingRate;

void SISetSamplingRate(u32 msec)
{
    XY *xy;
    BOOL enabled;

    if (msec > SI_MAX_SAMPLING_RATE) {
        msec = SI_MAX_SAMPLING_RATE;
    }

    enabled = OSDisableInterrupts();
    SamplingRate = msec;

    switch (VIGetTvFormat()) {
    case VI_NTSC:
    case VI_MPAL:
    case VI_EURGB60:
        xy = XYNTSC;
        break;
    case VI_PAL:
        xy = XYPAL;
        break;
    default:
        OSReport("SISetSamplingRate: unknown TV format. Use default.");
        msec = 0;
        xy = XYNTSC;
        break;
    }

    SISetXY(((VI_CLOCK_SEL & 1) + 1u) * xy[msec].line, xy[msec].count);
    OSRestoreInterrupts(enabled);
}

void SIRefreshSamplingRate(void)
{
    SISetSamplingRate(SamplingRate);
}
