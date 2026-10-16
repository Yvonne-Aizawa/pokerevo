#ifndef POKEREVO_NWC24_NWC24FRIENDLIST_H
#define POKEREVO_NWC24_NWC24FRIENDLIST_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NWC24FLHeader {
    u32 magic;
    u32 version;
    u8 pad[0x358];
} NWC24FLHeader;

s32 NWC24iOpenFriendList(void);
s32 GetCachedFLHeader(NWC24FLHeader **hdr);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NWC24_NWC24FRIENDLIST_H
