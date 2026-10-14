// NOT LINKED YET: obj_files.mk still builds asm/SDK/OS/OSExec.s. Check with
//   tools/decomp/tu_diff.py src/SDK/OS/OSExec.c --flags="-inline noauto"
// This file only lines up without automatic inlining (unlike the rest of src/SDK/OS/), so linking it needs
// a Makefile rule giving OSExec.o -inline noauto. With that, 8 of 12 functions match. Left:
// - __OSLaunchMenu, __OSReLaunchFirmware: the original stores a 4-byte array {FF,FF,FF,00} (copied byte by
//   byte from .sdata2) at sp+8 next to fd (sp+0xC) and count (sp+0x10). A plain unused array is optimized
//   away; the ESHandle struct here keeps it but copies it as one word from .data. Shape not found yet.
// - func_8026C328 and __OSBootDolSimple: a few instructions off, not yet examined.
// - Data splits (.data 0x80427198, .sdata 0x8063DA80, .sdata2 0x80642618, .sbss 0x8063FA88, .bss 0x80503D40)
//   not done.

#include "types.h"
#include "string.h"
#include "stdio.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSArena.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSReboot.h"
#include "SDK/OS/OSReset.h"
#include "SDK/OS/OSExec.h"
#include "SDK/DVD/dvd.h"
#include "SDK/DVD/dvd_broadway.h"
#include "SDK/IPC/ipcclt.h"

#define OS_EXEC_PARAMS_ADDR (*(OSExecParams **)0x800030F0)
#define OS_BI2_FST_OFFSET   (*(s32 *)0x800030F4)
#define OS_BOOT_DOL_FLAG    (*(u8 *)0x800030E2)
#define OS_REBOOT_START     (*(void **)0x812FDFF0)
#define OS_REBOOT_END       (*(void **)0x812FDFEC)

#define __PIRegs ((vu32 *)0xCC003000)

#define APPLOADER_BASE ((void *)0x81200000)
#define REBOOT_BASE    ((void *)0x81330000)

#define ES_ERR_INVALID -1017

#define OSRoundUp32B(x) (((u32)(x) + 31) & ~31)

typedef struct ESTicketView
{
    u8 data[0xD8];
} ESTicketView;

typedef struct AppLoaderHeader
{
    char date[16];  // 0x0
    void *entry;    // 0x10
    u32 size;       // 0x14
    u32 rebootSize; // 0x18
    u8 unk1C[4];    // 0x1C
} AppLoaderHeader;

typedef struct PartitionTable
{
    u32 numPartitions;  // 0x0
    u32 offset;         // 0x4
    u8 unk8[0x18];
} PartitionTable;

typedef struct PartitionEntry
{
    u32 offset;  // 0x0
    u32 type;    // 0x4
} PartitionEntry;

// The ES device handle with what precedes it on the stack; the use of the leading bytes isn't known.
typedef struct ESHandle
{
    u8 unk0[4];  // 0x0
    s32 fd;      // 0x4
} ESHandle;

typedef void (*AppLoaderReport)(const char *msg, ...);
typedef void (*AppLoaderInit)(AppLoaderReport report);
typedef BOOL (*AppLoaderMain)(void **addr, s32 *length, s32 *offset);
typedef void *(*AppLoaderClose)(void);
typedef void (*AppLoaderEntry)(AppLoaderInit *init, AppLoaderMain *main, AppLoaderClose *close);

// Owned by files that are still asm
extern u32 __DVDLayoutFormat;
void __OSHotReset(void);

static s32 _ES_GetTicketViews(s32 *fd, u64 titleId, ESTicketView *views, u32 *count);
static s32 _ES_LaunchTitle(s32 *fd, u64 titleId, ESTicketView *view);

