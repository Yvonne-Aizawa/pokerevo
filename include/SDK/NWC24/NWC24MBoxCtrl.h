#ifndef POKEREVO_NWC24_NWC24MBOXCTRL_H
#define POKEREVO_NWC24_NWC24MBOXCTRL_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NWC24MBCHeader {
    u32 magic;
    u32 version;
    u8 pad[0x78];
} NWC24MBCHeader;

s32 NWC24iOpenMBox(void);
s32 GetCachedMBCHeader(s32 type, NWC24MBCHeader **hdr);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NWC24_NWC24MBOXCTRL_H
