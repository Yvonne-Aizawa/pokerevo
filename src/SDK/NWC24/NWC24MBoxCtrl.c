#include "types.h"
#include "SDK/NWC24/NWC24Manage.h"
#include "SDK/NWC24/NWC24FileAPI.h"
#include "SDK/NWC24/NWC24StdAPI.h"
#include "SDK/NWC24/NWC24Config.h"
#include "SDK/NWC24/NWC24MBoxCtrl.h"

extern u32 lbl_80640268[2];

static char sendCtl[] = "/wc24send.ctl";
static char recvCtl[] = "/wc24recv.ctl";
static char recvMbx[] = "/wc24recv.mbx";
static char sendMbx[] = "/wc24send.mbx";

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

    path = (char *)NWC24WorkArea + 0x800;
    Mail_memset(NWC24WorkArea + 0x1100, 0, 0x80);
    err = GetCachedMBCHeader(0, &hdr);
    if (err != 0) {
        return err;
    }
    Mail_memset(NWC24WorkArea + 0x1180, 0, 0x80);
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
        *hdr = (NWC24MBCHeader *)(NWC24WorkArea + 0x1100);
    } else if (type == 1) {
        *hdr = (NWC24MBCHeader *)(NWC24WorkArea + 0x1180);
    } else {
        *hdr = NULL;
        return -3;
    }

    if ((*hdr)->magic != 0x57635466) {
        path = (char *)NWC24WorkArea + 0x800;
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
