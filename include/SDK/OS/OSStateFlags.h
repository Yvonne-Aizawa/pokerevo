#ifndef POKEREVO_OSSTATEFLAGS_H
#define POKEREVO_OSSTATEFLAGS_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSStateFlags
{
    u32 checkSum;          // 0x0
    u8 lastBootApp;        // 0x4
    u8 lastShutdown;       // 0x5
    u8 dvdBootInfo;        // 0x6
    u8 hardwareResetDone;  // 0x7
    u8 unk8[0x18];         // 0x8
} OSStateFlags;

BOOL __OSWriteStateFlags(const OSStateFlags *state);
BOOL __OSReadStateFlags(OSStateFlags *state);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSSTATEFLAGS_H
