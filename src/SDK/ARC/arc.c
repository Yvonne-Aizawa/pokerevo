#include "types.h"
#include "ctype.h"
#include "SDK/ARC/arc.h"
#include "SDK/OS/OSError.h"

#define DARCH_MAGIC 0x55AA382D

typedef struct ARCHeader {
    u32 magic;       // 0x0
    s32 fstStart;    // 0x4
    s32 fstSize;     // 0x8
    s32 fileStart;   // 0xC
    s32 reserve[4];  // 0x10
} ARCHeader;

typedef struct FSTEntry {
    u32 isDirAndStringOff;  // 0x0
    u32 parentOrPosition;   // 0x4
    u32 nextEntryOrLength;  // 0x8
} FSTEntry;

#define entryIsDir(i)   ((FSTEntries[i].isDirAndStringOff & 0xFF000000) ? TRUE : FALSE)
#define stringOff(i)    (FSTEntries[i].isDirAndStringOff & ~0xFF000000)
#define parentDir(i)    (FSTEntries[i].parentOrPosition)
#define nextDir(i)      (FSTEntries[i].nextEntryOrLength)
#define filePosition(i) (FSTEntries[i].parentOrPosition)
#define fileLength(i)   (FSTEntries[i].nextEntryOrLength)

BOOL ARCInitHandle(void *arcStart, ARCHandle *handle)
{
    FSTEntry *FSTEntries;
    ARCHeader *arcHeader;

    arcHeader = (ARCHeader *)arcStart;
    if (arcHeader->magic != DARCH_MAGIC) {
        // OSPanic(__FILE__, __LINE__, ...) in the SDK
        OSPanic("arc.c", 74, "ARCInitHandle: bad archive format");
    }

    handle->archiveStartAddr = arcStart;
    handle->FSTStart = FSTEntries = (FSTEntry *)((u32)arcStart + arcHeader->fstStart);
    handle->fileStart = (void *)((u32)arcStart + arcHeader->fileStart);
    handle->entryNum = FSTEntries[0].nextEntryOrLength;
    handle->FSTStringStart = (char *)&FSTEntries[handle->entryNum];
    handle->FSTLength = (u32)arcHeader->fstSize;
    handle->currDir = 0;
    return TRUE;
}

BOOL ARCFastOpen(ARCHandle *handle, s32 entrynum, ARCFileInfo *af)
{
    FSTEntry *FSTEntries = (FSTEntry *)handle->FSTStart;

    if (entrynum < 0 || entrynum >= handle->entryNum || entryIsDir(entrynum)) {
        return FALSE;
    }

    af->handle = handle;
    af->startOffset = filePosition(entrynum);
    af->length = fileLength(entrynum);
    return TRUE;
}

static BOOL isSame(const char *path, const char *string)
{
    while (*string != '\0') {
        if (tolower(*path++) != tolower(*string++)) {
            return FALSE;
        }
    }

    if (*path == '/' || *path == '\0') {
        return TRUE;
    }
    return FALSE;
}

s32 ARCConvertPathToEntrynum(ARCHandle *handle, const char *pathPtr)
{
    const char *ptr;
    char *stringPtr;
    BOOL isDir;
    s32 length;
    u32 dirLookAt;
    u32 i;
    FSTEntry *FSTEntries;

    dirLookAt = handle->currDir;
    FSTEntries = (FSTEntry *)handle->FSTStart;

    while (TRUE) {
        if (*pathPtr == '\0') {
            return (s32)dirLookAt;
        } else if (*pathPtr == '/') {
            dirLookAt = 0;
            pathPtr++;
            continue;
        } else if (*pathPtr == '.') {
            if (*(pathPtr + 1) == '.') {
                if (*(pathPtr + 2) == '/') {
                    dirLookAt = parentDir(dirLookAt);
                    pathPtr += 3;
                    continue;
                } else if (*(pathPtr + 2) == '\0') {
                    return (s32)parentDir(dirLookAt);
                }
            } else if (*(pathPtr + 1) == '/') {
                pathPtr += 2;
                continue;
            } else if (*(pathPtr + 1) == '\0') {
                return (s32)dirLookAt;
            }
        }

        for (ptr = pathPtr; *ptr != '\0' && *ptr != '/'; ptr++) {
        }

        isDir = (*ptr == '\0') ? FALSE : TRUE;
        length = (s32)(ptr - pathPtr);
        ptr = pathPtr;

        for (i = dirLookAt + 1; i < nextDir(dirLookAt); i = entryIsDir(i) ? nextDir(i) : (i + 1)) {
        ARCNextEntry:
            if (entryIsDir(i) == FALSE && isDir == TRUE) {
                continue;
            }

            stringPtr = handle->FSTStringStart + stringOff(i);
            if (stringPtr[0] == '.' && stringPtr[1] == '\0') {
                i++;
                goto ARCNextEntry;
            }

            if (isSame(ptr, stringPtr) == TRUE) {
                goto next_hier;
            }
        }
        return -1;

    next_hier:
        if (!isDir) {
            return (s32)i;
        }

        dirLookAt = i;
        pathPtr += length + 1;
    }
}

void *ARCGetStartAddrInMem(ARCFileInfo *af)
{
    return (void *)((u32)af->handle->archiveStartAddr + af->startOffset);
}

u32 ARCGetLength(ARCFileInfo *af)
{
    return af->length;
}

BOOL ARCClose(ARCFileInfo *af)
{
#pragma unused(af)
    return TRUE;
}

BOOL ARCChangeDir(ARCHandle *handle, const char *dirName)
{
    s32 entry;
    FSTEntry *FSTEntries;

    entry = ARCConvertPathToEntrynum(handle, dirName);
    FSTEntries = (FSTEntry *)handle->FSTStart;
    if (entry < 0 || entryIsDir(entry) == FALSE) {
        return FALSE;
    }

    handle->currDir = (u32)entry;
    return TRUE;
}

BOOL ARCOpenDir(ARCHandle *handle, const char *dirName, ARCDir *dir)
{
    s32 entry;
    FSTEntry *FSTEntries;

    entry = ARCConvertPathToEntrynum(handle, dirName);
    FSTEntries = (FSTEntry *)handle->FSTStart;
    if (entry < 0 || entryIsDir(entry) == FALSE) {
        return FALSE;
    }

    dir->handle = handle;
    dir->entryNum = (u32)entry;
    dir->location = (u32)entry + 1;
    dir->next = nextDir(entry);
    return TRUE;
}

BOOL ARCReadDir(ARCDir *dir, ARCDirEntry *dirent)
{
    u32 loc;
    FSTEntry *FSTEntries;
    ARCHandle *handle;

    handle = dir->handle;
    FSTEntries = (FSTEntry *)handle->FSTStart;
    loc = dir->location;

retry:
    if (loc <= dir->entryNum || dir->next <= loc) {
        return FALSE;
    }

    dirent->handle = handle;
    dirent->entryNum = loc;
    dirent->isDir = entryIsDir(loc);
    dirent->name = handle->FSTStringStart + stringOff(loc);

    if (dirent->name[0] == '.' && dirent->name[1] == '\0') {
        loc++;
        goto retry;
    }

    dir->location = entryIsDir(loc) ? nextDir(loc) : (loc + 1);
    return TRUE;
}

BOOL ARCCloseDir(ARCDir *dir)
{
#pragma unused(dir)
    return TRUE;
}
