#ifndef POKEREVO_NCD_NCDSYSTEM_H
#define POKEREVO_NCD_NCDSYSTEM_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

s32 NCDSetNwc24Permission(BOOL permission);
s32 NCDGetCurrentIfConfig(void *ifConfig);
s32 NCDGetCurrentIpConfig(void *ipConfig);
s32 NCDGetLinkStatus(void);
s32 NCDiGetWirelessMacAddress(void *macAddress);
s32 NCDLockWirelessDriver(void);
s32 NCDUnlockWirelessDriver(s32 count);
s32 NCDiGetEnabledConfigList(u32 *wired, u32 *wireless, u32 *wifi);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NCD_NCDSYSTEM_H