static ESTicketView TicketViews[224] ATTRIBUTE_ALIGN(32);
static PartitionTable PartitionTableBuf ATTRIBUTE_ALIGN(32);
static PartitionEntry PartitionInfoBuf[4] ATTRIBUTE_ALIGN(32);
static u8 TmdBuf[0x4A00] ATTRIBUTE_ALIGN(32);
static u8 DiskIDBuf[0x20] ATTRIBUTE_ALIGN(32);

static s32 ApploaderPosition;
static volatile u32 CallbackResult;
BOOL __OSInReboot;  // Its name is a guess: OSExec.c never reads it, OS.c does
static u8 *Tmd;
static PartitionEntry *BootPartition;
static PartitionEntry *PartitionInfo;
static PartitionTable *PartitionTablePtr;
static volatile BOOL Prepared;

static BOOL PackArgs(void *addr, s32 argc, char *argv[])
{
    s32 numArgs;
    char *bootInfo2;
    char *ptr;
    char **list;
    u32 i;

    bootInfo2 = (char *)addr;
    memset(bootInfo2, 0, 0x2000);

    if (argc == 0) {
        *(u32 *)&bootInfo2[8] = 0;
    } else {
        numArgs = argc;
        ptr = bootInfo2 + 0x2000;
        while (--argc >= 0) {
            ptr -= strlen(argv[argc]) + 1;
            strcpy(ptr, argv[argc]);
            argv[argc] = (char *)(ptr - bootInfo2);
        }

        ptr = bootInfo2 + ((ptr - bootInfo2) & ~3);
        ptr -= 4 * (numArgs + 1);
        list = (char **)ptr;
        for (i = 0; i < numArgs + 1; i++) {
            list[i] = argv[i];
        }
        ptr -= 4;
        *(s32 *)ptr = numArgs;
        *(u32 *)&bootInfo2[8] = (u32)(ptr - bootInfo2);
    }

    return TRUE;
}

static asm void Run(register void *entryPoint)
{
    fralloc
    bl ICFlashInvalidate
    sync
    isync
    mtctr entryPoint
    bctr
    frfree
    blr
}

static void Callback(s32 result, DVDCommandBlock *block)
{
#pragma unused(result, block)
    Prepared = TRUE;
}

void __OSGetExecParams(OSExecParams *params)
{
    if ((u32)OS_EXEC_PARAMS_ADDR >= 0x80000000) {
        memcpy(params, OS_EXEC_PARAMS_ADDR, sizeof(OSExecParams));
    } else {
        params->valid = FALSE;
    }
}

static void callback(u32 intType)
{
    CallbackResult = intType;
}

static inline void WaitForCallback(void)
{
    while (CallbackResult == 0) {
    }
    if (CallbackResult != 1) {
        OSReport("\nsecurity error(%d) has occurred", CallbackResult);
        __OSReturnToMenuForError();
    }
}

static inline void OpenBootPartition(void)
{
    u8 i;

    PartitionTablePtr = &PartitionTableBuf;
    CallbackResult = 0;
    DVDLowUnencryptedRead(PartitionTablePtr, sizeof(PartitionTable), 0x40000 >> 2, callback);
    WaitForCallback();

    PartitionInfo = PartitionInfoBuf;
    CallbackResult = 0;
    DVDLowUnencryptedRead(PartitionInfo, sizeof(PartitionInfoBuf), PartitionTablePtr->offset, callback);
    WaitForCallback();

    BootPartition = NULL;
    for (i = 0; i < PartitionTablePtr->numPartitions; i++, PartitionInfo++) {
        if (PartitionInfo->type == 0) {
            BootPartition = PartitionInfo;
        }
    }

    CallbackResult = 0;
    DVDLowOpenPartition(BootPartition->offset, NULL, 0, NULL, TmdBuf, callback);
    WaitForCallback();
}

