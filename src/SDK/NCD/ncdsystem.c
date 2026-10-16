// PARKED: not linked (obj_files.mk still links asm/SDK/NCD/ncdsystem.s). 8 of 9 functions match with
// `tu_diff.py --sdk`; TODO(match) NCDGetCurrentIpConfig differs only in register allocation (the original
// puts ipConfig in r31, result r30, ConfigBuffer r29, count r28; ours reverses them). The statics and
// string literals here need the data splits (data_80445AA8, bss_805157A0, sdata_8063DEA8, sbss_8063FF48
// around 0x80445B08, 0x80579060, 0x8063DEA8, 0x806401F0) when this file gets linked.
#include "types.h"
#include "string.h"
#include "SDK/NCD/ncdsystem.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSMutex.h"
#include "SDK/OS/OSThread.h"
#include "SDK/IPC/ipcclt.h"
#include "SDK/NWC24/NWC24Schedule.h"

// Owned by ipcMain.c (still asm); forward-declare here so this TU compiles standalone.
extern void *IPCGetBufferLo(void);
extern void *IPCGetBufferHi(void);
extern void IPCSetBufferLo(void *lo);

const char *__NCDVersion = "<< RVL_SDK - NCD \trelease build: Mar  9 2007 15:08:17 (0x4199_60831) >>";

static OSMutex Mutex;
static u8 Buffer[0x20] ATTRIBUTE_ALIGN(32);
static IOSIoctlVector Vector[4] ATTRIBUTE_ALIGN(32);

static u32 ConfigFlags;
static u8 *ConfigBuffer;

static s32 ExecConfigCommand(const char *funcName, void *outBuf, s32 cmd);
static void LockRight(void);

s32 NCDSetNwc24Permission(BOOL permission)
{
    s32 result;

    if (OSGetCurrentThread() == NULL) {
        return -5;
    }

    LockRight();

    result = NWC24iLockSocket();
    if (result == 0) {
        result = ExecConfigCommand("NCDSetNwc24Permission", NULL, 3);
        if (result == 0) {
            ConfigBuffer[5] = (u8)permission;
            result = ExecConfigCommand("NCDSetNwc24Permission", NULL, 4);
        }
        NWC24iUnlockSocket();
    } else if (result == -22) {
        result = -4;
    } else if (result == -29) {
        result = -8;
    } else {
        result = -2;
    }

    OSUnlockMutex(&Mutex);
    return result;
}

s32 NCDGetCurrentIfConfig(void *ifConfig)
{
    s32 result = 0;

    if (ifConfig == NULL) {
        return -3;
    }

    LockRight();

    result = ExecConfigCommand("NCDGetCurrentIfConfig", NULL, 3);
    if (result == 0) {
        u8 *configBuffer = ConfigBuffer;
        u8 *buf = Buffer;
        s32 count = *(s32 *)(buf + 4);

        if (count < 0 || count >= 3) {
            result = -7;
        } else {
            u8 *entry = configBuffer + count * 0x91c;

            if (entry[8] & 1) {
                *(u8 *)ifConfig = 2;
                memcpy((u8 *)ifConfig + 2, entry + 0x7c8, 4);
            } else {
                *(u8 *)ifConfig = 1;
                memcpy((u8 *)ifConfig + 2, entry + 0x7c8, 0x15c);
            }
            ((u8 *)ifConfig)[1] = configBuffer[6];
            (void)buf;
        }
    }

    OSUnlockMutex(&Mutex);
    return result;
}

