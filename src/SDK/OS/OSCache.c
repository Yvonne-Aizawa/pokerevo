#include "types.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSCache.h"
#include "SDK/base/PPCArch.h"

void DBPrintf(const char *msg, ...);

asm void DCEnable(void)
{
    nofralloc
    sync
    mfspr r3, 1008
    ori r3, r3, 0x4000
    mtspr 1008, r3
    blr
}

asm void DCInvalidateRange(register void *addr, register u32 nBytes)
{
    nofralloc
    cmplwi nBytes, 0
    blelr
    clrlwi r5, addr, 27
    add nBytes, nBytes, r5
    addi nBytes, nBytes, 31
    srwi nBytes, nBytes, 5
    mtctr nBytes
_loop:
    dcbi 0, addr
    addi addr, addr, 32
    bdnz _loop
    blr
}

asm void DCFlushRange(register void *addr, register u32 nBytes)
{
    nofralloc
    cmplwi nBytes, 0
    blelr
    clrlwi r5, addr, 27
    add nBytes, nBytes, r5
    addi nBytes, nBytes, 31
    srwi nBytes, nBytes, 5
    mtctr nBytes
_loop:
    dcbf 0, addr
    addi addr, addr, 32
    bdnz _loop
    sc
    blr
}

asm void DCStoreRange(register void *addr, register u32 nBytes)
{
    nofralloc
    cmplwi nBytes, 0
    blelr
    clrlwi r5, addr, 27
    add nBytes, nBytes, r5
    addi nBytes, nBytes, 31
    srwi nBytes, nBytes, 5
    mtctr nBytes
_loop:
    dcbst 0, addr
    addi addr, addr, 32
    bdnz _loop
    sc
    blr
}

asm void DCFlushRangeNoSync(register void *addr, register u32 nBytes)
{
    nofralloc
    cmplwi nBytes, 0
    blelr
    clrlwi r5, addr, 27
    add nBytes, nBytes, r5
    addi nBytes, nBytes, 31
    srwi nBytes, nBytes, 5
    mtctr nBytes
_loop:
    dcbf 0, addr
    addi addr, addr, 32
    bdnz _loop
    blr
}

asm void DCStoreRangeNoSync(register void *addr, register u32 nBytes)
{
    nofralloc
    cmplwi nBytes, 0
    blelr
    clrlwi r5, addr, 27
    add nBytes, nBytes, r5
    addi nBytes, nBytes, 31
    srwi nBytes, nBytes, 5
    mtctr nBytes
_loop:
    dcbst 0, addr
    addi addr, addr, 32
    bdnz _loop
    blr
}

asm void DCZeroRange(register void *addr, register u32 nBytes)
{
    nofralloc
    cmplwi nBytes, 0
    blelr
    clrlwi r5, addr, 27
    add nBytes, nBytes, r5
    addi nBytes, nBytes, 31
    srwi nBytes, nBytes, 5
    mtctr nBytes
_loop:
    dcbz 0, addr
    addi addr, addr, 32
    bdnz _loop
    blr
}

asm void ICInvalidateRange(register void *addr, register u32 nBytes)
{
    nofralloc
    cmplwi nBytes, 0
    blelr
    clrlwi r5, addr, 27
    add nBytes, nBytes, r5
    addi nBytes, nBytes, 31
    srwi nBytes, nBytes, 5
    mtctr nBytes
_loop:
    icbi 0, addr
    addi addr, addr, 32
    bdnz _loop
    sync
    isync
    blr
}

asm void ICFlashInvalidate(void)
{
    nofralloc
    mfspr r3, 1008
    ori r3, r3, 0x800
    mtspr 1008, r3
    blr
}

asm void ICEnable(void)
{
    nofralloc
    isync
    mfspr r3, 1008
    ori r3, r3, 0x8000
    mtspr 1008, r3
    blr
}

static asm void __LCEnable(void)
{
    nofralloc
    mfmsr r5
    ori r5, r5, 0x1000
    mtmsr r5

    lis r3, 0x8000
    li r4, 0x400
    mtctr r4
_touchloop:
    dcbt 0, r3
    dcbst 0, r3
    addi r3, r3, 32
    bdnz _touchloop

    mfspr r4, 920
    oris r4, r4, 0x100f
    mtspr 920, r4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    lis r3, 0xE000
    ori r3, r3, 0x0002
    mtspr 543, r3
    ori r3, r3, 0x01fe
    mtspr 542, r3
    isync

    lis r3, 0xE000
    li r6, 0x200
    mtctr r6
    li r6, 0
_lockloop:
    dcbz_l r6, r3
    addi r3, r3, 32
    bdnz _lockloop

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    blr
}