void __OSReLaunchFirmware(void)
{
    ESHandle es = {{0xFF, 0xFF, 0xFF, 0x00}, -1};
    u32 count = 1;
    s32 rv;
    u64 titleId;

    CallbackResult = 0;
    DVDLowClosePartition(callback);
    WaitForCallback();

    OpenBootPartition();

    CallbackResult = 0;
    DVDLowClosePartition(callback);
    WaitForCallback();

    Tmd = TmdBuf;
    rv = 0;
    titleId = *(u64 *)(Tmd + 0x184);

    es.fd = IOS_Open("/dev/es", 0);
    if (es.fd < 0) {
        rv = es.fd;
    }
    if (rv != 0) {
        OSReport("\nsecurity error(%d) has occurred", rv);
        __OSHotReset();
    }

    rv = _ES_GetTicketViews(&es.fd, titleId, NULL, &count);
    if (count != 1 || rv != 0) {
        OSReport("\nsecurity error(%d) has occurred", rv);
        __OSHotReset();
    }

    rv = _ES_GetTicketViews(&es.fd, titleId, TicketViews, &count);
    if (rv != 0) {
        OSReport("\nsecurity error(%d) has occurred", rv);
        __OSHotReset();
    }

    rv = _ES_LaunchTitle(&es.fd, titleId, TicketViews);
    if (rv != 0) {
        OSReport("\nsecurity error(%d) has occurred", rv);
        __OSHotReset();
    }

    if (es.fd >= 0 && IOS_Close(es.fd) == 0) {
        es.fd = -1;
    }

    DVDLowInit();
    CallbackResult = 0;
    DVDLowReadDiskID(DiskIDBuf, callback);
    WaitForCallback();

    OpenBootPartition();
}

void __OSLaunchMenu(void)
{
    ESHandle es = {{0xFF, 0xFF, 0xFF, 0x00}, -1};
    u32 count = 1;
    s32 rv = 0;

    es.fd = IOS_Open("/dev/es", 0);
    if (es.fd < 0) {
        rv = es.fd;
    }
    if (rv != 0) {
        return;
    }

    rv = _ES_GetTicketViews(&es.fd, 0x0000000100000002ULL, NULL, &count);
    if (count != 1 || rv != 0) {
        return;
    }

    rv = _ES_GetTicketViews(&es.fd, 0x0000000100000002ULL, TicketViews, &count);
    if (rv != 0) {
        return;
    }

    rv = _ES_LaunchTitle(&es.fd, 0x0000000100000002ULL, TicketViews);
    if (rv != 0) {
        return;
    }

    while (TRUE) {
    }
}

static inline s32 _ES_GetTitleId(s32 *fd, u64 *titleId)
{
    IOSIoctlVector vector[1] ATTRIBUTE_ALIGN(32);
    u64 tid ATTRIBUTE_ALIGN(32);
    s32 rv;

    if (*fd < 0 || titleId == NULL) {
        return ES_ERR_INVALID;
    }

    vector[0].base = &tid;
    vector[0].length = sizeof(u64);
    rv = IOS_Ioctlv(*fd, 0x20, 0, 1, vector);
    if (rv == 0) {
        *titleId = tid;
    }
    return rv;
}

// The name of this function isn't known; it launches the running title again.
void func_8026C328(void)
{
    s32 fd ATTRIBUTE_ALIGN(32) = -1;
    u32 count = 1;
    s32 rv = 0;
    u64 titleId ATTRIBUTE_ALIGN(32);
    ESTicketView *views;

    fd = IOS_Open("/dev/es", 0);
    if (fd < 0) {
        rv = fd;
    }
    if (rv != 0) {
        return;
    }

    rv = _ES_GetTitleId(&fd, &titleId);
    if (rv != 0) {
        return;
    }

    rv = _ES_GetTicketViews(&fd, titleId, NULL, &count);
    if (rv != 0) {
        return;
    }

    views = OSAllocFromMEM1ArenaLo(count * sizeof(ESTicketView), 32);
    rv = _ES_GetTicketViews(&fd, titleId, views, &count);
    if (rv != 0) {
        return;
    }

    rv = _ES_LaunchTitle(&fd, titleId, views);
    if (rv != 0) {
        return;
    }

    while (TRUE) {
    }
}

