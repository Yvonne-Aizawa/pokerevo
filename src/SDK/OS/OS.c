// NOT LINKED YET: obj_files.mk still builds asm/SDK/OS/OS.s. 19 of 20 functions match (tu_diff.py);
// OSInit is 2 instructions short: the original loads BootInfo and BootInfo->arenaLo again for the
// test after the MEM1 arena ternary, where this C reuses the first load. Tried: separate ifs, nested
// if, ternary forms, an inline helper, a block-scoped variable, BootInfo global, Dolphin's
// OSSetArenaLo sequence. The data splits (.data 0x804265E0, .sdata 0x8063DA40, .sbss 0x8063FA28,
// .bss __OSRebootParams/DriveInfo) are not done yet either.

#include "types.h"
#include "string.h"
#include "SDK/OS/OS.h"
#include "SDK/DB/db.h"
#include "SDK/OS/OSPlayRecord.h"
#include "SDK/OS/OSStateTM.h"
#include "SDK/SI/SIBios.h"
#include "SDK/OS/OSAlarm.h"
#include "SDK/OS/OSArena.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSMemory.h"
#include "SDK/OS/OSReset.h"
#include "SDK/OS/OSThread.h"
#include "SDK/base/PPCArch.h"

#define __OS_EXCEPTION_MAX 15

#define OS_DBINTERFACE_ADDR     0x00000040
#define OS_DBJUMPPOINT_ADDR     0x00000060
#define OS_EXCEPTIONTABLE_ADDR  0x00003000

#define OS_CONSOLE_MASK      0xF0000000
#define OS_CONSOLE_RETAIL    0x00000000
#define OS_CONSOLE_DEVELOP   0x10000000
#define OS_CONSOLE_TDEV      0x20000000

#define OS_BI2_ADDR          (*(OSBI2 **)0x800000F4)
#define OS_DEBUG_FLAG        (*(u8 *)0x800030E8)
#define OS_PAD_SPEC          (*(u8 *)0x800030E9)
#define __OSDeviceCode       (*(vu16 *)0x800030E6)
#define OS_MEM1_ARENA_LO     (*(void **)0x8000310C)
#define OS_MEM1_ARENA_HI     (*(void **)0x80003110)
#define OS_MEM2_ARENA_LO     (*(void **)0x80003124)
#define OS_MEM2_ARENA_HI     (*(void **)0x80003128)
#define OS_HOLLYWOOD_REV     (*(u32 *)0x80003138)
#define OS_BOOT_PROGRAM_TYPE (*(u8 *)0x8000315C)
#define OS_APPLOADER_TYPE    (*(u8 *)0x8000315D)
#define OS_GAME_NAME         ((const char *)0x80003180)
#define OS_APP_TYPE          (*(u8 *)0x80003184)
#define OS_IOS_VERSION       (*(u32 *)0xC0003140)
#define OS_IOS_BUILD_DATE    (*(u32 *)0xC0003144)

#define OSRoundUp32B(x) (((u32)(x) + 31) & ~31)
#define __DIRegs ((vu32 *)0xCD006000)

typedef struct OSBI2 {
    u8 unk0[0xC];
    u32 debugFlag;  // 0xC
    u8 unk10[0x14];
    u32 padSpec;    // 0x24
} OSBI2;

typedef struct DVDDriveInfo {
    u16 revisionLevel;
    u16 deviceCode;
    u32 releaseDate;
    u8 padding[24];
} DVDDriveInfo;

typedef struct DVDCommandBlock DVDCommandBlock;
typedef void (*DVDCBCallback)(s32 result, DVDCommandBlock *block);

struct DVDCommandBlock {
    DVDCommandBlock *next;
    DVDCommandBlock *prev;
    u32 command;
    s32 state;  // 0xC
    u8 unk10[0x20];
};

// Linker-generated
extern u8 __ArenaLo[];
extern u8 __ArenaHi[];
extern u8 _stack_addr[];

// Entry points inside the asm functions below
void __OSEVStart(void);
void __DBVECTOR(void);
void __OSEVSetNumber(void);
void __OSEVEnd(void);
void __OSDBINTSTART(void);
void __OSDBINTEND(void);
void __OSDBJUMPSTART(void);
void __OSDBJUMPEND(void);

