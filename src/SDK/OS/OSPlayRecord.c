#include "types.h"
#include "SDK/OS/OSAlarm.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSPlayRecord.h"
#include "SDK/OS/OSTime.h"
#include "SDK/NAND/NANDCore.h"
#include "SDK/NAND/NANDOpenClose.h"

enum {
    PLAY_RECORD_STATE_START,
    PLAY_RECORD_STATE_OPEN,
    PLAY_RECORD_STATE_READ,
    PLAY_RECORD_STATE_SEEK,
    PLAY_RECORD_STATE_WAIT,
    PLAY_RECORD_STATE_WRITE,
    PLAY_RECORD_STATE_CLOSE,
    PLAY_RECORD_STATE_ERROR,
    PLAY_RECORD_STATE_TIMEOUT,
    PLAY_RECORD_STATE_STOPPED
};

typedef struct OSPlayRecord {
    u32 checksum;          // 0x0
    u16 titleName[2][21];  // 0x4
    OSTime startTime;      // 0x58
    OSTime lastTime;       // 0x60
    u8 titleId[6];         // 0x68
    u8 padding[18];        // 0x6E
} OSPlayRecord;

#define NAND_RESULT_OK   0
#define NAND_RESULT_BUSY -3

#define NAND_ACCESS_RW 3
#define NAND_SEEK_SET  0

static OSPlayRecord PlayRecord ATTRIBUTE_ALIGN(32);
static OSAlarm PlayRecordAlarm;
static NANDFileInfo PlayRecordFileInfo;
static NANDCommandBlock PlayRecordBlock;

static s32 PlayRecordState = PLAY_RECORD_STATE_STOPPED;

static OSTime PlayRecordLastCloseTime;
static s32 PlayRecordLastError;
static BOOL PlayRecordRetry;
static BOOL PlayRecordTerminated;
static BOOL PlayRecordTerminate;
static BOOL PlayRecordError;
static BOOL PlayRecordGet;

static void PlayRecordCallback(s32 result, NANDCommandBlock *block);

// Not static and not in the original asm: the linker stripped it, as it does any C function nothing
// calls (its uses are inlined). Being emitted first is what puts PlayRecord ahead of PlayRecordAlarm in
// .bss, since MWCC lays out a file's statics in order of first use. The name is made up.
void UpdatePlayRecord(void);

void UpdatePlayRecord(void)
{
    u32 *p;
    u32 sum;
    int i;

    PlayRecord.lastTime = OSGetTime();
    sum = 0;
    p = (u32 *)&PlayRecord + 1;
    for (i = 0; i < sizeof(OSPlayRecord) / sizeof(u32) - 1; i++) {
        sum += *p++;
    }
    PlayRecord.checksum = sum;
}

static void PlayRecordAlarmCallback(OSAlarm *alarm, OSContext *context)
{
#pragma unused(alarm, context)
    PlayRecordCallback(0, NULL);
}

