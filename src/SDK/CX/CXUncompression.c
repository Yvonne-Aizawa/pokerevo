#include "types.h"
#include "SDK/CX/cx.h"

u32 CXGetUncompressedSize(const void *srcp)
{
    u32 size;

    size = CXiConvertEndian_(*(u32 *)srcp) >> 8;
    if (size == 0) {
        size = CXiConvertEndian_(*((u32 *)srcp + 1));
    }
    return size;
}

void CXUncompressLZ(const void *srcp, void *destp)
{
    const u8 *pSrc;
    u8 *pDst;
    u32 destCount;
    s32 i;

    pSrc = srcp;
    pDst = destp;
    destCount = CXiConvertEndian_(*(u32 *)pSrc) >> 8;
    pSrc += 4;
    if (destCount == 0) {
        destCount = CXiConvertEndian_(*(u32 *)pSrc);
        pSrc += 4;
    }

    while (destCount > 0) {
        u32 flags = *pSrc++;

        for (i = 0; i < 8; i++) {
            if (!(flags & 0x80)) {
                *pDst++ = *pSrc++;
                destCount--;
            } else {
                s32 length = (*pSrc >> 4) + 3;
                s32 offset = (*pSrc++ & 0x0F) << 8;

                offset = (offset | *pSrc++) + 1;
                destCount -= length;
                do {
                    *pDst = pDst[-offset];
                    pDst++;
                } while (--length > 0);
            }
            if (destCount == 0) {
                break;
            }
            flags <<= 1;
        }
    }
}