s32 NCDGetCurrentIpConfig(void *ipConfig)
{
    s32 result = 0;

    if (ipConfig == NULL) {
        return -3;
    }

    LockRight();

    result = ExecConfigCommand("NCDGetCurrentIpConfig", NULL, 3);
    if (result == 0) {
        s32 count = *(s32 *)(Buffer + 4);
        u8 *configBuffer = ConfigBuffer;

        if (count < 0 || count >= 3) {
            result = -7;
        } else {
            u8 *entry = configBuffer + count * 0x91c;

            memcpy((u8 *)ipConfig + 0x1c, entry + 0x20, 0xc);

            entry = configBuffer + count * 0x91c;
            if (entry[8] & 6) {
                *(s32 *)ipConfig = 1;
                memcpy((u8 *)ipConfig + 8, entry + 0xc, 0x14);
            } else {
                *(s32 *)ipConfig = 0;
                memcpy((u8 *)ipConfig + 8, entry + 0xc, 0x14);
            }

            entry = configBuffer + count * 0x91c;
            if (entry[8] & 0x10) {
                *(s32 *)((u8 *)ipConfig + 4) = 1;
                memcpy((u8 *)ipConfig + 0x28, entry + 0x2c, 0x79c);
            } else {
                *(s32 *)((u8 *)ipConfig + 4) = 0;
                memset((u8 *)ipConfig + 0x28, 0, 0x79c);
            }
        }
    }

    OSUnlockMutex(&Mutex);
    return result;
}

s32 NCDGetLinkStatus(void)
{
    s32 result;
    s32 fd;

    if (!OSGetCurrentThread()) {
        return -5;
    }

    LockRight();

    fd = IOS_Open("/dev/net/ncd/manage", 0);
    if (fd < 0) {
        if (fd == -6) {
            result = -8;
        } else {
            result = -2;
        }
    } else {
        Vector[0].base = Buffer;
        Vector[0].length = 0x20;

        if (IOS_Ioctlv(fd, 7, 0, 1, Vector) < 0) {
            result = -2;
        } else {
            result = *(s32 *)Buffer;
            if (result == 0) {
                result = ((s32 *)Buffer)[1];
                result = (result >= 0) ? result : -1;
            }
        }

        if (IOS_Close(fd) < 0) {
            result = -1;
        }
    }

    OSUnlockMutex(&Mutex);
    return result;
}

s32 NCDiGetWirelessMacAddress(void *macAddress)
{
    s32 result = 0;
    s32 fd;

    if (macAddress == NULL) {
        return -3;
    }

    if (!OSGetCurrentThread()) {
        return -5;
    }

    LockRight();

    fd = IOS_Open("/dev/net/ncd/manage", 0);
    if (fd < 0) {
        if (fd == -6) {
            result = -8;
        } else {
            result = -2;
        }
    } else {
        Vector[0].base = Buffer;
        Vector[0].length = 0x20;
        Vector[1].base = ConfigBuffer;
        Vector[1].length = 6;

        if (IOS_Ioctlv(fd, 8, 0, 2, Vector) < 0) {
            result = -2;
        } else {
            result = *(s32 *)Buffer;
            if (result == 0) {
                memcpy(macAddress, ConfigBuffer, 6);
            }
        }

        if (IOS_Close(fd) < 0) {
            result = -1;
        }
    }

    OSUnlockMutex(&Mutex);
    return result;
}

s32 NCDLockWirelessDriver(void)
{
    s32 result;
    s32 fd;

    if (!OSGetCurrentThread()) {
        return -5;
    }

    LockRight();

    fd = IOS_Open("/dev/net/ncd/manage", 0);
    if (fd < 0) {
        if (fd == -6) {
            result = -8;
        } else {
            result = -2;
        }
    } else {
        Vector[0].base = Buffer;
        Vector[0].length = 0x20;

        if (IOS_Ioctlv(fd, 1, 0, 1, Vector) < 0) {
            result = -2;
        } else {
            result = *(s32 *)Buffer;
            if (result == 0) {
                result = ((s32 *)Buffer)[1];
                result = (result > 0) ? result : -1;
            }
        }

        if (IOS_Close(fd) < 0) {
            result = -1;
        }
    }

    OSUnlockMutex(&Mutex);
    return result;
}

