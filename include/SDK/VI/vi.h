#ifndef POKEREVO_VI_VI_H
#define POKEREVO_VI_VI_H

#include "types.h"
#include "SDK/GX/GX.h"

#ifdef __cplusplus
extern "C" {
#endif

#define VI_NTSC    0
#define VI_PAL     1
#define VI_MPAL    2
#define VI_DEBUG   3
#define VI_DEBUG_PAL 4
#define VI_EURGB60 5

#define VI_TVMODE(format, interlace) (((format) << 2) + (interlace))
#define VI_INTERLACE    0
#define VI_NON_INTERLACE 1
#define VI_PROGRESSIVE  2

#define VI_TVMODE_NTSC_INT     VI_TVMODE(VI_NTSC, VI_INTERLACE)
#define VI_TVMODE_NTSC_PROG    VI_TVMODE(VI_NTSC, VI_PROGRESSIVE)
#define VI_TVMODE_PAL_INT      VI_TVMODE(VI_PAL, VI_INTERLACE)
#define VI_TVMODE_EURGB60_INT  VI_TVMODE(VI_EURGB60, VI_INTERLACE)

#define VI_XFBMODE_SF 0
#define VI_XFBMODE_DF 1

typedef void (*VIRetraceCallback)(u32 retraceCount);

// vi.c is still asm
void VIInit(void);
void VIFlush(void);
void VISetBlack(BOOL black);
u32 VIGetRetraceCount(void);
u32 VIGetTvFormat(void);
void VIConfigure(const GXRenderModeObj *rm);
void VIConfigurePan(u16 xOrg, u16 yOrg, u16 width, u16 height);
void VISetNextFrameBuffer(void *fb);
VIRetraceCallback VISetPreRetraceCallback(VIRetraceCallback callback);
VIRetraceCallback VISetPostRetraceCallback(VIRetraceCallback callback);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_VI_VI_H