// Owned by files that are still asm
extern u32 __DVDLongFileNameFlag;
extern u32 __PADSpec;
extern BOOL lbl_8063FA90;  // OSExec.c's

void __OSGetExecParams(OSExecParams *params);
void __OSInitIPCBuffer(void);
void __OSInitSystemCall(void);
void __OSModuleInit(void);
void EXIInit(void);
void __OSInitSram(void);
void __OSInitAudioSystem(void);
void EnableMetroTRKInterrupts(void);
void IPCCltInit(void);
void SCInit(void);
u32 SCCheckStatus(void);
void __OSInitNet(void);
void DVDInit(void);
BOOL DVDInquiryAsync(DVDCommandBlock *block, DVDDriveInfo *info, DVDCBCallback callback);

static void OSExceptionInit(void);
static asm void OSExceptionVector(void);

const char *__OSVersion = "<< RVL_SDK - OS \trelease build: Apr 24 2007 11:50:47 (0x4199_60831) >>";

OSExecParams __OSRebootParams;
static DVDDriveInfo DriveInfo;
static DVDCommandBlock DriveInfoCmdBlock;

BOOL __OSInIPL;
BOOL __OSInNandBoot;
BOOL __OSIsDiag;
static BOOL AreWeInitialized;
static __OSExceptionHandler *OSExceptionTable;
static f32 ZeroPS[2];
static f64 ZeroF;
static char GameNameBuffer[5];
static u32 BI2DebugFlagHolder;
static u32 *BI2DebugFlag;
static OSBootInfo *BootInfo;
OSTime __OSStartTime;

asm void __OSFPRInit(void)
{
    nofralloc

    mfmsr r3
    ori r3, r3, 0x2000
    mtmsr r3

    mfspr r3, 920
    rlwinm. r3, r3, 3, 31, 31
    beq _regular

    lis r3, ZeroPS@ha
    addi r3, r3, ZeroPS@l
    psq_l f0, 0(r3), 0, 0
    ps_mr f1, f0
    ps_mr f2, f0
    ps_mr f3, f0
    ps_mr f4, f0
    ps_mr f5, f0
    ps_mr f6, f0
    ps_mr f7, f0
    ps_mr f8, f0
    ps_mr f9, f0
    ps_mr f10, f0
    ps_mr f11, f0
    ps_mr f12, f0
    ps_mr f13, f0
    ps_mr f14, f0
    ps_mr f15, f0
    ps_mr f16, f0
    ps_mr f17, f0
    ps_mr f18, f0
    ps_mr f19, f0
    ps_mr f20, f0
    ps_mr f21, f0
    ps_mr f22, f0
    ps_mr f23, f0
    ps_mr f24, f0
    ps_mr f25, f0
    ps_mr f26, f0
    ps_mr f27, f0
    ps_mr f28, f0
    ps_mr f29, f0
    ps_mr f30, f0
    ps_mr f31, f0

_regular:
    lfd f0, ZeroF
    fmr f1, f0
    fmr f2, f0
    fmr f3, f0
    fmr f4, f0
    fmr f5, f0
    fmr f6, f0
    fmr f7, f0
    fmr f8, f0
    fmr f9, f0
    fmr f10, f0
    fmr f11, f0
    fmr f12, f0
    fmr f13, f0
    fmr f14, f0
    fmr f15, f0
    fmr f16, f0
    fmr f17, f0
    fmr f18, f0
    fmr f19, f0
    fmr f20, f0
    fmr f21, f0
    fmr f22, f0
    fmr f23, f0
    fmr f24, f0
    fmr f25, f0
    fmr f26, f0
    fmr f27, f0
    fmr f28, f0
    fmr f29, f0
    fmr f30, f0
    fmr f31, f0
    mtfsf 0xff, f0
    blr
}

