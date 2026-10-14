#ifndef POKEREVO_ARC_ARC_H
#define POKEREVO_ARC_ARC_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct ARCHandle {
    void *archiveStartAddr;  // 0x0
    void *FSTStart;          // 0x4
    void *fileStart;         // 0x8
    u32 entryNum;            // 0xC
    char *FSTStringStart;    // 0x10
    u32 FSTLength;           // 0x14
    u32 currDir;             // 0x18
} ARCHandle;

typedef struct ARCFileInfo {
    ARCHandle *handle;  // 0x0
    u32 startOffset;    // 0x4
    u32 length;         // 0x8
} ARCFileInfo;

typedef struct ARCDir {
    ARCHandle *handle;  // 0x0
    u32 entryNum;       // 0x4
    u32 location;       // 0x8
    u32 next;           // 0xC
} ARCDir;

typedef struct ARCDirEntry {
    ARCHandle *handle;  // 0x0
    u32 entryNum;       // 0x4
    BOOL isDir;         // 0x8
    char *name;         // 0xC
} ARCDirEntry;

BOOL ARCInitHandle(void *arcStart, ARCHandle *handle);
BOOL ARCFastOpen(ARCHandle *handle, s32 entrynum, ARCFileInfo *af);
s32 ARCConvertPathToEntrynum(ARCHandle *handle, const char *pathPtr);
void *ARCGetStartAddrInMem(ARCFileInfo *af);
u32 ARCGetLength(ARCFileInfo *af);
BOOL ARCClose(ARCFileInfo *af);
BOOL ARCChangeDir(ARCHandle *handle, const char *dirName);
BOOL ARCOpenDir(ARCHandle *handle, const char *dirName, ARCDir *dir);
BOOL ARCReadDir(ARCDir *dir, ARCDirEntry *dirent);
BOOL ARCCloseDir(ARCDir *dir);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_ARC_ARC_H
