#include "types.h"

typedef struct {
    u8 data[0xA0];
} NWC24File;

typedef struct {
    u32 magic;
    u32 version;
    u8 pad[0x358];
} NWC24FLHeader;

extern u8 *lbl_80640250;
extern const char *lbl_8063DF70;

extern void *Mail_memset(void *dst, int val, u32 n);
extern s32 NWC24FOpen(NWC24File *file, const char *path, u32 mode);
extern s32 NWC24FSeek(NWC24File *file, s32 offset, s32 whence);
extern s32 NWC24FRead(void *buf, u32 size, NWC24File *file);
extern s32 NWC24FClose(NWC24File *file);

s32 GetCachedFLHeader(NWC24FLHeader **hdr);

s32 NWC24iOpenFriendList(void)
{
    NWC24FLHeader *hdr = (NWC24FLHeader *)(lbl_80640250 + 0x2400);
    Mail_memset(hdr, 0, 0x360);
    return GetCachedFLHeader(&hdr);
}

s32 GetCachedFLHeader(NWC24FLHeader **hdr)
{
    NWC24File file;
    NWC24FLHeader *h;
    s32 err;
    s32 r;

    h = (NWC24FLHeader *)(lbl_80640250 + 0x2400);
    *hdr = h;
    if (h->magic != 0x5763466C) {
        err = NWC24FOpen(&file, lbl_8063DF70, 2);
        if (err != 0) {
            return err;
        }
        NWC24FSeek(&file, 0, 0);
        r = NWC24FRead(*hdr, 0x360, &file);
        err = NWC24FClose(&file);
        if (r != 0) {
            err = r;
        }
        if (err != 0) {
            return err;
        }
        h = *hdr;
        if (h->magic != 0x5763466C) {
            return -14;
        }
        if (h->version != 2) {
            return -27;
        }
    }
    return 0;
}