void __OSGetIOSRev(OSIOSRev *rev)
{
    u32 ver;
    u32 date;

    ver = OS_IOS_VERSION;
    date = OS_IOS_BUILD_DATE;
    rev->idHi = (u8)(ver >> 24);
    rev->idLo = (u8)(ver >> 16);
    rev->verMajor = (u8)(ver >> 8);
    rev->verMinor = (u8)ver;
    rev->buildMon = (u8)(((date >> 20) & 0xF) * 10 + ((date >> 16) & 0xF));
    rev->buildDay = (u8)(((date >> 12) & 0xF) * 10 + ((date >> 8) & 0xF));
    rev->buildYear = (u16)(((date >> 4) & 0xF) * 10 + (date & 0xF) + 2000);
}

u32 OSGetConsoleType(void)
{
    u32 hwRev;
    u32 mem2;

    if (BootInfo == NULL || BootInfo->consoleType == 0) {
        return 0x10000002;
    }

    hwRev = OS_HOLLYWOOD_REV;
    if (__OSDeviceCode & 0x8000) {
        switch (__OSDeviceCode & ~0x8000) {
        case 2:
        case 3:
        case 0x203:
            switch (hwRev) {
            case 0:
                return 0x10;
            case 1:
                return 0x11;
            case 2:
                return 0x12;
            case 0x10:
                return 0x20;
            case 0x11:
                return 0x21;
            default:
                if (hwRev > 0x11) {
                    return 0x21;
                }
                break;
            }
        case 0x201:
        case 0x202:
            switch (hwRev) {
            case 0:
                return 0x10000010;
            case 1:
                return 0x10000011;
            case 2:
                return 0x10000012;
            case 0x10:
                return 0x10000020;
            case 0x11:
                return 0x10000021;
            default:
                if (hwRev > 0x11) {
                    return 0x10000021;
                }
                break;
            }
        }
    }

    mem2 = OSGetPhysicalMem2Size();
    switch (hwRev) {
    case 0:
        return mem2 == 0x04000000 ? 0x10u : 0x10000010u;
    case 1:
        return mem2 == 0x04000000 ? 0x11u : 0x10000011u;
    case 2:
        return mem2 == 0x04000000 ? 0x12u : 0x10000012u;
    case 0x10:
        return mem2 == 0x04000000 ? 0x20u : 0x10000020u;
    case 0x11:
        return mem2 == 0x04000000 ? 0x21u : 0x10000021u;
    default:
        if (hwRev > 0x11) {
            return mem2 == 0x04000000 ? 0x21u : 0x10000021u;
        }
        break;
    }

    return BootInfo->consoleType;
}

static inline void ClearRange(void *start, u32 size)
{
    void *flushStart = size > 0x40000 ? (u8 *)start + size - 0x40000 : start;

    DCZeroRange(start, size);
    DCFlushRange(flushStart, 0x40000);
}

static void ClearArena(void)
{
    if ((OSGetResetCode() >> 31) == 0) {
        ClearRange(OSGetArenaLo(), (u32)OSGetArenaHi() - (u32)OSGetArenaLo());
        return;
    }

    if (__OSRebootParams.regionStart == NULL || ((u32)__OSRebootParams.regionStart & 0x30000000)) {
        ClearRange(OSGetArenaLo(), (u32)OSGetArenaHi() - (u32)OSGetArenaLo());
        return;
    }

    if ((u32)OSGetArenaLo() >= (u32)__OSRebootParams.regionStart) {
        return;
    }

    if ((u32)OSGetArenaHi() <= (u32)__OSRebootParams.regionStart) {
        ClearRange(OSGetArenaLo(), (u32)OSGetArenaHi() - (u32)OSGetArenaLo());
        return;
    }

    ClearRange(OSGetArenaLo(), (u32)__OSRebootParams.regionStart - (u32)OSGetArenaLo());
    if ((u32)OSGetArenaHi() > (u32)__OSRebootParams.regionEnd) {
        ClearRange(__OSRebootParams.regionEnd, (u32)OSGetArenaHi() - (u32)__OSRebootParams.regionEnd);
    }
}

