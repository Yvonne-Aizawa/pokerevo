#include "types.h"
#include "string.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSArena.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSFatal.h"
#include "SDK/OS/OSFont.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSReset.h"
#include "SDK/OS/OSThread.h"
#include "SDK/OS/OSTime.h"
#include "SDK/base/PPCArch.h"
#include "SDK/EXI/EXIBios.h"
#include "SDK/GX/GX.h"
#include "SDK/VI/vi.h"

#define FATAL_XFB_WIDTH  640
#define FATAL_XFB_HEIGHT 480
#define FATAL_XFB_SIZE   (FATAL_XFB_WIDTH * FATAL_XFB_HEIGHT * 2)

#define VI_DTV_STATUS   (*(volatile u16 *)0xCC00206C)  // VI register 0x36: bit 0 set when the cable is component (progressive)
#define EXI_0_CR        (*(volatile u32 *)0xCD00680C)  // EXI channel 0 control register: bit 0 is the transfer in progress
#define OS_FST_LOCATION (*(void **)0x80000038)         // OSBootInfo FSTLocation, the top of the usable MEM1 arena

typedef struct OSFatalParam {
    GXColor fg;       // 0x0
    GXColor bg;       // 0x4
    const char *msg;  // 0x8
} OSFatalParam;

static OSContext FatalContext;
static OSFatalParam FatalParam;

static void Halt(void);

static void ScreenClear(u8 *xfb, u16 xfbW, u16 xfbH, GXColor yuv)
{
    int i;
    int j;
    u8 *ptr;

    ptr = xfb;
    for (i = 0; i < xfbH; i++) {
        for (j = 0; j < xfbW; j += 2) {
            *ptr++ = yuv.r;
            *ptr++ = yuv.g;
            *ptr++ = yuv.r;
            *ptr++ = yuv.b;
        }
    }
}

static void ScreenReport(void *xfb, u16 xfbW, u16 xfbH, GXColor yuv, s32 x, s32 y, s32 leading, const char *string)
{
    u8 *ptr;
    u8 *pixel;
    s32 width;
    u32 i;
    u32 j;
    u32 k;
    u32 l;
    u32 value;
    s32 pos;
    u32 image[24 / 8 * 24];

NextLine:
    if (xfbH - 24 < y) {
        return;
    }
    ptr = (u8 *)xfb + (y * xfbW + x) * 2;
    pos = x;
    while (*string != '\0') {
        if (*string == '\n') {
            ++string;
            y += leading;
            goto NextLine;
        }
        if (xfbW - 48 < pos) {
            y += leading;
            goto NextLine;
        }

        for (i = 0; i < 24; i++) {
            k = i / 8 * 24 + i % 8;
            image[k] = 0;
            image[k + 8] = 0;
            image[k + 16] = 0;
        }
        string = OSGetFontTexel(string, image, 0, 6, &width);

        for (j = 0; j < 24; j++) {
            k = j / 8 * 24 + j % 8;
            for (l = 0; l < 24; l++) {
                value = (image[k + l / 8 * 8] >> ((7 - l % 8) * 4)) & 0xF;
                if (value != 0) {
                    pixel = ptr + (j * xfbW + l) * 2;
                    *pixel = (u8)((s32)(yuv.r * value) * 239 / 255 / 15 + 16);
                    if ((pos + l) & 1) {
                        pixel[-1] = yuv.g;
                        pixel[1] = yuv.b;
                    } else {
                        pixel[-1] = yuv.b;
                        pixel[1] = yuv.g;
                    }
                }
            }
        }
        ptr += width * 2;
        pos += width;
    }
}

static void ConfigureVideo(u16 xfbW, u16 xfbH)
{
    GXRenderModeObj mode;

    mode.fbWidth = xfbW;
    mode.efbHeight = 480;
    mode.xfbHeight = xfbH;
    mode.viXOrigin = 40;
    mode.viWidth = 640;
    mode.viHeight = xfbH;

    switch (VIGetTvFormat()) {
    case VI_NTSC:
    case VI_MPAL:
        if (VI_DTV_STATUS & 1) {
            mode.viTVmode = VI_TVMODE_NTSC_PROG;
            mode.viYOrigin = 0;
            mode.xFBmode = VI_XFBMODE_SF;
        } else {
            mode.viTVmode = VI_TVMODE_NTSC_INT;
            mode.viYOrigin = 0;
            mode.xFBmode = VI_XFBMODE_DF;
        }
        break;
    case VI_EURGB60:
        mode.viTVmode = VI_TVMODE_EURGB60_INT;
        mode.viYOrigin = 0;
        mode.xFBmode = VI_XFBMODE_DF;
        break;
    case VI_PAL:
        mode.viTVmode = VI_TVMODE_PAL_INT;
        mode.viYOrigin = 47;
        mode.xFBmode = VI_XFBMODE_DF;
        break;
    }

    VIConfigure(&mode);
    VIConfigurePan(0, 0, 640, 480);
}

