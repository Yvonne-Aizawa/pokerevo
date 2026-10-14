#ifndef POKEREVO_AI_AI_H
#define POKEREVO_AI_AI_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*AIDCallback)(void);

AIDCallback AIRegisterDMACallback(AIDCallback callback);
void AIInitDMA(u32 startAddr, u32 length);
void AIStartDMA(void);
u32 AIGetDMABytesLeft(void);
void AIInit(u8 *stack);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_AI_AI_H
