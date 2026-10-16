#ifndef POKEREVO_NWC24_NWC24CONFIG_H
#define POKEREVO_NWC24_NWC24CONFIG_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

s32 NWC24GetMyUserId(u64 *userId);
s32 NWC24iConfigOpen(void);
s32 NWC24iConfigReload(void);
s32 NWC24iConfigFlush(void);
const char *NWC24GetMBoxDir(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NWC24_NWC24CONFIG_H
