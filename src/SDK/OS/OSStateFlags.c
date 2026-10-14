#include "types.h"
#include "string.h"
#include "SDK/NAND/NANDOpenClose.h"
#include "SDK/OS/OSStateFlags.h"

#define NAND_ACCESS_READ  1
#define NAND_ACCESS_WRITE 2

extern OSStateFlags StateFlags;

static inline u32 CheckSum(const OSStateFlags *state)
{
    const u32 *ptr = (const u32 *)state;
    u32 checkSum = 0;
    int i;

    for (i = 1; i < sizeof(OSStateFlags) / sizeof(u32); i++) {
        checkSum += ptr[i];
    }
    return checkSum;
}

BOOL __OSWriteStateFlags(const OSStateFlags *state)
{
    NANDFileInfo info;
    BOOL ret;

    memcpy(&StateFlags, state, sizeof(OSStateFlags));
    StateFlags.checkSum = CheckSum(&StateFlags);

    if (NANDOpen("/title/00000001/00000002/data/state.dat", &info, NAND_ACCESS_WRITE) == 0) {
        if (NANDWrite(&info, &StateFlags, sizeof(OSStateFlags)) != sizeof(OSStateFlags)) {
            NANDClose(&info);
            ret = FALSE;
        } else if (NANDClose(&info) != 0) {
            ret = FALSE;
        } else {
            goto ok;
        }
    } else {
        ret = FALSE;
    }
    return ret;
ok:
    return TRUE;
}

BOOL __OSReadStateFlags(OSStateFlags *state)
{
    NANDFileInfo info;
    s32 len;

    if (NANDOpen("/title/00000001/00000002/data/state.dat", &info, NAND_ACCESS_READ) == 0) {
        len = NANDRead(&info, &StateFlags, sizeof(OSStateFlags));
        NANDClose(&info);
        if (len != sizeof(OSStateFlags)) {
            NANDDelete("/title/00000001/00000002/data/state.dat");
            memset(state, 0, sizeof(OSStateFlags));
            return FALSE;
        }
    } else {
        memset(state, 0, sizeof(OSStateFlags));
        return FALSE;
    }

    if (StateFlags.checkSum != CheckSum(&StateFlags)) {
        memset(state, 0, sizeof(OSStateFlags));
        return FALSE;
    }

    memcpy(state, &StateFlags, sizeof(OSStateFlags));
    return TRUE;
}