static inline void ReadDisc(void *addr, u32 length, u32 offset)
{
    DVDCommandBlock block;

    DVDReadAbsAsyncPrio(&block, addr, (s32)length, (s32)offset, NULL, 0);
    while (DVDGetCommandBlockStatus(&block)) {
        if (DVDGetCommandBlockStatus(&block) > 2 || DVDGetCommandBlockStatus(&block) < 0) {
            __OSReturnToMenuForError();
        }
    }
}

static inline s32 GetApploaderPosition(void)
{
    if (ApploaderPosition != 0) {
        return ApploaderPosition;
    }

    if (OS_BI2_FST_OFFSET != 0) {
        u8 *bb2 = OSAllocFromMEM1ArenaLo(0x40, 32);

        ReadDisc(bb2, 0x40, OS_BI2_FST_OFFSET >> 2);
        ApploaderPosition = (OS_BI2_FST_OFFSET + *(s32 *)(bb2 + 0x38)) >> 2;
    } else {
        ApploaderPosition = 0x910;
    }
    return ApploaderPosition;
}

void __OSBootDolSimple(u32 doloffset, u32 restartCode, void *regionStart, void *regionEnd, BOOL argsUseDefault,
                       s32 argc, char **argv)
{
    OSExecParams *params;
    OSExecParams *newParams;
    AppLoaderHeader *header;
    AppLoaderInit appLoaderInit;
    AppLoaderMain appLoaderMain;
    AppLoaderClose appLoaderClose;
    void *addr;
    s32 length;
    s32 offset;
    void *entry;

    OSDisableInterrupts();

    params = OSAllocFromMEM1ArenaLo(sizeof(OSExecParams), 1);
    params->valid = TRUE;
    params->restartCode = restartCode;
    params->regionStart = regionStart;
    params->regionEnd = regionEnd;
    params->argsUseDefault = argsUseDefault;
    if (!argsUseDefault) {
        params->argsAddr = OSAllocFromMEM1ArenaLo(0x2000, 1);
        PackArgs(params->argsAddr, argc, argv);
    }

    DVDInit();
    DVDSetAutoInvalidation(TRUE);
    DVDResume();
    Prepared = FALSE;
    __DVDPrepareResetAsync(Callback);
    __OSMaskInterrupts(0xFFFFFFF0);
    __OSUnmaskInterrupts(0x10);
    OSEnableInterrupts();
    while (Prepared != TRUE) {
    }

    __OSReLaunchFirmware();

    header = OSAllocFromMEM1ArenaLo(sizeof(AppLoaderHeader), 32);
    ReadDisc(header, sizeof(AppLoaderHeader), GetApploaderPosition());
    ReadDisc(APPLOADER_BASE, OSRoundUp32B(header->size), GetApploaderPosition() + 8);
    ICInvalidateRange(APPLOADER_BASE, OSRoundUp32B(header->size));

    if (strncmp(header->date, "2004/02/01", 10) > 0) {
        if (doloffset == (u32)-1) {
            doloffset = GetApploaderPosition() + ((header->size + 0x20) >> 2);
        }
        params->bootDol = doloffset;

        ((AppLoaderEntry)header->entry)(&appLoaderInit, &appLoaderMain, &appLoaderClose);
        newParams = OSAllocFromMEM1ArenaLo(sizeof(OSExecParams), 1);
        memcpy(newParams, params, sizeof(OSExecParams));
        OS_EXEC_PARAMS_ADDR = newParams;
        appLoaderInit(OSReport);
        OSSetArenaLo(newParams);

        while (appLoaderMain(&addr, &length, &offset)) {
            ReadDisc(addr, length, offset >> __DVDLayoutFormat);
        }

        entry = appLoaderClose();
        newParams = OSAllocFromMEM1ArenaLo(sizeof(OSExecParams), 1);
        memcpy(newParams, params, sizeof(OSExecParams));
        OS_EXEC_PARAMS_ADDR = newParams;
        __PIRegs[9] = 7;
        OSDisableInterrupts();
        Run(entry);
    } else {
        OS_REBOOT_START = regionStart;
        OS_REBOOT_END = regionEnd;
        OS_BOOT_DOL_FLAG = TRUE;
        ReadDisc(REBOOT_BASE, OSRoundUp32B(header->rebootSize),
                 GetApploaderPosition() + ((header->size + 0x20) >> 2));
        ICInvalidateRange(REBOOT_BASE, OSRoundUp32B(header->rebootSize));
        OSDisableInterrupts();
        ICFlashInvalidate();
        Run(REBOOT_BASE);
    }
}

