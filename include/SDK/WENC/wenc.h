#ifndef POKEREVO_WENC_WENC_H
#define POKEREVO_WENC_WENC_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define WENC_FLAG_FIRST 0
#define WENC_FLAG_CONT  1

typedef struct WENCInfo {
    s32 xn;   // 0x0
    s32 dl;   // 0x4
    s32 qn;   // 0x8
    s32 dn;   // 0xC
    s32 dlh;  // 0x10
    s32 dlq;  // 0x14
    u8 padding[8];
} WENCInfo;

s32 WENCGetEncodeData(WENCInfo *info, u32 flag, const s16 *pbyPcmData, s32 nSampleNum, u8 *pbyAdpcmData);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_WENC_WENC_H
