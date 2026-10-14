#include "types.h"
#include "string.h"
#include "SDK/OS/OSNandbootInfo.h"
#include "SDK/NAND/NANDOpenClose.h"

#define NAND_ACCESS_READ  1
#define NAND_ACCESS_WRITE 2

// NANDOpenClose.c is still asm
s32 NANDPrivateOpen(const char *path, NANDFileInfo *info, u8 accType);

static u32 GetChecksum(const NANDBootInfo *info)
{
    const u32 *p;
    u32 sum;
    int i;

    sum = 0;
    p = (const u32 *)info + 1;
    for (i = 1; i < 0x408; i++) {  // every word of NANDBootInfo after the checksum (an unsigned sizeof bound isn't unrolled)
        sum += *p++;
    }
    return sum;
}

BOOL __OSWriteNandbootInfo(NANDBootInfo *info)
{
    NANDFileInfo file;

    info->checksum = GetChecksum(info);
    if (NANDPrivateOpen("/shared2/sys/NANDBOOTINFO", &file, NAND_ACCESS_WRITE) == 0) {
        if (NANDWrite(&file, info, sizeof(NANDBootInfo)) != sizeof(NANDBootInfo)) {
            NANDClose(&file);
            return FALSE;
        }
        return NANDClose(&file) == 0;
    }
    return FALSE;
}

BOOL func_8027430C(NANDBootInfo *info)
{
    NANDFileInfo file;
    s32 result;

    if (NANDPrivateOpen("/shared2/sys/NANDBOOTINFO", &file, NAND_ACCESS_READ) == 0) {
        result = NANDRead(&file, info, sizeof(NANDBootInfo));
        NANDClose(&file);
        if (result != sizeof(NANDBootInfo)) {
            memset(info, 0, sizeof(NANDBootInfo));
            return FALSE;
        }
    } else {
        memset(info, 0, sizeof(NANDBootInfo));
        return FALSE;
    }
    if (info->checksum != GetChecksum(info)) {
        memset(info, 0, sizeof(NANDBootInfo));
        return FALSE;
    }
    return TRUE;
}