void __OSBootDol(u32 doloffset, u32 restartCode, const char **argv)
{
    char doloffInString[20];
    s32 argvlength;
    char **argvToPass;
    s32 i;
    void *saveStart;
    void *saveEnd;

    OSGetSaveRegion(&saveStart, &saveEnd);
    sprintf(doloffInString, "%d", doloffset);

    argvlength = 0;
    if (argv != NULL) {
        while (argv[argvlength] != NULL) {
            argvlength++;
        }
    }

    argvToPass = OSAllocFromMEM1ArenaLo((argvlength + 2) * sizeof(char *), 1);
    argvToPass[0] = doloffInString;
    for (i = 1; i < argvlength + 1; i++) {
        argvToPass[i] = (char *)argv[i - 1];
    }

    __OSBootDolSimple((u32)-1, restartCode, saveStart, saveEnd, FALSE, argvlength + 1, argvToPass);
}

static s32 _ES_GetTicketViews(s32 *fd, u64 titleId, ESTicketView *views, u32 *count)
{
    u8 ioBuf[0x120] ATTRIBUTE_ALIGN(32);
    IOSIoctlVector *vector = (IOSIoctlVector *)ioBuf;
    u64 *tid = (u64 *)(ioBuf + 0x20);
    u32 *cnt = (u32 *)(ioBuf + 0x40);
    s32 rv;

    if (*fd < 0 || count == NULL) {
        return ES_ERR_INVALID;
    }
    if ((u32)views & 31) {
        return ES_ERR_INVALID;
    }

    *tid = titleId;
    if (views == NULL) {
        vector[0].base = tid;
        vector[0].length = sizeof(u64);
        vector[1].base = cnt;
        vector[1].length = sizeof(u32);
        rv = IOS_Ioctlv(*fd, 0x12, 1, 1, vector);
        if (rv == 0) {
            *count = *cnt;
        }
        return rv;
    }

    if (*count == 0) {
        return ES_ERR_INVALID;
    }

    *cnt = *count;
    vector[0].base = tid;
    vector[0].length = sizeof(u64);
    vector[1].base = cnt;
    vector[1].length = sizeof(u32);
    vector[2].base = views;
    vector[2].length = *count * sizeof(ESTicketView);
    return IOS_Ioctlv(*fd, 0x13, 2, 1, vector);
}

static s32 _ES_LaunchTitle(s32 *fd, u64 titleId, ESTicketView *view)
{
    u8 ioBuf[0x120] ATTRIBUTE_ALIGN(32);
    IOSIoctlVector *vector = (IOSIoctlVector *)ioBuf;
    u64 *tid = (u64 *)(ioBuf + 0x20);

    if (*fd < 0) {
        return ES_ERR_INVALID;
    }
    if ((u32)view & 31) {
        return ES_ERR_INVALID;
    }

    *tid = titleId;
    vector[0].base = tid;
    vector[0].length = sizeof(u64);
    vector[1].base = view;
    vector[1].length = sizeof(ESTicketView);
    return IOS_IoctlvReboot(*fd, 8, 2, 0, vector);
}
