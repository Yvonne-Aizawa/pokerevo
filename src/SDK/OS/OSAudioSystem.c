#include "types.h"
#include "string.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSArena.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSTime.h"

// Hollywood registers
#define HW_PLLAIEXT  (*(volatile u32 *)0xCD800180)
#define HW_PLLAI     (*(volatile u32 *)0xCD8001CC)
#define HW_PLLAIDIV  (*(volatile u32 *)0xCD8001D0)

#define __DSPRegs ((volatile u16 *)0xCC005000)

#define DSP_WORK_BUFFER ((void *)0x81000000)

static u8 DSPInitCode[128] = {
    0x02, 0x9F, 0x00, 0x10, 0x02, 0x9F, 0x00, 0x33, 0x02, 0x9F, 0x00, 0x34, 0x02, 0x9F, 0x00, 0x35,
    0x02, 0x9F, 0x00, 0x36, 0x02, 0x9F, 0x00, 0x37, 0x02, 0x9F, 0x00, 0x38, 0x02, 0x9F, 0x00, 0x39,
    0x12, 0x06, 0x12, 0x03, 0x12, 0x04, 0x12, 0x05, 0x00, 0x80, 0x80, 0x00, 0x00, 0x88, 0xFF, 0xFF,
    0x00, 0x84, 0x10, 0x00, 0x00, 0x64, 0x00, 0x1D, 0x02, 0x18, 0x00, 0x00, 0x81, 0x00, 0x1C, 0x1E,
    0x00, 0x44, 0x1B, 0x1E, 0x00, 0x84, 0x08, 0x00, 0x00, 0x64, 0x00, 0x27, 0x19, 0x1E, 0x00, 0x00,
    0x00, 0xDE, 0xFF, 0xFC, 0x02, 0xA0, 0x80, 0x00, 0x02, 0x9C, 0x00, 0x28, 0x16, 0xFC, 0x00, 0x54,
    0x16, 0xFD, 0x43, 0x48, 0x00, 0x21, 0x02, 0xFF, 0x02, 0xFF, 0x02, 0xFF, 0x02, 0xFF, 0x02, 0xFF,
    0x02, 0xFF, 0x02, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

#define WAIT_MICROSECONDS(usec)                                                                                 \
    do {                                                                                                         \
        OSTick start = OSGetTick();                                                                              \
        while (OSTicksToMicroseconds(OSGetTick() - start) < (usec)) {                                            \
        }                                                                                                        \
    } while (0)

void __AIClockInit(BOOL is48k)
{
    u32 reg;

    reg = HW_PLLAIEXT;
    reg &= ~0x100;
    reg |= is48k << 8;
    reg &= ~0x80;
    HW_PLLAIEXT = reg;
    HW_PLLAIDIV &= ~0xC0000000;
    WAIT_MICROSECONDS(100);

    if (!is48k) {
        reg = HW_PLLAI;
        reg = (reg & ~0x3FFC0) | (0x3F << 6);
        reg = (reg & ~0x3F) | 0;
        reg = (reg & ~0x7FC0000) | (0x119 << 18);
        HW_PLLAI = reg;
    } else {
        reg = HW_PLLAI;
        reg = (reg & ~0x3FFC0) | (0x3FF << 6);
        reg = (reg & ~0x3F) | 0xE;
        reg = (reg & ~0x7FC0000) | (0x12C << 18);
        HW_PLLAI = reg;
    }
    WAIT_MICROSECONDS(100);

    HW_PLLAIDIV &= ~0x10000000;
    WAIT_MICROSECONDS(1000);
    HW_PLLAIDIV = (HW_PLLAIDIV & ~0x40000000) | 0x40000000;
    WAIT_MICROSECONDS(1000);
    HW_PLLAIDIV = (HW_PLLAIDIV & ~0x80000000) | 0x80000000;
    WAIT_MICROSECONDS(1000);
}

void __OSInitAudioSystem(void)
{
    u16 reg16;
    OSTick start;

    if (!__OSInIPL) {
        __AIClockInit(TRUE);
    }

    memcpy((u8 *)OSGetArenaHi() - 128, DSP_WORK_BUFFER, 128);
    memcpy(DSP_WORK_BUFFER, DSPInitCode, 128);
    DCFlushRange(DSP_WORK_BUFFER, 128);

    __DSPRegs[9] = 0x43;
    __DSPRegs[5] = 0x8AC;
    __DSPRegs[5] |= 1;
    while (__DSPRegs[5] & 1) {
    }
    __DSPRegs[0] = 0;
    while (((__DSPRegs[2] << 16) | __DSPRegs[3]) & 0x80000000) {
    }

    *(volatile u32 *)&__DSPRegs[16] = 0x1000000;
    *(volatile u32 *)&__DSPRegs[18] = 0;
    *(volatile u32 *)&__DSPRegs[20] = 0x20;
    reg16 = __DSPRegs[5];
    while (!(reg16 & 0x20)) {
        reg16 = __DSPRegs[5];
    }
    __DSPRegs[5] = reg16;

    start = OSGetTick();
    while ((s32)(OSGetTick() - start) < 2194) {
    }

    *(volatile u32 *)&__DSPRegs[16] = 0x1000000;
    *(volatile u32 *)&__DSPRegs[18] = 0;
    *(volatile u32 *)&__DSPRegs[20] = 0x20;
    reg16 = __DSPRegs[5];
    while (!(reg16 & 0x20)) {
        reg16 = __DSPRegs[5];
    }
    __DSPRegs[5] = reg16;

    __DSPRegs[5] &= ~0x800;
    while (__DSPRegs[5] & 0x400) {
    }
    __DSPRegs[5] &= ~4;

    reg16 = __DSPRegs[2];
    while (!(reg16 & 0x8000)) {
        reg16 = __DSPRegs[2];
    }
    (void)__DSPRegs[3];

    __DSPRegs[5] |= 4;
    __DSPRegs[5] = 0x8AC;
    __DSPRegs[5] |= 1;
    while (__DSPRegs[5] & 1) {
    }

    memcpy(DSP_WORK_BUFFER, (u8 *)OSGetArenaHi() - 128, 128);
}

void __OSStopAudioSystem(void)
{
    u16 reg16;
    OSTick start;

    __DSPRegs[5] = 0x804;
    reg16 = __DSPRegs[27];
    __DSPRegs[27] = reg16 & ~0x8000;
    reg16 = __DSPRegs[5];
    while (reg16 & 0x400) {
        reg16 = __DSPRegs[5];
    }
    reg16 = __DSPRegs[5];
    while (reg16 & 0x200) {
        reg16 = __DSPRegs[5];
    }
    __DSPRegs[5] = 0x8AC;
    __DSPRegs[0] = 0;
    while (((__DSPRegs[2] << 16) | __DSPRegs[3]) & 0x80000000) {
    }

    start = OSGetTick();
    while ((s32)(OSGetTick() - start) < 44) {
    }

    reg16 = __DSPRegs[5];
    __DSPRegs[5] = reg16 | 1;
    reg16 = __DSPRegs[5];
    while (reg16 & 1) {
        reg16 = __DSPRegs[5];
    }
}
