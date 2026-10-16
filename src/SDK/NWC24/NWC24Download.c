// NOT LINKED: 4 of 5 functions match (tu_diff --sdk). NWC24iCheckHeaderConsistency differs by 2
// instructions: the original computes `addi r31, r1, 0xa8` (address of the local DlTask) before the
// `mr r28, r3` / `mr r29, r4` parameter copies; ours puts it after them. Tried: declaration and
// initialization orders (all permutations), pointer-typed parameter, array local, no pointer local,
// inline helpers. Needs the Makefile's RVL_SDK_DIRS to gain NWC24 when linked.
// TODO(match): NWC24iCheckHeaderConsistency
#include "types.h"
#include "SDK/NWC24/NWC24Download.h"
#include "SDK/NWC24/NWC24FileAPI.h"
#include "SDK/NWC24/NWC24Manage.h"

s32 NWC24iSynchronizeRtcCounter(s32 arg);

void* memset(void* dst, int val, u32 n);
void* memcpy(void* dst, const void* src, u32 n);

typedef struct DlTask {
    u16 id;
    u8 flag;
    u8 pad3[0x15];
    s16 state;
    u8 pad1A[0x200 - 0x1A];
} DlTask;

typedef struct DlMem {
    u8 pad[0x3000];
    DlHeader header;
    DlTask task;
} DlMem;

#define WORK ((DlMem*)NWC24WorkArea)
extern const char* lbl_8063DF80;

static s32 DeleteDlTask(DlTask* task);

s32 NWC24iOpenDlTaskList(void)
{
    s32 ret = NWC24iLoadDlHeader();
    if (ret >= 0) {
        NWC24iSynchronizeRtcCounter(0);
        ret = NWC24iCheckHeaderConsistency(&WORK->header, 0);
        if (ret >= 0) {
            ret = 0;
        }
    }
    return ret;
}

s32 NWC24iCloseDlTaskList(void)
{
    return 0;
}

static inline s32 CheckIndex(DlHeader* header, u16 idx)
{
    s32 ret;
    if (idx >= header->numEntries || idx == 0xFFFF) {
        ret = -3;
    } else {
        ret = 0;
        if (header->entries[idx].used == 0) {
            ret = -13;
        }
    }
    return ret;
}

static inline s32 CheckTask(DlHeader* header, DlTask* task)
{
    if (task == NULL) {
        return -3;
    }
    if (header == NULL) {
        return -9;
    }
    if (task->id != 0xFFFF && task->id >= header->numEntries) {
        return -3;
    }
    return 0;
}

static inline s32 ReadTask(DlTask* task, u16 idx)
{
    NWC24File file;
    s32 ret;
    s32 err;

    ret = CheckIndex(&WORK->header, idx);
    if (ret < 0) {
        return ret;
    }
    ret = NWC24FOpen(&file, lbl_8063DF80, 10);
    if (ret < 0) {
        return ret;
    }
    ret = NWC24FSeek(&file, idx * 0x200 + 0x800, 0);
    if (ret < 0) {
        err = ret;
    } else {
        ret = NWC24FRead(task, 0x200, &file);
        err = 0;
        if (ret < 0) {
            err = ret;
        }
    }
    ret = NWC24FClose(&file);
    if (err != 0) {
        ret = err;
    }
    return ret;
}

static inline void DropTask(DlHeader* h, DlTask* t)
{
    if (CheckTask(h, t) == 0) {
        if (DeleteDlTask(t) >= 0) {
            t->id = 0xFFFF;
        }
    }
}

s32 NWC24iCheckHeaderConsistency(DlHeader* header, s32 repair)
{
    DlTask task;
    DlTask* t = &task;
    u16 i;
    s32 ret;

    for (i = 0; i < header->numEntries; i++) {
        ret = CheckIndex(&WORK->header, i);
        if (ret == 0 && repair != 0) {
            ret = ReadTask(t, i);
            if (ret < 0) {
                DropTask(&WORK->header, t);
            } else {
                DlHeader* h = &WORK->header;
                if (i >= h->numTasks && t->state == 0) {
                    DropTask(h, t);
                }
            }
        }
    }
    return 0;
}

static inline s32 ReadHeader(NWC24File* file, s32* err)
{
    s32 ret = NWC24FSeek(file, 0, 0);
    if (ret < 0) {
        return ret;
    }
    ret = NWC24FRead(&WORK->header, 0x800, file);
    if (ret < 0) {
        *err = ret;
    }
    return *err;
}

s32 NWC24iLoadDlHeader(void)
{
    s32 err = 0;
    u32 length = 0;
    NWC24File file;
    s32 ret;

    ret = NWC24FOpen(&file, lbl_8063DF80, 2);
    if (ret < 0) {
        return ret;
    }
    ret = ReadHeader(&file, &err);
    if (ret < 0) {
        return ret;
    }
    ret = NWC24FGetLength(&file, &length);
    err = ret;
    if (err >= 0) {
        DlHeader* h = &WORK->header;
        if (h->numEntries < 1 || h->numTasks < 1 || h->numEntries < h->numTasks) {
            err = -14;
        } else {
            err = 0;
        }
    }
    ret = NWC24FClose(&file);
    if (err != 0) {
        ret = err;
    }
    return ret;
}

static inline s32 WriteTask(NWC24File* file, DlTask* buf)
{
    s32 ret = NWC24FSeek(file, buf->id * 0x200 + 0x800, 0);
    s32 err;
    if (ret < 0) {
        return ret;
    }
    memcpy(&WORK->task, buf, 0x200);
    ret = NWC24FWrite(&WORK->task, 0x200, file);
    err = 0;
    if (ret < 0) {
        err = ret;
    }
    return err;
}

static inline s32 WriteHeader(NWC24File* file)
{
    s32 ret = NWC24FSeek(file, 0, 0);
    s32 err;
    if (ret < 0) {
        return ret;
    }
    ret = NWC24FWrite(&WORK->header, 0x800, file);
    err = 0;
    if (ret < 0) {
        err = ret;
    }
    return err;
}

static s32 DeleteDlTask(DlTask* task)
{
    NWC24File file;
    u16 id;
    DlTask* buf;
    s32 ret;
    s32 r;

    r = NWC24FOpen(&file, lbl_8063DF80, 4);
    if (r < 0) {
        return r;
    }
    id = task->id;
    buf = &WORK->task;
    memset(buf, 0, 0x200);
    buf->flag = 0xFF;
    buf->id = id;
    memset(&WORK->header.entries[id], 0, 0x10);
    ret = WriteTask(&file, buf);
    if (ret >= 0) {
        memset(&WORK->header.entries[task->id], 0, 0x10);
        ret = WriteHeader(&file);
    }
    r = NWC24FClose(&file);
    if (ret != 0) {
        r = ret;
    }
    return r;
}