s32 NCDUnlockWirelessDriver(s32 count)
{
    s32 result;
    s32 fd;

    if (count <= 0) {
        return -3;
    }

    if (!OSGetCurrentThread()) {
        return -5;
    }

    LockRight();

    fd = IOS_Open("/dev/net/ncd/manage", 0);
    if (fd < 0) {
        if (fd == -6) {
            result = -8;
        } else {
            result = -2;
        }
    } else {
        Vector[0].base = ConfigBuffer;
        Vector[0].length = 4;
        Vector[1].base = Buffer;
        Vector[1].length = 0x20;
        *(s32 *)ConfigBuffer = count;

        if (IOS_Ioctlv(fd, 2, 1, 1, Vector) < 0) {
            result = -2;
        } else {
            result = *(s32 *)Buffer;
        }

        if (IOS_Close(fd) < 0) {
            result = -1;
        }
    }

    OSUnlockMutex(&Mutex);
    return result;
}

s32 NCDiGetEnabledConfigList(u32 *wired, u32 *wireless, u32 *wifi)
{
    s32 result;
    u32 mask0 = 0;
    u32 mask1 = 0;
    u32 mask2 = 0;
    u8 *configBuffer;
    s32 i;

    LockRight();

    result = ExecConfigCommand("NCDiGetEnabledConfigList", NULL, 3);
    if (result == 0) {
        configBuffer = ConfigBuffer;

        for (i = 0; i < 3; i++) {
            u8 *entry = configBuffer + i * 0x91c;
            if (entry[8] & 0x80) {
                if (entry[8] & 1) {
                    mask0 |= 1 << i;
                } else {
                    if (entry[0x7ca] != 1) {
                        mask1 |= 1 << i;
                    }
                    if (*(u8 *)(entry + 0x7ca) == 1) {
                        mask2 |= 1 << i;
                    }
                }
            }
        }
    }

    OSUnlockMutex(&Mutex);

    if (wired != NULL) {
        *wired = mask0;
    }
    if (wireless != NULL) {
        *wireless = mask1;
    }
    if (wifi != NULL) {
        *wifi = mask2;
    }

    return result;
}

static s32 ExecConfigCommand(const char *funcName, void *outBuf, s32 cmd)
{
#pragma unused(funcName)
    s32 result = 0;
    s32 fd;

    if (!OSGetCurrentThread()) {
        return -5;
    }

    LockRight();

    fd = IOS_Open("/dev/net/ncd/manage", 0);
    if (fd < 0) {
        if (fd == -6) {
            result = -8;
        } else {
            result = -2;
        }
    } else {
        Vector[0].base = ConfigBuffer;
        Vector[0].length = 0x1b5c;
        Vector[1].base = Buffer;
        Vector[1].length = 0x20;

        switch (cmd) {
        case 3:
        case 5:
            if (IOS_Ioctlv(fd, cmd, 0, 2, Vector) < 0) {
                result = -2;
            } else {
                result = *(s32 *)Buffer;
                if (result == 0 && outBuf != NULL) {
                    memcpy(outBuf, ConfigBuffer, 0x1b5c);
                }
            }
            break;
        case 4:
        case 6:
            if (outBuf != NULL) {
                memcpy(ConfigBuffer, outBuf, 0x1b5c);
            }
            result = IOS_Ioctlv(fd, cmd, 1, 1, Vector);
            if (result < 0) {
                result = -2;
            } else {
                result = *(s32 *)Buffer;
            }
            break;
        }

        if (IOS_Close(fd) < 0) {
            result = -1;
        }
    }

    OSUnlockMutex(&Mutex);
    return result;
}

static void LockRight(void)
{
    BOOL enabled = OSDisableInterrupts();

    if (!(ConfigFlags & 1)) {
        u32 lo;
        u32 hi;

        OSRegisterVersion(__NCDVersion);
        OSInitMutex(&Mutex);

        lo = ((u32)IPCGetBufferLo() + 0x1f) & ~0x1f;
        hi = (u32)IPCGetBufferHi();
        if (hi - lo < 0x1b60) {
            OSPanic("ncdsystem.c", 0x5a8, "Could not reserve heap for NCD library from IPC arena");
        }

        IPCSetBufferLo((void *)(lo + 0x1b60));
        ConfigBuffer = (u8 *)lo;
        memset(ConfigBuffer, 0, 0x1b60);
        memset(Buffer, 0, 0x20);
        memset(Vector, 0, 0x20);

        ConfigFlags |= 1;
    }

    OSRestoreInterrupts(enabled);
    OSLockMutex(&Mutex);
}
