#include "types.h"

typedef struct NWC24File {
    u8 data[0xA0];
} NWC24File;

typedef struct NWC24SecretFLHeader {
    u32 magic;
    u32 version;
} NWC24SecretFLHeader;

extern u8* lbl_80640250;
extern const char* lbl_8063DF78;

extern void Mail_memset(void* dst, int val, u32 n);
extern s32 NWC24FOpen(NWC24File* file, const char* path, u32 mode);
extern s32 NWC24FSeek(NWC24File* file, s32 offset, s32 whence);
extern s32 NWC24FRead(void* buf, u32 size, NWC24File* file);
extern s32 NWC24FClose(NWC24File* file);

s32 GetCachedSecretFLHeader(NWC24SecretFLHeader** hdr);

s32 NWC24iOpenSecretFriendList(void) {
    NWC24SecretFLHeader* hdr = (NWC24SecretFLHeader*)(lbl_80640250 + 0x2800);
    Mail_memset(hdr, 0, 0x800);
    return GetCachedSecretFLHeader(&hdr);
}

s32 GetCachedSecretFLHeader(NWC24SecretFLHeader** hdr) {
    NWC24File file;
    s32 err;
    s32 rd;

    *hdr = (NWC24SecretFLHeader*)(lbl_80640250 + 0x2800);
    if ((*hdr)->magic != 0x57634673) {
        err = NWC24FOpen(&file, lbl_8063DF78, 2);
        if (err != 0) {
            return err;
        }
        NWC24FSeek(&file, 0, 0);
        rd = NWC24FRead(*hdr, 0x800, &file);
        err = NWC24FClose(&file);
        if (rd != 0) {
            err = rd;
        }
        if (err != 0) {
            return err;
        }
        if ((*hdr)->magic != 0x57634673) {
            return -14;
        }
        if ((*hdr)->version != 2) {
            return -27;
        }
    }
    return 0;
}
