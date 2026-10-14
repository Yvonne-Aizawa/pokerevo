#ifndef POKEREVO_PPCARCH_H
#define POKEREVO_PPCARCH_H

#ifdef __cplusplus
extern "C" {
#endif

#define HID0_SPD 0x00000200
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

#define HID4_H4A 0x80000000

u32 PPCMfmsr(void);
void PPCMtmsr(u32 newMSR);
u32 PPCMfhid0(void);
void PPCMthid0(u32 newHID0);
u32 PPCMfl2cr(void);
void PPCMtl2cr(u32 newL2cr);
void PPCMtdec(u32 newDec);
void PPCSync(void);
void PPCHalt(void);
void PPCMtmmcr0(u32 newMmcr0);
void PPCMtmmcr1(u32 newMmcr1);
void PPCMtpmc1(u32 newPmc1);
void PPCMtpmc2(u32 newPmc2);
void PPCMtpmc3(u32 newPmc3);
void PPCMtpmc4(u32 newPmc4);
u32 PPCMffpscr(void);
void PPCMtfpscr(u32 newFPSCR);
u32 PPCMfhid2(void);
void PPCMthid2(u32 newhid2);
u32 PPCMfwpar(void);
void PPCMtwpar(u32 newwpar);
void PPCDisableSpeculation(void);
void PPCSetFpNonIEEEMode(void);
void PPCMthid4(u32 newHID4);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_PPCARCH_H