void LCEnable(void)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();
    __LCEnable();
    OSRestoreInterrupts(enabled);
}

asm void LCDisable(void)
{
    nofralloc
    lis r3, 0xE000
    li r4, 0x200
    mtctr r4
_loop:
    dcbi 0, r3
    addi r3, r3, 32
    bdnz _loop
    mfspr r4, 920
    rlwinm r4, r4, 0, 4, 2
    mtspr 920, r4
    blr
}

asm void LCStoreBlocks(register void *destAddr, register void *srcAddr, register u32 numBlocks)
{
    nofralloc
    rlwinm r6, numBlocks, 30, 27, 31
    clrlwi destAddr, destAddr, 3
    or r6, r6, destAddr
    mtspr 922, r6
    rlwinm r6, numBlocks, 2, 28, 29
    or r6, r6, srcAddr
    ori r6, r6, 0x2
    mtspr 923, r6
    blr
}

u32 LCStoreData(void *destAddr, void *srcAddr, u32 nBytes)
{
    u32 numBlocks = (nBytes + 31) / 32;
    u32 numTransactions = (numBlocks + 128 - 1) / 128;

    while (numBlocks > 0) {
        if (numBlocks < 128) {
            LCStoreBlocks(destAddr, srcAddr, numBlocks);
            numBlocks = 0;
        } else {
            LCStoreBlocks(destAddr, srcAddr, 0);
            numBlocks -= 128;
            destAddr = (u8 *)destAddr + 4096;
            srcAddr = (u8 *)srcAddr + 4096;
        }
    }

    return numTransactions;
}

asm void LCQueueWait(register u32 len)
{
    nofralloc
_loop:
    mfspr r4, 920
    rlwinm r4, r4, 8, 28, 31
    cmpw r4, len
    bgt _loop
    blr
}

void L2Disable(void)
{
    __sync();
    PPCMtl2cr(PPCMfl2cr() & ~L2CR_L2E);
    __sync();
}

void L2GlobalInvalidate(void)
{
    L2Disable();
    PPCMtl2cr(PPCMfl2cr() | L2CR_L2I);
    while (PPCMfl2cr() & L2CR_L2IP) {
    }
    PPCMtl2cr(PPCMfl2cr() & ~L2CR_L2I);
    while (PPCMfl2cr() & L2CR_L2IP) {
        DBPrintf(">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n");
    }
}

static void L2Init(void)
{
    u32 oldMSR;

    oldMSR = PPCMfmsr();
    __sync();
    PPCMtmsr(MSR_IR | MSR_DR);
    __sync();
    L2Disable();
    L2GlobalInvalidate();
    PPCMtmsr(oldMSR);
}

void L2Enable(void)
{
    PPCMtl2cr((PPCMfl2cr() | L2CR_L2E) & ~L2CR_L2I);
}

static void DMAErrorHandler(OSError error, OSContext *context, ...)
{
    u32 hid2;
#pragma unused(error)

    hid2 = PPCMfhid2();

    OSReport("Machine check received\n");
    OSReport("HID2 = 0x%x   SRR1 = 0x%x\n", hid2, context->srr1);
    if (!(hid2 & (HID2_DCHERR | HID2_DNCERR | HID2_DCMERR | HID2_DQOERR)) || !(context->srr1 & SRR1_DMA_BIT)) {
        OSReport("Machine check was not DMA/locked cache related\n");
        OSDumpContext(context);
        PPCHalt();
    }

    OSReport("DMAErrorHandler(): An error occurred while processing DMA.\n");
    OSReport("The following errors have been detected and cleared :\n");

    if (hid2 & HID2_DCHERR) {
        OSReport("\t- Requested a locked cache tag that was already in the cache\n");
    }
    if (hid2 & HID2_DNCERR) {
        OSReport("\t- DMA attempted to access normal cache\n");
    }
    if (hid2 & HID2_DCMERR) {
        OSReport("\t- DMA missed in data cache\n");
    }
    if (hid2 & HID2_DQOERR) {
        OSReport("\t- DMA queue overflowed\n");
    }

    PPCMthid2(hid2);
}

void __OSCacheInit(void)
{
    if (!(PPCMfhid0() & HID0_ICE)) {
        ICEnable();
        DBPrintf("L1 i-caches initialized\n");
    }
    if (!(PPCMfhid0() & HID0_DCE)) {
        DCEnable();
        DBPrintf("L1 d-caches initialized\n");
    }

    if (!(PPCMfl2cr() & L2CR_L2E)) {
        L2Init();
        L2Enable();
        DBPrintf("L2 cache initialized\n");
    }

    OSSetErrorHandler(OS_ERROR_MACHINE_CHECK, DMAErrorHandler);
    DBPrintf("Locked cache machine check handler installed\n");
}
