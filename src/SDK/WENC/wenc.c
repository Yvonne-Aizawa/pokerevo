// NOT LINKED YET: obj_files.mk still builds asm/SDK/WENC/wenc.s. Check with tools/decomp/tu_diff.py.
// WENCGetEncodeData has the original's instructions (182) but not its registers: the original keeps the
// four step flags in volatile r7-r10, xn/dl/qn in r11/r12/r5, dn/dlh/dlq in r27/r26/r25 and the table base
// in r24; here the flags land in r22-r25 and the table base in r3. About 55 declaration-order, scope and
// initialization variants didn't reproduce it (best 101 differing lines, through unnatural orders).
// Data splits not done: the table (0x40 bytes at 0x803FE0B8, inside rodata.s's lbl_803FE088, needs a label
// first) and the int-to-double constant lbl_80642A90 in sdata2_80642980.s.

#include "types.h"
#include "string.h"
#include "stdlib.h"
#include "SDK/WENC/wenc.h"

s32 WENCGetEncodeData(WENCInfo *info, u32 flag, const s16 *pbyPcmData, s32 nSampleNum, u8 *pbyAdpcmData)
{
    const f64 table[8] = {0.8984375, 0.8984375, 0.8984375, 0.8984375, 1.19921875, 1.59765625, 2.0, 2.3984375};
    s32 xn;
    s32 dl;
    s32 qn;
    s32 dn;
    s32 dlh;
    s32 dlq;
    s32 i;

    memset(pbyAdpcmData, 0, (u32)((nSampleNum + 1) / 2));

    if (!(flag & WENC_FLAG_CONT)) {
        xn = 0;
        dl = 0x7F;
        qn = 0;
        dn = 0;
        dlh = 0;
        dlq = 0;
    } else {
        xn = info->xn;
        dl = info->dl;
        qn = info->qn;
        dn = info->dn;
        dlh = info->dlh;
        dlq = info->dlq;
    }

    for (i = 0; i < nSampleNum; i++) {
        s32 x = *pbyPcmData++;
        s32 l2 = 0;
        s32 l4 = 0;
        s32 l1 = 0;
        s32 l3 = 0;

        if (x < xn) {
            l1 = 1;
        }

        dn = abs(x - xn);
        if (dn >= dl) {
            l2 = 1;
            dn -= dl;
        }

        dlh = dl / 2;
        if (dn >= dlh) {
            l3 = 1;
            dn -= dlh;
        }

        dlq = dlh / 2;
        if (dn >= dlq) {
            l4 = 1;
            dn -= dlq;
        }

        qn = (1 - l1 * 2) * (dlq * l4 + dl * l2 + (dlq / 2 + dlh * l3));
        if (qn > 0xFFFF) {
            qn = 0xFFFF;
        }
        if (qn < -0x10000) {
            qn = -0x10000;
        }

        xn += qn;
        if (xn > 0x7FFF) {
            xn = 0x7FFF;
        }
        if (xn < -0x8000) {
            xn = -0x8000;
        }

        dl = (s32)(dl * table[l2 * 4 + l3 * 2 + l4]);
        pbyAdpcmData[i / 2] |= (u8)(l1 * 8 + l2 * 4 + l3 * 2 + l4) << (((i & 1) - 1) & 4);

        if (dl <= 0x7F) {
            dl = 0x7F;
        }
        if (dl >= 0x6000) {
            dl = 0x6000;
        }
    }

    info->xn = xn;
    info->dl = dl;
    info->qn = qn;
    info->dn = dn;
    info->dlh = dlh;
    info->dlq = dlq;
    return nSampleNum;
}