static void ClearMEM2Arena(void)
{
    if ((OSGetResetCode() >> 31) == 0) {
        ClearRange(OSGetMEM2ArenaLo(), (u32)OSGetMEM2ArenaHi() - (u32)OSGetMEM2ArenaLo());
        return;
    }

    if (__OSRebootParams.regionStart == NULL || ((u32)__OSRebootParams.regionStart & 0x30000000) != 0x10000000) {
        ClearRange(OSGetMEM2ArenaLo(), (u32)OSGetMEM2ArenaHi() - (u32)OSGetMEM2ArenaLo());
        return;
    }

    if ((u32)OSGetMEM2ArenaLo() >= (u32)__OSRebootParams.regionStart) {
        return;
    }

    if ((u32)OSGetMEM2ArenaHi() <= (u32)__OSRebootParams.regionStart) {
        ClearRange(OSGetMEM2ArenaLo(), (u32)OSGetMEM2ArenaHi() - (u32)OSGetMEM2ArenaLo());
        return;
    }

    ClearRange(OSGetMEM2ArenaLo(), (u32)__OSRebootParams.regionStart - (u32)OSGetMEM2ArenaLo());
    if ((u32)OSGetMEM2ArenaHi() > (u32)__OSRebootParams.regionEnd) {
        ClearRange(__OSRebootParams.regionEnd, (u32)OSGetMEM2ArenaHi() - (u32)__OSRebootParams.regionEnd);
    }
}

static void InquiryCallback(s32 result, DVDCommandBlock *block)
{
#pragma unused(result)
    switch (block->state) {
    case 0:
        __OSDeviceCode = (u16)(0x8000 | DriveInfo.deviceCode);
        break;
    default:
        __OSDeviceCode = 1;
        break;
    }
}

static void ReportOSInfo(void)
{
    u32 consoleType;
    OSIOSRev rev;

    OSReport("\nRevolution OS\n");
    OSReport("Kernel built : %s %s\n", "Apr 24 2007", "11:50:47");
    OSReport("Console Type : ");

    consoleType = OSGetConsoleType();
    switch (consoleType & OS_CONSOLE_MASK) {
    case OS_CONSOLE_RETAIL:
        switch (consoleType) {
        case 0x11:
            OSReport("Pre-production board 1\n");
            break;
        case 0x12:
            OSReport("Pre-production board 2-1\n");
            break;
        case 0x20:
            OSReport("Pre-production board 2-2\n");
            break;
        default:
            OSReport("Retail %d\n", consoleType);
            break;
        }
        break;
    case OS_CONSOLE_DEVELOP:
        switch (consoleType) {
        case 0x10000021:
            OSReport("NDEV 2.1\n");
            break;
        case 0x10000020:
            OSReport("NDEV 2.0\n");
            break;
        case 0x10000012:
            OSReport("NDEV 1.2\n");
            break;
        case 0x10000011:
            OSReport("NDEV 1.1\n");
            break;
        case 0x10000010:
            OSReport("NDEV 1.0\n");
            break;
        case 0x10000008:
            OSReport("Revolution Emulator\n");
            break;
        default:
            OSReport("Emulation platform (%08x)\n", consoleType);
            break;
        }
        break;
    case OS_CONSOLE_TDEV:
        OSReport("TDEV-based emulation HW%d\n", (consoleType & ~OS_CONSOLE_MASK) - 3);
        break;
    default:
        OSReport("%08x\n", consoleType);
        break;
    }

    __OSGetIOSRev(&rev);
    OSReport("Firmware     : %d.%d.%d ", rev.idLo, rev.verMajor, rev.verMinor);
    OSReport("(%d/%d/%d)\n", rev.buildMon, rev.buildDay, rev.buildYear);

    OSReport("Memory %d MB\n", (OSGetConsoleSimulatedMem1Size() + OSGetConsoleSimulatedMem2Size()) >> 20);
    OSReport("MEM1 Arena : 0x%x - 0x%x\n", OSGetMEM1ArenaLo(), OSGetMEM1ArenaHi());
    OSReport("MEM2 Arena : 0x%x - 0x%x\n", OSGetMEM2ArenaLo(), OSGetMEM2ArenaHi());
}

