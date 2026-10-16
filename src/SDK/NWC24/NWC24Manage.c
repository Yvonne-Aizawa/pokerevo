#include "types.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/NWC24/NWC24Manage.h"
#include "SDK/NWC24/NWC24Config.h"
#include "SDK/NWC24/NWC24Download.h"
#include "SDK/NWC24/NWC24FriendList.h"
#include "SDK/NWC24/NWC24Mime.h"
#include "SDK/NWC24/NWC24MBoxCtrl.h"
#include "SDK/NWC24/NWC24Schedule.h"
#include "SDK/NWC24/NWC24SecretFList.h"

/* VF has no header yet. */
extern int VFIsAvailable(void);

static const char *NWC24Version = "<< RVL_SDK - NWC24 \trelease build: Apr 16 2007 02:52:36 (0x4199_60831) >>";

static int NWC24OpenLibInternal(void *work, int state);

void NWC24iRegister(void)
{
    if (NWC24VersionRegistered == 0) {
        OSRegisterVersion(NWC24Version);
        NWC24VersionRegistered = 1;
    }
}

int NWC24OpenLib(void *work)
{
    if (NWC24LibState == 2) {
        return -26;
    }
    return NWC24OpenLibInternal(work, 1);
}

static int NWC24OpenLibInternal(void *work, int state)
{
    int result;
    int err = 0;
    u32 failed;

    NWC24LastError = 0;
    if (VFIsAvailable() == 0) {
        return -1;
    }
    if (NWC24LibState == 1) {
        return -10;
    }
    if (NWC24LibState == 3) {
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
        NWC24WorkArea = work;
        NWC24LibFlags &= ~1;
        NWC24InitBase64Table((s8 *)work + 0x1300);

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
            NWC24WorkArea = NULL;
            NWC24iResumeForCloseLib();
            result = err;
        } else {
            NWC24LibState = state;
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
        NWC24LastError = result - 109000;
        break;
    default:
        break;
    }
    return result;
}

int NWC24CloseLib(void)
{
    int result;

    if (NWC24LibState != 1) {
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
    NWC24WorkArea = NULL;
    NWC24LibState = 0;
    return result;
}

int NWC24IsMsgLibOpened(void)
{
    return NWC24LibState == 1;
}

int NWC24IsMsgLibOpenedByTool(void)
{
    return NWC24LibState == 2;
}

int NWC24BlockOpenMsgLib(int block)
{
    int result = 0;
    BOOL enabled = OSDisableInterrupts();

    if (block != 0) {
        if (NWC24LibState == 0) {
            NWC24LibState = 3;
        } else if (NWC24LibState == 1) {
            result = -10;
        } else {
            result = -26;
        }
    } else {
        int unblock = NWC24LibState == 3;
        if (unblock) {
            NWC24LibState = 0;
        }
        if (!unblock) {
            result = -9;
        }
    }
    OSRestoreInterrupts(enabled);
    return result;
}
