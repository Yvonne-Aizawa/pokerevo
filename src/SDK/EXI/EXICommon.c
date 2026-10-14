#include "types.h"
#include "SDK/EXI/EXIBios.h"

#define EXI_READ  0
#define EXI_WRITE 1

#define EXI_FREQ_8M 4

BOOL EXIWriteReg(s32 chan, u32 dev, u32 exiCmd, void *reg, s32 size)
{
    BOOL err;
    u32 data;

    switch (size) {
    case 1:
        data = (u32)(*(u8 *)reg << 24);
        break;
    case 2: {
        u16 v = *(u16 *)reg;

        data = (u32)(((v & 0xFF) << 24) | ((v & 0xFF00) << 8));
        break;
    }
    default: {
        u32 v = *(u32 *)reg;

        data = ((v & 0xFF000000) >> 24) | ((v & 0x00FF0000) >> 8) | ((v & 0x0000FF00) << 8) | ((v & 0xFF) << 24);
        break;
    }
    }

    err = !EXILock(chan, dev, NULL);
    if (err) {
        return FALSE;
    }

    err |= !EXISelect(chan, dev, EXI_FREQ_8M);
    if (err) {
        EXIUnlock(chan);
        return FALSE;
    }

    err |= !EXIImm(chan, &exiCmd, 4, EXI_WRITE, NULL);
    err |= !EXISync(chan);
    err |= !EXIImm(chan, &data, 4, EXI_WRITE, NULL);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);
    err |= !EXIUnlock(chan);
    return !err;
}
