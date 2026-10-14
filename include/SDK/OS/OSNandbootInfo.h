#ifndef POKEREVO_OS_OSNANDBOOTINFO_H
#define POKEREVO_OS_OSNANDBOOTINFO_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NANDBootInfo
{
    u32 checksum;       // 0x0
    u8 unk4[0x4];       // 0x4
    u32 unk8;           // 0x8
    u32 unkC;           // 0xC
    u8 unk10[0x1010];   // 0x10
} NANDBootInfo;

BOOL __OSWriteNandbootInfo(NANDBootInfo *info);
BOOL func_8027430C(NANDBootInfo *info);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OS_OSNANDBOOTINFO_H
