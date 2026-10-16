#ifndef POKEREVO_NET_NET_H
#define POKEREVO_NET_NET_H

#include "types.h"
#include "SDK/NCD/ncdsystem.h"

#ifdef __cplusplus
extern "C" {
#endif

s32 NETGetConnectionType(void);
s32 NETiGetConnectionTypeFromConfigList(u32 a, u32 b, u32 c);
s32 NETGetStartupErrorCodeEx(s32 err, s32 type);
s32 GetStartupErrorCode(s32 err, s32 type);
const char *NETGetRexPPCVersionPrintable(void);
s32 NETGetWirelessMacAddress(u8 *addr);

#ifdef __cplusplus
}
#endif

#endif // POKEREVO_NET_NET_H
