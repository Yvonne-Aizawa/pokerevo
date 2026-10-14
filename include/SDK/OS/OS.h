#ifndef POKEREVO_OS_OS_H
#define POKEREVO_OS_OS_H

#ifdef __cplusplus
extern "C" {
#endif

// Owned by OS.c, which is still asm.

#define OS_APP_TYPE_DVD     0x80
#define OS_APP_TYPE_CHANNEL 0x81

typedef struct OSIOSRev {
    u8 idHi;
    u8 idLo;
    u8 verMajor;
    u8 verMinor;
    u8 buildMon;
    u8 buildDay;
    u8 buildYearHi;
    u8 buildYearLo;
} OSIOSRev;

typedef struct OSExecParams {
    BOOL valid;       // 0x0
    u32 restartCode;  // 0x4
    u8 unk8[0x18];    // 0x8
} OSExecParams;

extern OSExecParams __OSRebootParams;

u8 OSGetAppType(void);
void __OSGetIOSRev(OSIOSRev *rev);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OS_OS_H
