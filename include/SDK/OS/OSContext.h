#ifndef POKEREVO_OSCONTEXT_H
#define POKEREVO_OSCONTEXT_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSContext
{
    u32 gpr[32];        // 0x0
    u32 cr;             // 0x80
    u32 lr;             // 0x84
    u32 ctr;            // 0x88
    u32 xer;            // 0x8C
    f64 fpr[32];        // 0x90
    u32 fpscr_pad;      // 0x190
    u32 fpscr;          // 0x194
    u32 srr0;           // 0x198
    u32 srr1;           // 0x19C
    u16 mode;           // 0x1A0
    u16 state;          // 0x1A2
    u32 gqr[8];         // 0x1A4
    u32 psf_pad;        // 0x1C4
    f64 psf[32];        // 0x1C8
} OSContext;

#define OS_CONTEXT_STATE_FPSAVED 0x01
#define OS_CONTEXT_STATE_EXC     0x02

#define __OSCurrentContext (*(OSContext **)0x800000D4)
#define __OSFPUContext     (*(OSContext **)0x800000D8)

void OSSaveFPUContext(OSContext *fpuContext);
void OSSetCurrentContext(OSContext *context);
OSContext *OSGetCurrentContext(void);
u32 OSSaveContext(OSContext *context);
void OSLoadContext(OSContext *context);
u32 OSGetStackPointer(void);
void OSSwitchFiber(u32 pc, u32 newsp);
void OSSwitchFiberEx(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 pc, u32 newsp);
void OSClearContext(OSContext *context);
void OSInitContext(OSContext *context, u32 pc, u32 sp);
void OSDumpContext(OSContext *context);
void __OSContextInit(void);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_OSCONTEXT_H