void OSInit(void)
{
    OSBI2 *bi2;
    void *arenaLo;
    void *arenaHi;

    if (AreWeInitialized) {
        return;
    }
    AreWeInitialized = TRUE;

    __OSStartTime = __OSGetSystemTime();
    OSDisableInterrupts();
    __OSGetExecParams(&__OSRebootParams);

    PPCMtmmcr0(0);
    PPCMtmmcr1(0);
    PPCMtpmc1(0);
    PPCMtpmc2(0);
    PPCMtpmc3(0);
    PPCMtpmc4(0);
    PPCMthid4(0x83900000);
    PPCDisableSpeculation();
    PPCSetFpNonIEEEMode();

    BootInfo = (OSBootInfo *)0x80000000;
    BI2DebugFlag = NULL;
    __DVDLongFileNameFlag = 0;

    bi2 = OS_BI2_ADDR;
    if (bi2) {
        BI2DebugFlag = &bi2->debugFlag;
        __PADSpec = bi2->padSpec;
        OS_DEBUG_FLAG = (u8)*BI2DebugFlag;
        OS_PAD_SPEC = (u8)__PADSpec;
    } else if (BootInfo->arenaHi) {
        BI2DebugFlagHolder = OS_DEBUG_FLAG;
        BI2DebugFlag = &BI2DebugFlagHolder;
        __PADSpec = OS_PAD_SPEC;
    }

    __DVDLongFileNameFlag = 1;

    arenaLo = OS_MEM1_ARENA_LO;
    if (arenaLo == NULL) {
        arenaLo = __ArenaLo;
        if (!((u32)arenaLo & 0x30000000)) {
            arenaLo = BootInfo->arenaLo == NULL ? __ArenaLo : BootInfo->arenaLo;
            if (BootInfo->arenaLo == NULL && BI2DebugFlag && *BI2DebugFlag < 2) {
                arenaLo = (void *)(((u32)_stack_addr + 31) & ~31);
            }
        } else {
            arenaLo = (void *)0x80004000;
        }
    }
    OSSetMEM1ArenaLo(arenaLo);

    arenaHi = OS_MEM1_ARENA_HI;
    if (arenaHi == NULL) {
        arenaHi = BootInfo->arenaHi == NULL ? __ArenaHi : BootInfo->arenaHi;
    }
    OSSetMEM1ArenaHi(arenaHi);

    arenaLo = OS_MEM2_ARENA_LO;
    if (arenaLo != NULL) {
        if (((u32)__ArenaLo & 0x30000000) == 0x10000000) {
            arenaLo = __ArenaLo;
            if (BI2DebugFlag && *BI2DebugFlag < 2) {
                arenaLo = (void *)(((u32)_stack_addr + 31) & ~31);
            }
        } else if ((u32)arenaLo >= 0x90000000 && (u32)arenaLo < 0x90000800) {
            arenaLo = (void *)0x90000800;
        }
        OSSetMEM2ArenaLo(arenaLo);
    }

    if (OS_MEM2_ARENA_HI != NULL) {
        OSSetMEM2ArenaHi(OS_MEM2_ARENA_HI);
    }

    __OSInitIPCBuffer();
    OSExceptionInit();
    __OSInitSystemCall();
    __OSInitAlarm();
    __OSModuleInit();
    __OSInterruptInit();
    __OSContextInit();
    __OSCacheInit();
    EXIInit();
    SIInit();
    __OSInitSram();
    __OSThreadInit();
    __OSInitAudioSystem();
    PPCMthid2(PPCMfhid2() & ~0x40000000);
    if (!__OSInIPL) {
        __OSInitMemoryProtection();
    }

    ReportOSInfo();
    OSRegisterVersion(__OSVersion);

    if (BI2DebugFlag && *BI2DebugFlag >= 2) {
        EnableMetroTRKInterrupts();
    }

    ClearArena();
    ClearMEM2Arena();
    OSEnableInterrupts();
    IPCCltInit();

    if (!__OSInNandBoot && !lbl_8063FA90) {
        __OSInitSTM();
        SCInit();
        while (SCCheckStatus() == 1) {
        }
        __OSInitNet();
    }

    if (!__OSInIPL) {
        switch (OS_BOOT_PROGRAM_TYPE) {
        case OS_APP_TYPE_DVD:
            break;
        case OS_APP_TYPE_CHANNEL:
            OSReport("OS ERROR: boot program is not for RVL target. Please use correct boot program.\n");
            OSPanic("OS.c", 1112, "Failed to run app");
            break;
        }

        switch (OS_APPLOADER_TYPE) {
        case OS_APP_TYPE_DVD:
            break;
        case OS_APP_TYPE_CHANNEL:
            OSReport("OS ERROR: apploader[D].img is not for RVL target. Please use correct apploader[D].img.\n");
            OSPanic("OS.c", 1130, "Failed to run app");
            break;
        }

        DVDInit();
        if (__OSIsDiag) {
            __OSDeviceCode = 0x9000;
        } else if (__OSDeviceCode == 0) {
            DCInvalidateRange(&DriveInfo, sizeof(DVDDriveInfo));
            DVDInquiryAsync(&DriveInfoCmdBlock, &DriveInfo, InquiryCallback);
        }
    }

    if (!__OSInIPL && !__OSInNandBoot && !lbl_8063FA90) {
        __OSStartPlayRecord();
    }
}

