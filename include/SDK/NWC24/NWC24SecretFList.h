#ifndef POKEREVO_NWC24_NWC24SECRETFLIST_H
#define POKEREVO_NWC24_NWC24SECRETFLIST_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NWC24SecretFLHeader {
    u32 magic;
    u32 version;
} NWC24SecretFLHeader;

s32 NWC24iOpenSecretFriendList(void);
s32 GetCachedSecretFLHeader(NWC24SecretFLHeader **hdr);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NWC24_NWC24SECRETFLIST_H
