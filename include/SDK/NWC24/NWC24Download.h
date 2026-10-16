#ifndef POKEREVO_NWC24_NWC24DOWNLOAD_H
#define POKEREVO_NWC24_NWC24DOWNLOAD_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

// PROVISIONAL: DlEntry/DlHeader layouts are only as far as NWC24Download.c uses them; the
// remaining fields are unidentified and may be renamed or reshaped when the file is linked.
typedef struct DlEntry {
    u32 used;
    u32 pad[3];
} DlEntry;

typedef struct DlHeader {
    u8 pad0[0x10];
    u16 numEntries;
    u16 numTasks;
    u8 pad14[0x6C];
    DlEntry entries[0x78];
} DlHeader;

s32 NWC24iOpenDlTaskList(void);
s32 NWC24iCloseDlTaskList(void);
s32 NWC24iCheckHeaderConsistency(DlHeader* header, s32 repair);
s32 NWC24iLoadDlHeader(void);

#ifdef __cplusplus
}
#endif

#endif // POKEREVO_NWC24_NWC24DOWNLOAD_H
