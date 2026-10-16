#include "types.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/NWC24/NWC24Manage.h"

/* Declarations for other NWC24 translation units (no shared header yet). */
extern int VFIsAvailable(void);
extern int NWC24iTrySuspendForOpenLib(void);
extern int NWC24iResumeForCloseLib(void);
extern void NWC24InitBase64Table(void *p);
extern int NWC24iConfigOpen(void);
extern int NWC24iConfigFlush(void);
extern int NWC24iOpenMBox(void);
extern int NWC24iOpenFriendList(void);
extern int NWC24iOpenSecretFriendList(void);
extern int NWC24iOpenDlTaskList(void);
extern int NWC24iCloseDlTaskList(void);

/* Shared NWC24 statics (still in asm/sbss_8063FF48.s). */
extern void *lbl_80640250;   /* work area */
extern int lbl_80640254;     /* library state: 0 closed, 1 open, 2 open by tool, 3 blocked */
extern u32 lbl_80640258;     /* flags */
extern int lbl_8064025C;     /* last error code */
extern int lbl_80640260;     /* version registered */

static const char *NWC24Version = "<< RVL_SDK - NWC24 \trelease build: Apr 16 2007 02:52:36 (0x4199_60831) >>";

static int NWC24OpenLibInternal(void *work, int state);

void NWC24iRegister(void)
{
    if (lbl_80640260 == 0) {
        OSRegisterVersion(NWC24Version);
        lbl_80640260 = 1;
    }
}

int NWC24OpenLib(void *work)
{
    if (lbl_80640254 == 2) {
        return -26;
    }
    return NWC24OpenLibInternal(work, 1);
}

static int NWC24OpenLibInternal(void *work, int state)
{
    int result;
    int err = 0;
    u32 failed;

    lbl_8064025C = 0;
    if (VFIsAvailable() == 0) {
        return -1;
    }
    if (lbl_80640254 == 1) {
        return -10;
    }
    if (lbl_80640254 == 3) {
        return -26;
    }
    if (work == NULL) {
        return -5;
    }
    if (((u32)work & 0x1f) != 0) {
        return -23;
    }

    result = NWC24iTrySuspendForOpenLib();
    if (result == 0) {
        NWC24iRegister();
        lbl_80640250 = work;
        lbl_80640258 &= ~1;
        NWC24InitBase64Table((char *)work + 0x1300);

        failed = 0;
        err = 0;
        result = NWC24iConfigOpen();
        if (result != 0) {
            err = result;
            failed |= 4;
        }
        result = NWC24iOpenMBox();
        if (result != 0) {
            err = result;
            failed |= 4;
        }
        result = NWC24iOpenFriendList();
        if (result != 0) {
            err = result;
            failed |= 4;
        }
        result = NWC24iOpenSecretFriendList();
        if (result != 0) {
            err = result;
            if (result == -20) {
                failed |= 4;
            } else {
                failed |= 1;
            }
        }
        result = NWC24iOpenDlTaskList();
        if (result < 0) {
            err = result;
            if (result == -20) {
                failed |= 4;
            } else {
                failed |= 2;
            }
        }
        if (failed == 3) {
            err = -49;
        }
        if (failed != 0) {
            lbl_80640250 = NULL;
            NWC24iResumeForCloseLib();
            result = err;
        } else {
            lbl_80640254 = state;
            return 0;
        }
    }

    switch (result) {
    case -49:
    case -46:
    case -43:
    case -42:
    case -38:
    case -29:
    case -26:
    case -22:
    case -21:
    case -20:
    case -19:
    case -18:
    case -17:
    case -16:
    case -14:
    case -1:
        lbl_8064025C = result - 109000;
        break;
    default:
        break;
    }
    return result;
}

int NWC24CloseLib(void)
{
    int result;

    if (lbl_80640254 != 1) {
        return -9;
    }
    result = NWC24iConfigFlush();
    if (result != 0) {
        return result;
    }
    result = NWC24iCloseDlTaskList();
    if (result < 0) {
        return result;
    }
    result = NWC24iResumeForCloseLib();
    if (result != 0) {
        return result;
    }
    lbl_80640250 = NULL;
    lbl_80640254 = 0;
    return result;
}

int NWC24IsMsgLibOpened(void)
{
    return lbl_80640254 == 1;
}

int NWC24IsMsgLibOpenedByTool(void)
{
    return lbl_80640254 == 2;
}

int NWC24BlockOpenMsgLib(int block)
{
    int result = 0;
    BOOL enabled = OSDisableInterrupts();

    if (block != 0) {
        if (lbl_80640254 == 0) {
            lbl_80640254 = 3;
        } else if (lbl_80640254 == 1) {
            result = -10;
        } else {
            result = -26;
        }
    } else {
        int unblock = lbl_80640254 == 3;
        if (unblock) {
            lbl_80640254 = 0;
        }
        if (!unblock) {
            result = -9;
        }
    }
    OSRestoreInterrupts(enabled);
    return result;
}