static void PlayRecordCallback(s32 result, NANDCommandBlock *block)
{
#pragma unused(block)
    s32 ret = NAND_RESULT_OK;

    PlayRecordLastError = result;

    if (PlayRecordTerminate) {
        PlayRecordTerminated = TRUE;
        return;
    }

    if (!PlayRecordRetry) {
        switch (PlayRecordState) {
        case PLAY_RECORD_STATE_START:
            PlayRecordState = PLAY_RECORD_STATE_OPEN;
            break;
        case PLAY_RECORD_STATE_OPEN:
            if (result == -10) {  // NAND busy at open: retry in a second
                PlayRecordRetry = TRUE;
                OSCreateAlarm(&PlayRecordAlarm);
                OSSetAlarm(&PlayRecordAlarm, OSSecondsToTicks(1), PlayRecordAlarmCallback);
                return;
            } else if (result == NAND_RESULT_OK) {
                if (!PlayRecordGet) {
                    PlayRecordState = PLAY_RECORD_STATE_READ;
                } else {
                    PlayRecordState = PLAY_RECORD_STATE_WAIT;
                }
            } else {
                PlayRecordError = TRUE;
                PlayRecordState = PLAY_RECORD_STATE_ERROR;
                return;
            }
            break;
        case PLAY_RECORD_STATE_READ:
            if (result == sizeof(OSPlayRecord)) {
                PlayRecordGet = TRUE;
                PlayRecordLastCloseTime = PlayRecord.lastTime;
                PlayRecordState = PLAY_RECORD_STATE_SEEK;
            } else {
                PlayRecordError = TRUE;
                PlayRecordState = PLAY_RECORD_STATE_CLOSE;
            }
            break;
        case PLAY_RECORD_STATE_SEEK:
            if (result == NAND_RESULT_OK) {
                PlayRecordState = PLAY_RECORD_STATE_WAIT;
            } else {
                PlayRecordError = TRUE;
                PlayRecordState = PLAY_RECORD_STATE_CLOSE;
            }
            break;
        case PLAY_RECORD_STATE_WAIT:
            PlayRecordState = PLAY_RECORD_STATE_WRITE;
            break;
        case PLAY_RECORD_STATE_WRITE:
            if (result == sizeof(OSPlayRecord)) {
                if (OSGetTime() - PlayRecordLastCloseTime > OSSecondsToTicks((OSTime)300)) {
                    PlayRecordState = PLAY_RECORD_STATE_CLOSE;
                } else {
                    PlayRecordState = PLAY_RECORD_STATE_SEEK;
                }
            } else {
                PlayRecordError = TRUE;
                PlayRecordState = PLAY_RECORD_STATE_CLOSE;
            }
            break;
        case PLAY_RECORD_STATE_CLOSE:
            if (PlayRecordError) {
                PlayRecordState = PLAY_RECORD_STATE_ERROR;
                return;
            }
            if (result == NAND_RESULT_OK) {
                PlayRecordLastCloseTime = PlayRecord.lastTime;
                PlayRecordState = PLAY_RECORD_STATE_OPEN;
            } else {
                PlayRecordState = PLAY_RECORD_STATE_ERROR;
                PlayRecordError = TRUE;
                return;
            }
            break;
        default:
            PlayRecordState = PLAY_RECORD_STATE_ERROR;
            PlayRecordError = TRUE;
            return;
        }
    }

    PlayRecordRetry = FALSE;

    switch (PlayRecordState) {
    case PLAY_RECORD_STATE_OPEN:
        ret = NANDOpenAsync("/title/00000001/00000002/data/play_rec.dat", &PlayRecordFileInfo, NAND_ACCESS_RW,
                            PlayRecordCallback, &PlayRecordBlock);
        break;
    case PLAY_RECORD_STATE_READ:
        ret = NANDReadAsync(&PlayRecordFileInfo, &PlayRecord, sizeof(OSPlayRecord), PlayRecordCallback,
                            &PlayRecordBlock);
        break;
    case PLAY_RECORD_STATE_SEEK:
        ret = NANDSeekAsync(&PlayRecordFileInfo, 0, NAND_SEEK_SET, PlayRecordCallback, &PlayRecordBlock);
        break;
    case PLAY_RECORD_STATE_WAIT:
        OSCreateAlarm(&PlayRecordAlarm);
        OSSetAlarm(&PlayRecordAlarm, OSSecondsToTicks((OSTime)60), PlayRecordAlarmCallback);
        break;
    case PLAY_RECORD_STATE_WRITE:
        UpdatePlayRecord();
        ret = NANDWriteAsync(&PlayRecordFileInfo, &PlayRecord, sizeof(OSPlayRecord), PlayRecordCallback,
                             &PlayRecordBlock);
        break;
    case PLAY_RECORD_STATE_CLOSE:
        ret = NANDCloseAsync(&PlayRecordFileInfo, PlayRecordCallback, &PlayRecordBlock);
        break;
    }

    if (ret != NAND_RESULT_OK) {
        if (ret == NAND_RESULT_BUSY) {
            OSCreateAlarm(&PlayRecordAlarm);
            OSSetAlarm(&PlayRecordAlarm, OSSecondsToTicks(1), PlayRecordAlarmCallback);
            PlayRecordRetry = TRUE;
        } else {
            PlayRecordError = TRUE;
            switch (PlayRecordState) {
            case PLAY_RECORD_STATE_READ:
            case PLAY_RECORD_STATE_SEEK:
            case PLAY_RECORD_STATE_WRITE:
                PlayRecordState = PLAY_RECORD_STATE_CLOSE;
                ret = NANDCloseAsync(&PlayRecordFileInfo, PlayRecordCallback, &PlayRecordBlock);
                if (ret == NAND_RESULT_BUSY) {
                    PlayRecordRetry = TRUE;
                    OSCreateAlarm(&PlayRecordAlarm);
                    OSSetAlarm(&PlayRecordAlarm, OSSecondsToTicks(1), PlayRecordAlarmCallback);
                }
                break;
            default:
                PlayRecordState = PLAY_RECORD_STATE_ERROR;
                break;
            }
        }
    }

    PlayRecordLastError = ret;
}

