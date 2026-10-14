#include "types.h"
#include "SDK/EXI/EXIBios.h"

#define EXI_READ  0
#define EXI_WRITE 1

#define EXI_FREQ_1M 0

#define EXI_MAGIC 0xA5FF005A

static s32 Chan;
static u32 Dev;
static u32 BarnacleEnabled;
static u32 Enabled;

static BOOL ProbeBarnacle(s32 chan, u32 dev, u32 *revision)
{
    BOOL err;
    u32 cmd;

    if (chan != 2 && dev == 0 && !EXIAttach(chan, NULL)) {
        return FALSE;
    }

    err = !EXILock(chan, dev, NULL);
    if (!err) {
        err = !EXISelect(chan, dev, EXI_FREQ_1M);
        if (!err) {
            cmd = 0x20011300;
            err = FALSE;
            err |= !EXIImm(chan, &cmd, 4, EXI_WRITE, NULL);
            err |= !EXISync(chan);
            err |= !EXIImm(chan, revision, 4, EXI_READ, NULL);
            err |= !EXISync(chan);
            err |= !EXIDeselect(chan);
        }
        EXIUnlock(chan);
    }

    if (chan != 2 && dev == 0) {
        EXIDetach(chan);
    }

    if (err) {
        return FALSE;
    }
    return (*revision != 0xFFFFFFFF) ? TRUE : FALSE;
}

void __OSEnableBarnacle(s32 chan, u32 dev)
{
    u32 id;

    if (EXIGetID(chan, dev, &id)) {
        switch (id) {
        case 0x00000004:
        case 0x00000008:
        case 0x00000010:
        case 0x00000020:
        case 0x01010000:
        case 0x01020000:
        case 0x02020000:
        case 0x03010000:
        case 0x04020100:
        case 0x04020200:
        case 0x04020300:
        case 0x04040404:
        case 0x04060000:
        case 0x04120000:
        case 0x04130000:
        case 0x04220000:
        case 0x80000004:
        case 0x80000008:
        case 0x80000010:
        case 0x80000020:
        case 0xFFFFFFFF:
            break;
        default:
            if (ProbeBarnacle(chan, dev, &id)) {
                Chan = chan;
                Dev = dev;
                Enabled = BarnacleEnabled = EXI_MAGIC;
            }
            break;
        }
    }
}