static u32 __OSExceptionLocations[] = {
    0x00000100, 0x00000200, 0x00000300, 0x00000400, 0x00000500, 0x00000600, 0x00000700, 0x00000800,
    0x00000900, 0x00000C00, 0x00000D00, 0x00000F00, 0x00001300, 0x00001400, 0x00001700,
};

static void OSExceptionInit(void)
{
    __OSException exception;
    void *destAddr;
    u32 *opCodeAddr;
    u32 oldOpCode;
    u8 *handlerStart;
    u32 handlerSize;

    opCodeAddr = (u32 *)__OSEVSetNumber;
    oldOpCode = *opCodeAddr;
    handlerStart = (u8 *)__OSEVStart;
    handlerSize = (u32)((u8 *)__OSEVEnd - (u8 *)__OSEVStart);

    destAddr = (void *)(0x80000000 + OS_DBJUMPPOINT_ADDR);
    if (*(u32 *)destAddr == 0) {
        DBPrintf("Installing OSDBIntegrator\n");
        memcpy(destAddr, (void *)__OSDBINTSTART, (u32)__OSDBINTEND - (u32)__OSDBINTSTART);
        DCFlushRangeNoSync(destAddr, (u32)__OSDBINTEND - (u32)__OSDBINTSTART);
        __sync();
        ICInvalidateRange(destAddr, (u32)__OSDBINTEND - (u32)__OSDBINTSTART);
    }

    for (exception = 0; exception < __OS_EXCEPTION_MAX; exception++) {
        if (BI2DebugFlag && *BI2DebugFlag >= 2 && __DBIsExceptionMarked(exception)) {
            DBPrintf(">>> OSINIT: exception %d commandeered by TRK\n", exception);
            continue;
        }

        *opCodeAddr = oldOpCode | exception;

        if (__DBIsExceptionMarked(exception)) {
            DBPrintf(">>> OSINIT: exception %d vectored to debugger\n", exception);
            memcpy((void *)__DBVECTOR, (void *)__OSDBJUMPSTART, (u32)__OSDBJUMPEND - (u32)__OSDBJUMPSTART);
        } else {
            u32 *ops = (u32 *)__DBVECTOR;
            int cb;

            for (cb = 0; cb < (u32)__OSDBJUMPEND - (u32)__OSDBJUMPSTART; cb += sizeof(u32)) {
                *ops++ = 0x60000000;
            }
        }

        destAddr = (void *)(0x80000000 + __OSExceptionLocations[exception]);
        memcpy(destAddr, handlerStart, handlerSize);
        DCFlushRangeNoSync(destAddr, handlerSize);
        __sync();
        ICInvalidateRange(destAddr, handlerSize);
    }

    OSExceptionTable = (__OSExceptionHandler *)(0x80000000 + OS_EXCEPTIONTABLE_ADDR);
    for (exception = 0; exception < __OS_EXCEPTION_MAX; exception++) {
        __OSSetExceptionHandler(exception, OSDefaultExceptionHandler);
    }

    *opCodeAddr = oldOpCode;
    DBPrintf("Exceptions initialized...\n");
}

static asm void __OSDBIntegrator(void)
{
    nofralloc
entry __OSDBINTSTART
    li r5, OS_DBINTERFACE_ADDR
    mflr r3
    stw r3, 0xc(r5)
    lwz r3, 0x8(r5)
    oris r3, r3, 0x8000
    mtlr r3
    li r3, 0x30
    mtmsr r3
    blr
entry __OSDBINTEND
}

