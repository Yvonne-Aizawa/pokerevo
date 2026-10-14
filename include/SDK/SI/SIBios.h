#ifndef POKEREVO_SI_SIBIOS_H
#define POKEREVO_SI_SIBIOS_H

#include "types.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSTime.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*SICallback)(s32 chan, u32 sr, OSContext *context);
typedef void (*SITypeAndStatusCallback)(s32 chan, u32 type);

BOOL SIBusy(void);
BOOL SIIsChanBusy(s32 chan);
void SIInit(void);
u32 SISetXY(u32 x, u32 y);
BOOL __SITransfer(s32 chan, void *output, u32 outputBytes, void *input, u32 inputBytes, SICallback callback);
BOOL SITransfer(s32 chan, void *output, u32 outputBytes, void *input, u32 inputBytes, SICallback callback,
                OSTime delay);
u32 SIGetType(s32 chan);

// SISamplingRate.c
void SISetSamplingRate(u32 msec);
void SIRefreshSamplingRate(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_SI_SIBIOS_H
