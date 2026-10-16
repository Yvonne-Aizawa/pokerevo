#ifndef POKEREVO_NWC24TIME_H
#define POKEREVO_NWC24TIME_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

s32 NWC24iSetRtcCounter(u32 counter, u32 flag);
s32 NWC24iSynchronizeRtcCounter(u32 flag);

#ifdef __cplusplus
}
#endif

#endif
