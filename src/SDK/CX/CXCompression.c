#include "types.h"
#include "SDK/CX/cx.h"

#define CX_COMPRESSION_LZ 0x10

#define LZ_WINDOW_SIZE 4096
#define LZ_MAX_LENGTH  0x12

typedef struct LZCompressInfo {
    u16 windowPos;       // 0x0
    u16 windowLen;       // 0x2
    s16 *LZOffsetTable;  // 0x4
    s16 *LZByteTable;    // 0x8
    s16 *LZEndTable;     // 0xC
} LZCompressInfo;

static void LZInitTable(LZCompressInfo *info, void *work);
static u8 SearchLZ(LZCompressInfo *info, const u8 *nextp, u32 remainSize, u16 *offset);
static void SlideByte(LZCompressInfo *info, const u8 *srcp);

u32 CXCompressLZ(const u8 *srcp, u32 size, u8 *dstp, void *work)
{
    u32 LZDstCount;
    u8 LZCompFlags;
    u8 *LZCompFlagsp;
    u16 lastOffset;
    u8 lastLength;
    u8 i;
    u32 dstMax;
    LZCompressInfo info;

    if (size < 0x1000000) {
        *(u32 *)dstp = CXiConvertEndian_(size << 8 | CX_COMPRESSION_LZ);
        dstp += 4;
        LZDstCount = 4;
    } else {
        *(u32 *)dstp = CXiConvertEndian_(CX_COMPRESSION_LZ);
        dstp += 4;
        *(u32 *)dstp = CXiConvertEndian_(size);
        dstp += 4;
        LZDstCount = 8;
    }
    dstMax = size;
    LZInitTable(&info, work);

    while (size > 0) {
        LZCompFlags = 0;
        LZCompFlagsp = dstp++;
        LZDstCount++;

        for (i = 0; i < 8; i++) {
            LZCompFlags <<= 1;
            if (size <= 0) {
                continue;
            }

            if ((lastLength = SearchLZ(&info, srcp, size, &lastOffset)) != 0) {
                const u8 *slidep;
                u32 n;

                LZCompFlags |= 1;
                if (LZDstCount + 2 >= dstMax) {
                    return 0;
                }
                *dstp++ = (u8)((lastLength - 3) << 4 | (lastOffset - 1) >> 8);
                *dstp++ = (u8)((lastOffset - 1) & 0xFF);
                LZDstCount += 2;

                slidep = srcp;
                for (n = 0; n < lastLength; n++) {
                    SlideByte(&info, slidep++);
                }
                srcp += lastLength;
                size -= lastLength;
            } else {
                if (LZDstCount + 1 >= dstMax) {
                    return 0;
                }
                SlideByte(&info, srcp);
                *dstp++ = *srcp++;
                size--;
                LZDstCount++;
            }
        }
        *LZCompFlagsp = LZCompFlags;
    }

    i = 0;
    while ((LZDstCount + i) & 3) {
        *dstp++ = 0;
        i++;
    }
    return LZDstCount;
}

static void LZInitTable(LZCompressInfo *info, void *work)
{
    u16 i;

    info->LZOffsetTable = (s16 *)work;
    info->LZByteTable = (s16 *)((u32)work + LZ_WINDOW_SIZE * sizeof(s16));
    info->LZEndTable = (s16 *)((u32)work + (LZ_WINDOW_SIZE + 256) * sizeof(s16));

    for (i = 0; i < 256; i++) {
        info->LZByteTable[i] = -1;
        info->LZEndTable[i] = -1;
    }
    info->windowPos = 0;
    info->windowLen = 0;
}

static u8 SearchLZ(LZCompressInfo *info, const u8 *nextp, u32 remainSize, u16 *offset)
{
    const u8 *searchp;
    const u8 *headp;
    const u8 *searchHeadp;
    u16 maxOffset;
    u8 maxLength = 2;
    u8 tmpLength;
    s32 w_offset;
    s16 *const LZOffsetTable = info->LZOffsetTable;
    const u16 windowPos = info->windowPos;
    const u16 windowLen = info->windowLen;

    if (remainSize < 3) {
        return 0;
    }

    w_offset = info->LZByteTable[*nextp];
    while (w_offset != -1) {
        if (w_offset < windowPos) {
            searchp = nextp - windowPos + w_offset;
        } else {
            searchp = nextp - windowLen - windowPos + w_offset;
        }

        if (*(searchp + 1) != *(nextp + 1) || *(searchp + 2) != *(nextp + 2)) {
            w_offset = LZOffsetTable[w_offset];
            continue;
        }

        if (nextp - searchp < 2) {
            break;
        }

        tmpLength = 3;
        searchHeadp = searchp + 3;
        headp = nextp + 3;
        while ((u32)(headp - nextp) < remainSize && *headp == *searchHeadp) {
            headp++;
            searchHeadp++;
            tmpLength++;
            if (tmpLength == LZ_MAX_LENGTH) {
                break;
            }
        }

        if (tmpLength > maxLength) {
            maxLength = tmpLength;
            maxOffset = (u16)(nextp - searchp);
            if (maxLength == LZ_MAX_LENGTH) {
                break;
            }
        }
        w_offset = LZOffsetTable[w_offset];
    }

    if (maxLength < 3) {
        return 0;
    }
    *offset = maxOffset;
    return maxLength;
}

static void SlideByte(LZCompressInfo *info, const u8 *srcp)
{
    s16 offset;
    u8 in_data = *srcp;
    u16 insert_offset;
    s16 *const LZByteTable = info->LZByteTable;
    s16 *const LZOffsetTable = info->LZOffsetTable;
    s16 *const LZEndTable = info->LZEndTable;
    const u16 windowPos = info->windowPos;
    const u16 windowLen = info->windowLen;

    if (windowLen == LZ_WINDOW_SIZE) {
        u8 out_data = *(srcp - LZ_WINDOW_SIZE);

        if ((LZByteTable[out_data] = LZOffsetTable[LZByteTable[out_data]]) == -1) {
            LZEndTable[out_data] = -1;
        }
        insert_offset = windowPos;
    } else {
        insert_offset = windowLen;
    }

    offset = LZEndTable[in_data];
    if (offset == -1) {
        LZByteTable[in_data] = (s16)insert_offset;
    } else {
        LZOffsetTable[offset] = (s16)insert_offset;
    }
    LZEndTable[in_data] = (s16)insert_offset;
    LZOffsetTable[insert_offset] = -1;

    if (windowLen == LZ_WINDOW_SIZE) {
        info->windowPos = (u16)((windowPos + 1) % LZ_WINDOW_SIZE);
    } else {
        info->windowLen++;
    }
}
