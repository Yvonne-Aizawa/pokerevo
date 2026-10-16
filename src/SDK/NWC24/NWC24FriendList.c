#include "types.h"
#include "SDK/NWC24/NWC24Manage.h"
#include "SDK/NWC24/NWC24FileAPI.h"
#include "SDK/NWC24/NWC24StdAPI.h"
#include "SDK/NWC24/NWC24FriendList.h"

static const char *sFriendListPath = "/shared2/wc24/nwc24fl.bin";

s32 NWC24iOpenFriendList(void)
{
    NWC24FLHeader *hdr = (NWC24FLHeader *)(NWC24WorkArea + 0x2400);
    Mail_memset(hdr, 0, 0x360);
    return GetCachedFLHeader(&hdr);
}

s32 GetCachedFLHeader(NWC24FLHeader **hdr)
{
    NWC24File file;
    NWC24FLHeader *h;
    s32 err;
    s32 r;

    h = (NWC24FLHeader *)(NWC24WorkArea + 0x2400);
    *hdr = h;
    if (h->magic != 0x5763466C) {
        err = NWC24FOpen(&file, sFriendListPath, 2);
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
