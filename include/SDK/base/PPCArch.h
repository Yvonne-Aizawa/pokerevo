#ifndef POKEREVO_PPCARCH_H
#define POKEREVO_PPCARCH_H

#ifdef __cplusplus
extern "C" {
#endif

// Owned by PPCArch.c, which is still asm.

#define HID0_ICE 0x00008000
#define HID0_DCE 0x00004000

#define HID2_DCHERR 0x00800000
#define HID2_DNCERR 0x00400000
#define HID2_DCMERR 0x00200000
#define HID2_DQOERR 0x00100000

#define L2CR_L2E  0x80000000
#define L2CR_L2I  0x00200000
#define L2CR_L2IP 0x00000001

#define MSR_IR 0x00000020
#define MSR_DR 0x00000010

#define SRR1_DMA_BIT 0x00200000

u32 PPCMfmsr(void);
void PPCMtmsr(u32 newMSR);
u32 PPCMfhid0(void);
u32 PPCMfl2cr(void);
void PPCMtl2cr(u32 newL2cr);
void PPCMtdec(u32 newDec);
void PPCHalt(void);
u32 PPCMfhid2(void);
void PPCMthid2(u32 newhid2);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_PPCARCH_H
