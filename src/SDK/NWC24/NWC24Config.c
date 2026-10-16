#include "types.h"
#include "SDK/OS/OS.h"
#include "SDK/NWC24/NWC24Config.h"
#include "SDK/NWC24/NWC24FileAPI.h"
#include "SDK/NWC24/NWC24Manage.h"
#include "SDK/NWC24/NWC24Schedule.h"

typedef struct NWC24Config {
    u32 magic;
    u32 version;
    u64 userId;
    u32 count;
    u8 pad[0x3fc - 0x14];
    u32 checksum;
} NWC24Config;

static s32 sConfigDirty;
static NWC24Config *sConfig;

static const char *sMBoxDir = "/shared2/wc24/mbox";
static const char *sConfigPath = "/shared2/wc24/nwc24msg.cfg";
static const char *sBackupPath = "/shared2/wc24/nwc24msg.cbk";

static s32 CheckConfig(void);

// Inlined into NWC24GetMyUserId: its early `return` is the branch to the end of the inline.
static s32 GenerateUserId(u64 *userId)
{
    s32 ret = 0;
    s32 r;
    u32 status;

    r = NWC24BlockOpenMsgLib(1);
    if (r < 0) {
        return r;
    }
    status = 0;
    if (userId == NULL) {
        ret = -3;
    } else {
        *userId = 9999999999999999ULL;
        ret = NWC24iRequestGenerateUserId(userId, &status);
    }
    r = NWC24BlockOpenMsgLib(0);
    if (ret >= 0) {
        ret = r;
    }
    return ret;
}

s32 NWC24GetMyUserId(u64 *userId)
{
    s32 ret = 0;
    s32 r;

    if (NWC24IsMsgLibOpened() || NWC24IsMsgLibOpenedByTool()) {
        *userId = sConfig->userId;
    } else {
        r = NWC24SuspendScheduler();
        if (r < 0) {
            return r;
        }
        r = GenerateUserId(userId);
        ret = r;
        if (r == -36 || r == -35) {
            ret = 0;
        }
        r = NWC24ResumeScheduler();
        if (r < 0) {
            if (ret != 0) {
                r = ret;
            }
            ret = r;
        }
    }
    return ret;
}

s32 NWC24iConfigOpen(void)
{
    sConfigDirty = 0;
    sConfig = (NWC24Config *)(NWC24WorkArea + 0xd00);
    return NWC24iConfigReload();
}

s32 NWC24iConfigReload(void)
{
    NWC24File file;
    s32 result;
    s32 ioResult;

    if (NWC24WorkArea == NULL) {
        return -9;
    }

    result = NWC24FOpen(&file, sConfigPath, 2);
    if (result == 0) {
        ioResult = NWC24FRead(sConfig, 0x400, &file);
        result = NWC24FClose(&file);
        if (ioResult != 0) {
            result = ioResult;
        }
    }
    if (result == 0) {
        result = CheckConfig();
        if (result == 0) {
            sConfigDirty = 0;
            return result;
        }
    }

    result = NWC24FOpen(&file, sBackupPath, 2);
    if (result == 0) {
        ioResult = NWC24FRead(sConfig, 0x400, &file);
        result = NWC24FClose(&file);
        if (ioResult != 0) {
            result = ioResult;
        }
    }
    if (result == 0) {
        result = CheckConfig();
        if (result == 0) {
            sConfigDirty = 1;
        }
    }
    return result;
}

// Sum of the first 255 words; the last word of the 0x400 block stores it.
static inline u32 CalcChecksum(const u32 *p)
{
    u32 sum = 0;
    int i;

    for (i = 0; i < 255; i++) {
        sum += *p++;
    }
    return sum;
}

s32 NWC24iConfigFlush(void)
{
    NWC24File file;
    s32 result;
    s32 ioResult;
    NWC24Config *cfg;

    if (NWC24WorkArea == NULL) {
        return -9;
    }
    if (sConfigDirty == 0) {
        return 0;
    }

    cfg = sConfig;
    cfg->checksum = CalcChecksum((u32 *)cfg);

    result = NWC24FOpen(&file, sConfigPath, 1);
    if (result == 0) {
        ioResult = NWC24FWrite(sConfig, 0x400, &file);
        result = NWC24FClose(&file);
        if (ioResult != 0) {
            result = ioResult;
        }
        sConfigDirty = 0;
    }
    if (result != 0) {
        return result;
    }

    result = NWC24FOpen(&file, sBackupPath, 1);
    if (result == 0) {
        ioResult = NWC24FWrite(sConfig, 0x400, &file);
        result = NWC24FClose(&file);
        if (ioResult != 0) {
            result = ioResult;
        }
        sConfigDirty = 0;
    }
    return result;
}

const char *NWC24GetMBoxDir(void)
{
    OSIOSRev rev;

    __OSGetIOSRev(&rev);
    if (rev.idLo == 0) {
        if (rev.verMajor == 7 && rev.verMinor == 0 || rev.verMajor < 7) {
            OSPanic("NWC24Config.c", 666, "stopped.");
        }
    }
    return sMBoxDir;
}

// Not auto-inlined into NWC24iConfigReload (its helper CalcChecksum is, via `static inline`).
#pragma auto_inline off
static s32 CheckConfig(void)
{
    NWC24Config *cfg = sConfig;
    s32 ret;

    if (cfg->magic != 0x57634366) {
        return -14;
    }
    if (cfg->checksum != CalcChecksum((u32 *)cfg)) {
        return -14;
    }
    if (cfg->count >= 0x20) {
        return -14;
    }
    ret = 0;
    if (cfg->version != 8) {
        ret = -27;
    }
    return ret;
}
#pragma auto_inline reset
