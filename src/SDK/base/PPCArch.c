#include "types.h"
#include "SDK/OS/OSError.h"
#include "SDK/base/PPCArch.h"

asm u32 PPCMfmsr(void)
{
    nofralloc
    mfmsr r3
    blr
}

asm void PPCMtmsr(register u32 newMSR)
{
    nofralloc
    mtmsr newMSR
    blr
}

asm u32 PPCMfhid0(void)
{
    nofralloc
    mfspr r3, 1008
    blr
}

asm void PPCMthid0(register u32 newHID0)
{
    nofralloc
    mtspr 1008, newHID0
    blr
}

asm u32 PPCMfl2cr(void)
{
    nofralloc
    mfspr r3, 1017
    blr
}

asm void PPCMtl2cr(register u32 newL2cr)
{
    nofralloc
    mtspr 1017, newL2cr
    blr
}

asm void PPCMtdec(register u32 newDec)
{
    nofralloc
    mtspr 22, newDec
    blr
}

asm void PPCSync(void)
{
    nofralloc
    sc
    blr
}

asm void PPCHalt(void)
{
    nofralloc
    sync
_loop:
    nop
    li r3, 0
    nop
    b _loop
}

asm void PPCMtmmcr0(register u32 newMmcr0)
{
    nofralloc
    mtspr 952, newMmcr0
    blr
}

asm void PPCMtmmcr1(register u32 newMmcr1)
{
    nofralloc
    mtspr 956, newMmcr1
    blr
}

asm void PPCMtpmc1(register u32 newPmc1)
{
    nofralloc
    mtspr 953, newPmc1
    blr
}

asm void PPCMtpmc2(register u32 newPmc2)
{
    nofralloc
    mtspr 954, newPmc2
    blr
}

asm void PPCMtpmc3(register u32 newPmc3)
{
    nofralloc
    mtspr 957, newPmc3
    blr
}

asm void PPCMtpmc4(register u32 newPmc4)
{
    nofralloc
    mtspr 958, newPmc4
    blr
}

asm u32 PPCMffpscr(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    stfd f31, 0x18(r1)
    mffs f31
    stfd f31, 0x8(r1)
    lfd f31, 0x18(r1)
    lwz r3, 0xc(r1)
    addi r1, r1, 0x20
    blr
}

asm void PPCMtfpscr(register u32 newFPSCR)
{
    nofralloc
    stwu r1, -0x20(r1)
    stfd f31, 0x18(r1)
    li r4, 0
    stw newFPSCR, 0xc(r1)
    stw r4, 0x8(r1)
    lfd f31, 0x8(r1)
    mtfsf 0xff, f31
    lfd f31, 0x18(r1)
    addi r1, r1, 0x20
    blr
}

asm u32 PPCMfhid2(void)
{
    nofralloc
    mfspr r3, 920
    blr
}

asm void PPCMthid2(register u32 newhid2)
{
    nofralloc
    mtspr 920, newhid2
    blr
}

asm u32 PPCMfwpar(void)
{
    nofralloc
    sync
    mfspr r3, 921
    blr
}

asm void PPCMtwpar(register u32 newwpar)
{
    nofralloc
    mtspr 921, newwpar
    blr
}

void PPCDisableSpeculation(void)
{
    PPCMthid0(PPCMfhid0() | HID0_SPD);
}

asm void PPCSetFpNonIEEEMode(void)
{
    nofralloc
    mtfsb1 29
    blr
}

void PPCMthid4(register u32 newHID4)
{
    if (newHID4 & HID4_H4A) {
        asm { mtspr 1011, newHID4 }
    } else {
        OSReport("H4A should not be cleared because of Broadway errata.\n");
        newHID4 |= HID4_H4A;
        asm { mtspr 1011, newHID4 }
    }
}
