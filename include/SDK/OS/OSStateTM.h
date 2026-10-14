#ifndef POKEREVO_OS_OSSTATETM_H
#define POKEREVO_OS_OSSTATETM_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*OSResetCallback)(void);
typedef void (*OSPowerCallback)(void);

OSResetCallback OSSetResetCallback(OSResetCallback callback);
OSPowerCallback OSSetPowerCallback(OSPowerCallback callback);
BOOL OSGetResetButtonState(void);
BOOL __OSInitSTM(void);
void __OSShutdownToSBY(void);
void __OSHotReset(void);
s32 __OSSetVIForceDimming(BOOL isEnabled, u32 yShift, u32 xShift);
s32 __OSSetIdleLEDMode(u32 mode);
s32 __OSUnRegisterStateEvent(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OS_OSSTATETM_H
