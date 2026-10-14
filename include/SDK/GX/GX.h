#ifndef POKEREVO_GX_GX_H
#define POKEREVO_GX_GX_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct GXColor {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
} GXColor;

typedef struct GXRenderModeObj {
    u32 viTVmode;               // 0x0
    u16 fbWidth;                // 0x4
    u16 efbHeight;              // 0x6
    u16 xfbHeight;              // 0x8
    u16 viXOrigin;              // 0xA
    u16 viYOrigin;              // 0xC
    u16 viWidth;                // 0xE
    u16 viHeight;               // 0x10
    u32 xFBmode;                // 0x14
    u8 field_rendering;         // 0x18
    u8 aa;                      // 0x19
    u8 sample_pattern[12][2];   // 0x1A
    u8 vfilter[7];              // 0x32
} GXRenderModeObj;

// GXMisc.c is still asm
void GXAbortFrame(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_GX_GX_H
