#ifndef POKEREVO_OSRTC_H
#define POKEREVO_OSRTC_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSSram
{
    u16 checkSum;       // 0x0
    u16 checkSumInv;    // 0x2
    u32 ead0;           // 0x4
    u32 ead1;           // 0x8
    u32 counterBias;    // 0xC
    s8 displayOffsetH;  // 0x10
    u8 ntd;             // 0x11
    u8 language;        // 0x12
    u8 flags;           // 0x13
} OSSram;

typedef struct OSSramEx
{
    u8 flashID[2][12];       // 0x0
    u32 wirelessKeyboardID;  // 0x18
    u16 wirelessPadID[4];    // 0x1C
    u8 dvdErrorCode;         // 0x24
    u8 _padding0;            // 0x25
    u8 flashIDCheckSum[2];   // 0x26
    u16 gbs;                 // 0x28
    u8 _padding1[2];         // 0x2A
} OSSramEx;

void __OSInitSram(void);
OSSram *__OSLockSram(void);
OSSramEx *__OSLockSramEx(void);
BOOL __OSUnlockSram(BOOL commit);
BOOL __OSUnlockSramEx(BOOL commit);
BOOL __OSSyncSram(void);
BOOL __OSReadROM(void *buffer, s32 length, s32 offset);
u16 OSGetWirelessID(s32 chan);
void OSSetWirelessID(s32 chan, u16 id);
u16 OSGetGbsMode(void);
void OSSetGbsMode(u16 gbs);
BOOL __OSGetRTCFlags(u32 *flags);
BOOL __OSClearRTCFlags(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSRTC_H