static asm void __OSDBJump(void)
{
    nofralloc
entry __OSDBJUMPSTART
    opword 0x48000061
entry __OSDBJUMPEND
}

__OSExceptionHandler __OSSetExceptionHandler(__OSException exception, __OSExceptionHandler handler)
{
    __OSExceptionHandler oldHandler;

    oldHandler = OSExceptionTable[exception];
    OSExceptionTable[exception] = handler;
    return oldHandler;
}

__OSExceptionHandler __OSGetExceptionHandler(__OSException exception)
{
    return OSExceptionTable[exception];
}

static asm void OSExceptionVector(void)
{
    nofralloc
entry __OSEVStart
    mtspr 272, r4
    lwz r4, 0xC0(r0)
    stw r3, 0xc(r4)
    mfspr r3, 272
    stw r3, 0x10(r4)
    stw r5, 0x14(r4)
    lhz r3, 0x1a2(r4)
    ori r3, r3, 2
    sth r3, 0x1a2(r4)
    mfcr r3
    stw r3, 0x80(r4)
    mflr r3
    stw r3, 0x84(r4)
    mfctr r3
    stw r3, 0x88(r4)
    mfxer r3
    stw r3, 0x8c(r4)
    mfspr r3, 26
    stw r3, 0x198(r4)
    mfspr r3, 27
    stw r3, 0x19c(r4)
    mr r5, r3

entry __DBVECTOR
    nop

    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3

entry __OSEVSetNumber
    li r3, 0
    lwz r4, 0xD4(r0)
    rlwinm. r5, r5, 0, 30, 30
    bne _recoverable
    lis r5, OSDefaultExceptionHandler@ha
    addi r5, r5, OSDefaultExceptionHandler@l
    mtspr 26, r5
    rfi

_recoverable:
    rlwinm r5, r3, 2, 22, 29
    lwz r5, 0x3000(r5)
    mtspr 26, r5
    rfi

entry __OSEVEnd
    nop
}

asm void OSDefaultExceptionHandler(register __OSException exception, register OSContext *context)
{
    nofralloc
    stw r0, 0x0(r4)
    stw r1, 0x4(r4)
    stw r2, 0x8(r4)
    stmw r6, 0x18(r4)
    mfspr r0, 913
    stw r0, 0x1a8(r4)
    mfspr r0, 914
    stw r0, 0x1ac(r4)
    mfspr r0, 915
    stw r0, 0x1b0(r4)
    mfspr r0, 916
    stw r0, 0x1b4(r4)
    mfspr r0, 917
    stw r0, 0x1b8(r4)
    mfspr r0, 918
    stw r0, 0x1bc(r4)
    mfspr r0, 919
    stw r0, 0x1c0(r4)
    mfdsisr r5
    mfdar r6
    stwu r1, -8(r1)
    b __OSUnhandledException
}

void __OSPSInit(void)
{
    PPCMthid2(PPCMfhid2() | 0xA0000000);
    ICFlashInvalidate();
    __sync();
    asm {
        li r3, 0
        mtspr 912, r3
        mtspr 913, r3
        mtspr 914, r3
        mtspr 915, r3
        mtspr 916, r3
        mtspr 917, r3
        mtspr 918, r3
        mtspr 919, r3
    }
}

u32 __OSGetDIConfig(void)
{
    return (u8)__DIRegs[9];
}

void OSRegisterVersion(const char *id)
{
    OSReport("%s\n", id);
}

static const char *AppGameNameForSysMenu = "HAEA";

const char *OSGetAppGamename(void)
{
    const char *appNameSrc = OS_GAME_NAME;

    if (__OSInIPL) {
        appNameSrc = AppGameNameForSysMenu;
    }

    GameNameBuffer[0] = appNameSrc[0];
    GameNameBuffer[1] = appNameSrc[1];
    GameNameBuffer[2] = appNameSrc[2];
    GameNameBuffer[3] = appNameSrc[3];
    GameNameBuffer[4] = '\0';
    return GameNameBuffer;
}

u8 OSGetAppType(void)
{
    if (__OSInIPL) {
        return 0x40;
    }
    return OS_APP_TYPE;
}
