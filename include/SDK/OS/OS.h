#ifndef POKEREVO_OS_OS_H
#define POKEREVO_OS_OS_H

#include "SDK/OS/OSTime.h"
#include "SDK/OS/OSError.h"

#ifdef __cplusplus
extern "C" {
#endif

#define OS_APP_TYPE_DVD     0x80
#define OS_APP_TYPE_CHANNEL 0x81

typedef struct OSIOSRev {
    u8 idHi;
    u8 idLo;
    u8 verMajor;
    u8 verMinor;
    u8 buildMon;
    u8 buildDay;
    u16 buildYear;
} OSIOSRev;

typedef struct OSExecParams {
    BOOL valid;         // 0x0
    u32 restartCode;    // 0x4
    u32 bootDol;        // 0x8
    void *regionStart;  // 0xC
    void *regionEnd;    // 0x10
    BOOL argsUseDefault;  // 0x14
    void *argsAddr;     // 0x18
} OSExecParams;

typedef struct OSBootInfo {
    u8 diskID[0x20];      // 0x0
    u32 magic;            // 0x20
    u32 version;          // 0x24
    u32 memorySize;       // 0x28
    u32 consoleType;      // 0x2C
    void *arenaLo;        // 0x30
    void *arenaHi;        // 0x34
    void *FSTLocation;    // 0x38
    u32 FSTMaxLength;     // 0x3C
} OSBootInfo;

extern OSExecParams __OSRebootParams;
extern BOOL __OSInIPL;
extern BOOL __OSInNandBoot;
extern BOOL __OSIsDiag;
extern OSTime __OSStartTime;
extern const char *__OSVersion;

void __OSFPRInit(void);
void __OSGetIOSRev(OSIOSRev *rev);
u32 OSGetConsoleType(void);
void OSInit(void);
__OSExceptionHandler __OSSetExceptionHandler(__OSException exception, __OSExceptionHandler handler);
__OSExceptionHandler __OSGetExceptionHandler(__OSException exception);
void __OSPSInit(void);
u32 __OSGetDIConfig(void);
void OSRegisterVersion(const char *id);
const char *OSGetAppGamename(void);
u8 OSGetAppType(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OS_OS_H
