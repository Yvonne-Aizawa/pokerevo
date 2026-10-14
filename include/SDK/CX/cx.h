#ifndef POKEREVO_CX_CX_H
#define POKEREVO_CX_CX_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define CXiConvertEndian_(x)                                                                                      \
    ((((x) & 0xFF000000) >> 24) | (((x) & 0x00FF0000) >> 8) | (((x) & 0x0000FF00) << 8) | (((x) & 0x000000FF) << 24))

// CXCompression.c
u32 CXCompressLZ(const u8 *srcp, u32 size, u8 *dstp, void *work);

// CXUncompression.c
u32 CXGetUncompressedSize(const void *srcp);
void CXUncompressLZ(const void *srcp, void *destp);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_CX_CX_H