void __OSStartPlayRecord(void)
{
    if (NANDInit() != NAND_RESULT_OK) {
        return;
    }

    PlayRecordTerminate = FALSE;
    PlayRecordGet = FALSE;
    PlayRecordState = PLAY_RECORD_STATE_START;
    PlayRecordError = FALSE;
    PlayRecordRetry = FALSE;
    PlayRecordTerminated = FALSE;
    PlayRecordLastError = NAND_RESULT_OK;
    PlayRecordCallback(NAND_RESULT_OK, NULL);
}

void __OSStopPlayRecord(void)
{
    BOOL enabled;
    OSTime start;

    enabled = OSDisableInterrupts();
    PlayRecordTerminate = TRUE;

    if (PlayRecordState == PLAY_RECORD_STATE_ERROR || PlayRecordState == PLAY_RECORD_STATE_START ||
        PlayRecordState == PLAY_RECORD_STATE_STOPPED || PlayRecordState == PLAY_RECORD_STATE_TIMEOUT) {
        OSRestoreInterrupts(enabled);
    } else if (PlayRecordState == PLAY_RECORD_STATE_WAIT) {
        OSCancelAlarm(&PlayRecordAlarm);
        OSRestoreInterrupts(enabled);
        UpdatePlayRecord();
        NANDWrite(&PlayRecordFileInfo, &PlayRecord, sizeof(OSPlayRecord));
        NANDClose(&PlayRecordFileInfo);
    } else {
        if (PlayRecordRetry) {
            OSCancelAlarm(&PlayRecordAlarm);
            OSRestoreInterrupts(enabled);
        } else {
            OSRestoreInterrupts(enabled);
            start = OSGetTime();
            while (TRUE) {
                if (PlayRecordTerminated) {
                    break;
                }
                if (OSGetTime() - start > OSMillisecondsToTicks(500)) {
                    PlayRecordState = PLAY_RECORD_STATE_TIMEOUT;
                    return;
                }
            }
        }

        switch (PlayRecordState) {
        case PLAY_RECORD_STATE_READ:
        case PLAY_RECORD_STATE_SEEK:
        case PLAY_RECORD_STATE_WRITE:
            NANDClose(&PlayRecordFileInfo);
            break;
        case PLAY_RECORD_STATE_OPEN:
            if (PlayRecordLastError == NAND_RESULT_OK && !PlayRecordRetry) {
                NANDClose(&PlayRecordFileInfo);
            }
            break;
        case PLAY_RECORD_STATE_CLOSE:
            if (PlayRecordRetry) {
                NANDClose(&PlayRecordFileInfo);
            }
            break;
        }
    }

    PlayRecordState = PLAY_RECORD_STATE_STOPPED;
}
