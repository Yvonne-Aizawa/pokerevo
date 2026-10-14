#ifndef POKEREVO_OS_OSFONT_H
#define POKEREVO_OS_OSFONT_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSFontHeader {
    u16 fontType;       // 0x0
    u16 firstChar;      // 0x2
    u16 lastChar;       // 0x4
    u16 invalChar;      // 0x6
    u16 ascent;         // 0x8
    u16 descent;        // 0xA
    u16 width;          // 0xC
    u16 leading;        // 0xE
    u16 cellWidth;      // 0x10
    u16 cellHeight;     // 0x12
    u32 sheetSize;      // 0x14
    u16 sheetFormat;    // 0x18
    u16 sheetColumn;    // 0x1A
    u16 sheetRow;       // 0x1C
    u16 sheetWidth;     // 0x1E
    u16 sheetHeight;    // 0x20
    u16 widthTable;     // 0x22
    u32 sheetImage;     // 0x24
    u32 sheetFullSize;  // 0x28
    u8 c0;              // 0x2C
    u8 c1;              // 0x2D
    u8 c2;              // 0x2E
    u8 c3;              // 0x2F
} OSFontHeader;

// OSFont.c is still asm
u16 OSSetFontEncode(u16 encode);
u32 OSLoadFont(OSFontHeader *fontData, void *tmp);
const char *OSGetFontTexel(const char *string, void *image, s32 pos, s32 stride, s32 *width);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OS_OSFONT_H
