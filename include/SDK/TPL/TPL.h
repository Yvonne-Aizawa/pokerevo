#ifndef POKEREVO_TPL_TPL_H
#define POKEREVO_TPL_TPL_H

#include "types.h"
#include "SDK/GX/GX.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct TPLHeader {
    u16 height;          // 0x0
    u16 width;           // 0x2
    u32 format;          // 0x4
    void *data;          // 0x8
    u32 wrapS;           // 0xC
    u32 wrapT;           // 0x10
    u32 minFilter;       // 0x14
    u32 magFilter;       // 0x18
    f32 LODBias;         // 0x1C
    u8 edgeLODEnable;    // 0x20
    u8 minLOD;           // 0x21
    u8 maxLOD;           // 0x22
    u8 unpacked;         // 0x23
} TPLHeader;

typedef struct TPLClutHeader {
    u16 numEntries;      // 0x0
    u8 unpacked;         // 0x2
    u8 pad8;             // 0x3
    u32 format;          // 0x4
    void *data;          // 0x8
} TPLClutHeader;

typedef struct TPLDescriptor {
    TPLHeader *textureHeader;   // 0x0
    TPLClutHeader *CLUTHeader;  // 0x4
} TPLDescriptor;

typedef struct TPLPalette {
    u32 versionNumber;               // 0x0
    u32 numDescriptors;              // 0x4
    TPLDescriptor *descriptorArray;  // 0x8
} TPLPalette;

void TPLBind(TPLPalette *pal);
TPLDescriptor *TPLGet(TPLPalette *pal, u32 id);
void TPLGetGXTexObjFromPalette(TPLPalette *pal, GXTexObj *to, u32 id);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_TPL_TPL_H