static GXColor RGB2YUV(GXColor rgb)
{
    f32 Y;
    f32 Cb;
    f32 Cr;
    GXColor yuv;

    Y = 0.257f * rgb.r + 0.504f * rgb.g + 0.098f * rgb.b + 16.0f + 0.5f;
    Cb = -0.148f * rgb.r - 0.291f * rgb.g + 0.439f * rgb.b + 128.0f + 0.5f;
    Cr = 0.439f * rgb.r - 0.368f * rgb.g - 0.071f * rgb.b + 128.0f + 0.5f;

    yuv.r = (u8)(Y > 235.0f ? 235.0f : (Y < 16.0f ? 16.0f : Y));
    yuv.g = (u8)(Cb > 240.0f ? 240.0f : (Cb < 16.0f ? 16.0f : Cb));
    yuv.b = (u8)(Cr > 240.0f ? 240.0f : (Cr < 16.0f ? 16.0f : Cr));
    yuv.a = 0;
    return yuv;
}

void OSFatal(GXColor fg, GXColor bg, const char *msg)
{
    u32 count;
    OSTime t;

    OSDisableInterrupts();
    OSDisableScheduler();
    OSClearContext(&FatalContext);
    OSSetCurrentContext(&FatalContext);
    __OSStopAudioSystem();
    VIInit();
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_VI);
    VISetBlack(TRUE);
    VIFlush();
    VISetPreRetraceCallback(NULL);
    VISetPostRetraceCallback(NULL);
    OSEnableInterrupts();

    count = VIGetRetraceCount();
    while ((s32)(VIGetRetraceCount() - count) < 1) {
    }

    t = OSGetTime();
    while (!__OSCallShutdownFunctions(FALSE, 0) && OSGetTime() - t < OSMillisecondsToTicks(1000)) {
    }

    OSDisableInterrupts();
    __OSCallShutdownFunctions(TRUE, 0);
    EXISetExiCallback(0, NULL);
    EXISetExiCallback(2, NULL);
    while (!EXILock(0, 1, NULL)) {
        EXISync(0);
        EXIDeselect(0);
        EXIUnlock(0);
    }
    EXIUnlock(0);
    while ((EXI_0_CR & 1) == 1) {
    }

    __OSSetExceptionHandler(__OS_EXCEPTION_DECREMENTER, OSDefaultExceptionHandler);
    GXAbortFrame();
    OSSetArenaLo((void *)0x81400000);
    OSSetArenaHi(OS_FST_LOCATION);

    FatalParam.fg = fg;
    FatalParam.bg = bg;
    FatalParam.msg = msg;
    OSSwitchFiber((u32)Halt, (u32)OSGetArenaHi());
}

static void Halt(void)
{
    u32 count;
    OSFontHeader *fontData;
    void *xfb;
    u32 len;
    OSFatalParam *fp;

    OSEnableInterrupts();
    fp = &FatalParam;
    len = strlen(fp->msg) + 1;
    fp->msg = memmove(OSAllocFromMEM1ArenaLo(len, 32), fp->msg, len);

    fontData = OSAllocFromMEM1ArenaLo(0xA1004, 32);
    OSLoadFont(fontData, OSGetArenaLo());

    xfb = OSAllocFromMEM1ArenaLo(FATAL_XFB_SIZE, 32);
    ScreenClear(xfb, FATAL_XFB_WIDTH, FATAL_XFB_HEIGHT, RGB2YUV(fp->bg));
    VISetNextFrameBuffer(xfb);
    ConfigureVideo(FATAL_XFB_WIDTH, FATAL_XFB_HEIGHT);
    VIFlush();
    count = VIGetRetraceCount();
    while ((s32)(VIGetRetraceCount() - count) < 2) {
    }

    ScreenReport(xfb, FATAL_XFB_WIDTH, FATAL_XFB_HEIGHT, RGB2YUV(fp->fg), 48, 100, fontData->leading, fp->msg);
    DCFlushRange(xfb, FATAL_XFB_SIZE);
    VISetBlack(FALSE);
    VIFlush();
    count = VIGetRetraceCount();
    while ((s32)(VIGetRetraceCount() - count) < 1) {
    }

    OSDisableInterrupts();
    OSReport("%s\n", fp->msg);
    PPCHalt();
}
