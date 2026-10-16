#include "types.h"

typedef struct {
    u8 data[0x9C];
} NWC24File;

typedef struct {
    u32 magic;
    u32 version;
    u8 pad[0x78];
} NWC24MBCHeader;

extern u8 *lbl_80640250;
extern u32 lbl_80640268[2];

extern void *Mail_memset(void *dst, int val, u32 n);
extern int Mail_sprintf(char *dst, const char *fmt, ...);
extern s32 STD_strnlen(const char *s, s32 max);
extern const char *NWC24GetMBoxDir(void);
extern s32 NWC24FOpen(NWC24File *file, const char *path, u32 mode);
extern s32 NWC24FSeek(NWC24File *file, s32 offset, s32 whence);
extern s32 NWC24FRead(void *buf, u32 size, NWC24File *file);
extern s32 NWC24FClose(NWC24File *file);

static char sendCtl[] = "/wc24send.ctl";
static char recvCtl[] = "/wc24recv.ctl";
static char recvMbx[] = "/wc24recv.mbx";
static char sendMbx[] = "/wc24send.mbx";

s32 GetCachedMBCHeader(s32 type, NWC24MBCHeader **hdr);

static inline s32 MakeCtlPath(s32 type, char *path)
{
    const char *dir = NWC24GetMBoxDir();
    if (STD_strnlen(dir, 0x40) + 14 > 0x100) {
        return -11;
    }
    switch (type) {
    case 0:
        Mail_sprintf(path, "%s%s", dir, sendCtl);
        break;
    case 1:
        Mail_sprintf(path, "%s%s", dir, recvCtl);
        break;
    default:
        return -3;
    }
    return 0;
}

s32 NWC24iOpenMBox(void)
{
    NWC24File file1;
    NWC24File file2;
    NWC24MBCHeader *hdr;
    char *path;
    const char *dir;
    s32 err;

    path = (char *)lbl_80640250 + 0x800;
    Mail_memset(lbl_80640250 + 0x1100, 0, 0x80);
    err = GetCachedMBCHeader(0, &hdr);
    if (err != 0) {
        return err;
    }
    Mail_memset(lbl_80640250 + 0x1180, 0, 0x80);
    err = GetCachedMBCHeader(1, &hdr);
    if (err != 0) {
        return err;
    }

    dir = NWC24GetMBoxDir();
    if (STD_strnlen(dir, 0x40) + 14 > 0x100) {
        err = -11;
    } else {
        Mail_sprintf(path, "%s%s", dir, recvMbx);
        err = 0;
    }
    if (err != 0) {
        return err;
    }
    err = NWC24FOpen(&file1, path, 2);
    if (err == 0) {
        err = NWC24FClose(&file1);
    }
    if (err != 0) {
        return err;
    }

    dir = NWC24GetMBoxDir();
    if (STD_strnlen(dir, 0x40) + 14 > 0x100) {
        err = -11;
    } else {
        Mail_sprintf(path, "%s%s", dir, sendMbx);
        err = 0;
    }
    if (err != 0) {
        return err;
    }
    err = NWC24FOpen(&file2, path, 2);
    if (err == 0) {
        err = NWC24FClose(&file2);
    }
    if (err != 0) {
        return err;
    }

    lbl_80640268[0] = 0;
    lbl_80640268[1] = 0;
    return 0;
}

s32 GetCachedMBCHeader(s32 type, NWC24MBCHeader **hdr)
{
    NWC24File file;
    NWC24MBCHeader *h;
    s32 err = 0;
    char *path;
    s32 r;

    if (type == 0) {
        *hdr = (NWC24MBCHeader *)(lbl_80640250 + 0x1100);
    } else if (type == 1) {
        *hdr = (NWC24MBCHeader *)(lbl_80640250 + 0x1180);
    } else {
        *hdr = NULL;
        return -3;
    }

    if ((*hdr)->magic != 0x57635466) {
        path = (char *)lbl_80640250 + 0x800;
        r = MakeCtlPath(type, path);
        if (r != 0) {
            return r;
        }
        r = NWC24FOpen(&file, path, 2);
        if (r != 0) {
            return r;
        }
        h = *hdr;
        NWC24FSeek(&file, 0, 0);
        r = NWC24FRead(h, 0x80, &file);
        if (r != 0) {
            err = r;
        } else {
            err = 0;
            if (h->magic != 0x57635466) {
                err = -14;
            }
        }
        r = NWC24FClose(&file);
        if (err == 0 && r != 0) {
            err = r;
        }
    }
    if ((*hdr)->version != 4) {
        err = -27;
    }
    return err;
}
