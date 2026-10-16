#ifndef POKEREVO_NWC24_NWC24FILEAPI_H
#define POKEREVO_NWC24_NWC24FILEAPI_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

// A NAND file (NANDFileInfo at 0xC, 0x8C bytes) or a VF file (handle at 0x98) opened by
// NWC24FOpen; the last field used by asm/SDK/NWC24/NWC24FileAPI.s ends at 0x9C.
typedef struct NWC24File {
    u8 data[0x9C];
} NWC24File;

s32 NWC24FOpen(NWC24File *file, const char *path, u32 mode);
s32 NWC24FClose(NWC24File *file);
s32 NWC24FSeek(NWC24File *file, s32 offset, s32 whence);
s32 NWC24FRead(void *buf, u32 len, NWC24File *file);
s32 NWC24FWrite(const void *buf, u32 len, NWC24File *file);
s32 NWC24FGetLength(NWC24File *file, u32 *length);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_NWC24_NWC24FILEAPI_H
