#ifndef POKEREVO_EXI_EXIBIOS_H
#define POKEREVO_EXI_EXIBIOS_H

#include "types.h"
#include "SDK/OS/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*EXICallback)(s32 chan, OSContext *context);

#define EXIClearInterrupts(chan, exi, tc, ext)                                                                    \
    (__EXIRegs[(chan) * 5] = (__EXIRegs[(chan) * 5] & 0x7F5) | ((exi) << 1) | ((tc) << 3) | ((ext) << 11))

extern vu32 __EXIRegs[16];

EXICallback EXISetExiCallback(s32 chan, EXICallback exiCallback);
BOOL EXILock(s32 chan, u32 dev, EXICallback unlockedCallback);
BOOL EXIUnlock(s32 chan);
BOOL EXISelect(s32 chan, u32 dev, u32 freq);
BOOL EXIDeselect(s32 chan);
BOOL EXIImm(s32 chan, void *buf, s32 len, u32 type, EXICallback callback);
BOOL EXIImmEx(s32 chan, void *buf, s32 len, u32 mode);
BOOL EXIDma(s32 chan, void *buf, s32 len, u32 type, EXICallback callback);
BOOL EXISync(s32 chan);
BOOL EXIAttach(s32 chan, EXICallback extCallback);
BOOL EXIDetach(s32 chan);
s32 EXIGetID(s32 chan, u32 dev, u32 *id);
void EXIInit(void);

// EXIUart.c
void __OSEnableBarnacle(s32 chan, u32 dev);

// EXICommon.c
BOOL EXIWriteReg(s32 chan, u32 dev, u32 exiCmd, void *reg, s32 size);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_EXI_EXIBIOS_H
