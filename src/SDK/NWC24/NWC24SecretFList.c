#include "types.h"
#include "SDK/NWC24/NWC24Manage.h"
#include "SDK/NWC24/NWC24FileAPI.h"
#include "SDK/NWC24/NWC24StdAPI.h"
#include "SDK/NWC24/NWC24SecretFList.h"

static const char *sSecretFListPath = "/shared2/wc24/nwc24fls.bin";

s32 NWC24iOpenSecretFriendList(void) {
    NWC24SecretFLHeader* hdr = (NWC24SecretFLHeader*)(NWC24WorkArea + 0x2800);
    Mail_memset(hdr, 0, 0x800);
    return GetCachedSecretFLHeader(&hdr);
}

s32 GetCachedSecretFLHeader(NWC24SecretFLHeader** hdr) {
    NWC24File file;
    s32 err;
    s32 rd;

    *hdr = (NWC24SecretFLHeader*)(NWC24WorkArea + 0x2800);
    if ((*hdr)->magic != 0x57634673) {
        err = NWC24FOpen(&file, sSecretFListPath, 2);
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
