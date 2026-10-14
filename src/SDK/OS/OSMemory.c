#include "types.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSContext.h"
#include "SDK/OS/OSError.h"
#include "SDK/OS/OSCache.h"
#include "SDK/OS/OSMemory.h"
#include "SDK/OS/OSReset.h"

#define OS_ERROR_PROTECTION 15

#define __MEMRegs ((vu16 *)0xCC004000)

#define OS_PHYSICAL_MEM1_SIZE  (*(u32 *)0x80003100)
#define OS_SIMULATED_MEM1_SIZE (*(u32 *)0x80003104)
#define OS_PHYSICAL_MEM2_SIZE  (*(u32 *)0x80003118)
#define OS_SIMULATED_MEM2_SIZE (*(u32 *)0x8000311C)
#define OS_MEM2_END            (*(u32 *)0x80003120)
#define OS_BOOT_CONFIG         (*(u32 *)0x80003138)

void __OSUnhandledException(__OSException exception, OSContext *context, u32 dsisr, u32 dar);

static BOOL OnShutdown(BOOL final, u32 event);

static OSShutdownFunctionInfo ShutdownFunctionInfo = {OnShutdown, 127, NULL, NULL};

u32 OSGetPhysicalMem1Size(void)
{
    return OS_PHYSICAL_MEM1_SIZE;
}

u32 OSGetPhysicalMem2Size(void)
{
    return OS_PHYSICAL_MEM2_SIZE;
}

u32 OSGetConsoleSimulatedMem1Size(void)
{
    return OS_SIMULATED_MEM1_SIZE;
}

u32 OSGetConsoleSimulatedMem2Size(void)
{
    return OS_SIMULATED_MEM2_SIZE;
}

static BOOL OnShutdown(BOOL final, u32 event)
{
#pragma unused(event)
    if (final) {
        __MEMRegs[8] = 0xFF;
        __OSMaskInterrupts(OS_INTERRUPTMASK_MEM_0 | OS_INTERRUPTMASK_MEM_1 | OS_INTERRUPTMASK_MEM_2 |
                           OS_INTERRUPTMASK_MEM_3);
    }
    return TRUE;
}

static void MEMIntrruptHandler(__OSInterrupt interrupt, OSContext *context)
{
    u32 addr;
    u32 cause;
#pragma unused(interrupt)

    cause = __MEMRegs[0xF];
    addr = (((u32)__MEMRegs[0x12] & 0x3FF) << 16) | __MEMRegs[0x11];
    __MEMRegs[0x10] = 0;

    if (__OSErrorTable[OS_ERROR_PROTECTION]) {
        ((OSErrorHandler)__OSErrorTable[OS_ERROR_PROTECTION])(OS_ERROR_PROTECTION, context, cause, addr);
        return;
    }

    __OSUnhandledException(OS_ERROR_PROTECTION, context, cause, addr);
}

static asm void ConfigMEM1_24MB(void)
{
    nofralloc
    li r7, 0
    lis r4, 0x0
    addi r4, r4, 2
    lis r3, 0x8000
    addi r3, r3, 511
    lis r6, 0x100
    addi r6, r6, 2
    lis r5, 0x8100
    addi r5, r5, 255
    isync
    mtdbatu 0, r7
    mtdbatl 0, r4
    mtdbatu 0, r3
    isync
    mtibatu 0, r7
    mtibatl 0, r4
    mtibatu 0, r3
    isync
    mtdbatu 2, r7
    mtdbatl 2, r6
    mtdbatu 2, r5
    isync
    mtibatu 2, r7
    mtibatl 2, r6
    mtibatu 2, r5
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3
    mflr r3
    mtspr 26, r3
    rfi
}

static asm void ConfigMEM1_48MB(void)
{
    nofralloc
    li r7, 0
    lis r4, 0x0
    addi r4, r4, 2
    lis r3, 0x8000
    addi r3, r3, 1023
    lis r6, 0x200
    addi r6, r6, 2
    lis r5, 0x8200
    addi r5, r5, 511
    isync
    mtdbatu 0, r7
    mtdbatl 0, r4
    mtdbatu 0, r3
    isync
    mtibatu 0, r7
    mtibatl 0, r4
    mtibatu 0, r3
    isync
    mtdbatu 2, r7
    mtdbatl 2, r6
    mtdbatu 2, r5
    isync
    mtibatu 2, r7
    mtibatl 2, r6
    mtibatu 2, r5
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3
    mflr r3
    mtspr 26, r3
    rfi
}

static asm void ConfigMEM2_52MB(void)
{
    nofralloc
    li r7, 0
    lis r4, 0x1000
    addi r4, r4, 2
    lis r3, 0x9000
    addi r3, r3, 1023
    lis r6, 0x1000
    addi r6, r6, 42
    lis r5, 0xd000
    addi r5, r5, 2047
    isync
    mtspr 568, r7
    mtspr 569, r4
    mtspr 568, r3
    isync
    mtspr 560, r7
    mtspr 561, r4
    mtspr 560, r3
    isync
    mtspr 570, r7
    mtspr 571, r6
    mtspr 570, r5
    isync
    mtspr 562, r7
    mtspr 563, r7
    isync
    lis r4, 0x1200
    addi r4, r4, 2
    lis r3, 0x9200
    addi r3, r3, 511
    lis r6, 0x1300
    addi r6, r6, 2
    lis r5, 0x9300
    addi r5, r5, 127
    isync
    mtspr 572, r7
    mtspr 573, r4
    mtspr 572, r3
    isync
    mtspr 564, r7
    mtspr 565, r4
    mtspr 564, r3
    isync
    mtspr 574, r7
    mtspr 575, r6
    mtspr 574, r5
    isync
    mtspr 566, r7
    mtspr 567, r6
    mtspr 566, r5
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3
    mflr r3
    mtspr 26, r3
    rfi
}

static asm void ConfigMEM2_56MB(void)
{
    nofralloc
    li r7, 0
    lis r4, 0x1000
    addi r4, r4, 2
    lis r3, 0x9000
    addi r3, r3, 1023
    lis r6, 0x1000
    addi r6, r6, 42
    lis r5, 0xd000
    addi r5, r5, 2047
    isync
    mtspr 568, r7
    mtspr 569, r4
    mtspr 568, r3
    isync
    mtspr 560, r7
    mtspr 561, r4
    mtspr 560, r3
    isync
    mtspr 570, r7
    mtspr 571, r6
    mtspr 570, r5
    isync
    mtspr 562, r7
    mtspr 563, r7
    isync
    lis r4, 0x1200
    addi r4, r4, 2
    lis r3, 0x9200
    addi r3, r3, 511
    lis r6, 0x1300
    addi r6, r6, 2
    lis r5, 0x9300
    addi r5, r5, 255
    isync
    mtspr 572, r7
    mtspr 573, r4
    mtspr 572, r3
    isync
    mtspr 564, r7
    mtspr 565, r4
    mtspr 564, r3
    isync
    mtspr 574, r7
    mtspr 575, r6
    mtspr 574, r5
    isync
    mtspr 566, r7
    mtspr 567, r6
    mtspr 566, r5
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3
    mflr r3
    mtspr 26, r3
    rfi
}

static asm void ConfigMEM2_64MB(void)
{
    nofralloc
    li r7, 0
    lis r4, 0x1000
    addi r4, r4, 2
    lis r3, 0x9000
    addi r3, r3, 2047
    lis r6, 0x1000
    addi r6, r6, 42
    lis r5, 0xd000
    addi r5, r5, 2047
    isync
    mtspr 568, r7
    mtspr 569, r4
    mtspr 568, r3
    isync
    mtspr 560, r7
    mtspr 561, r4
    mtspr 560, r3
    isync
    mtspr 570, r7
    mtspr 571, r6
    mtspr 570, r5
    isync
    mtspr 562, r7
    mtspr 563, r7
    isync
    mtspr 564, r7
    mtspr 565, r7
    isync
    mtspr 566, r7
    mtspr 567, r7
    isync
    mtspr 572, r7
    mtspr 573, r7
    isync
    mtspr 574, r7
    mtspr 575, r7
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3
    mflr r3
    mtspr 26, r3
    rfi
}

static asm void ConfigMEM2_112MB(void)
{
    nofralloc
    li r7, 0
    lis r4, 0x1000
    addi r4, r4, 2
    lis r3, 0x9000
    addi r3, r3, 2047
    lis r6, 0x1000
    addi r6, r6, 42
    lis r5, 0xd000
    addi r5, r5, 4095
    isync
    mtspr 568, r7
    mtspr 569, r4
    mtspr 568, r3
    isync
    mtspr 560, r7
    mtspr 561, r4
    mtspr 560, r3
    isync
    mtspr 570, r7
    mtspr 571, r6
    mtspr 570, r5
    isync
    mtspr 562, r7
    mtspr 563, r7
    isync
    lis r4, 0x1400
    addi r4, r4, 2
    lis r3, 0x9400
    addi r3, r3, 1023
    lis r6, 0x1600
    addi r6, r6, 2
    lis r5, 0x9600
    addi r5, r5, 511
    isync
    mtspr 572, r7
    mtspr 573, r4
    mtspr 572, r3
    isync
    mtspr 564, r7
    mtspr 565, r4
    mtspr 564, r3
    isync
    mtspr 574, r7
    mtspr 575, r6
    mtspr 574, r5
    isync
    mtspr 566, r7
    mtspr 567, r6
    mtspr 566, r5
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3
    mflr r3
    mtspr 26, r3
    rfi
}

static asm void ConfigMEM2_128MB(void)
{
    nofralloc
    li r7, 0
    lis r4, 0x1000
    addi r4, r4, 2
    lis r3, 0x9000
    addi r3, r3, 4095
    lis r6, 0x1000
    addi r6, r6, 42
    lis r5, 0xd000
    addi r5, r5, 4095
    isync
    mtspr 568, r7
    mtspr 569, r4
    mtspr 568, r3
    isync
    mtspr 560, r7
    mtspr 561, r4
    mtspr 560, r3
    isync
    mtspr 570, r7
    mtspr 571, r6
    mtspr 570, r5
    isync
    mtspr 562, r7
    mtspr 563, r7
    isync
    mtspr 564, r7
    mtspr 565, r7
    isync
    mtspr 566, r7
    mtspr 567, r7
    isync
    mtspr 572, r7
    mtspr 573, r7
    isync
    mtspr 574, r7
    mtspr 575, r7
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3
    mflr r3
    mtspr 26, r3
    rfi
}

static asm void ConfigMEM_ES1_0(void)
{
    nofralloc
    li r7, 0
    lis r4, 0x0
    addi r4, r4, 2
    lis r3, 0x8000
    addi r3, r3, 4095
    isync
    mtdbatu 0, r7
    mtdbatl 0, r4
    mtdbatu 0, r3
    isync
    mtibatu 0, r7
    mtibatl 0, r4
    mtibatu 0, r3
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtspr 27, r3
    mflr r3
    mtspr 26, r3
    rfi
}

static asm void RealMode(register u32 addr)
{
    nofralloc
    clrlwi addr, addr, 2
    mtspr 26, addr
    mfmsr addr
    rlwinm addr, addr, 0, 28, 25
    mtspr 27, addr
    rfi
}

static void BATConfig(void)
{
    u32 mem1Sim;
    u32 mem2Sim;
    u32 mem2End;

    // The test is on a symbol at OSGetPhysicalMem1Size's address; which one the SDK used is unknown.
    if (OS_BOOT_CONFIG == 0 && OSGetPhysicalMem1Size == NULL) {
        RealMode((u32)ConfigMEM_ES1_0);
        return;
    }

    mem1Sim = OSGetConsoleSimulatedMem1Size();
    if (mem1Sim < OSGetPhysicalMem1Size() && mem1Sim == 0x01800000) {
        DCInvalidateRange((void *)0x81800000, 0x01800000);
        __MEMRegs[0x14] = 2;
    }

    if (mem1Sim <= 0x01800000) {
        RealMode((u32)ConfigMEM1_24MB);
    } else if (mem1Sim <= 0x03000000) {
        RealMode((u32)ConfigMEM1_48MB);
    }

    mem2Sim = OSGetConsoleSimulatedMem2Size();
    mem2End = OS_MEM2_END;
    if (mem2Sim <= 0x04000000) {
        if (mem2End <= 0x93400000) {
            RealMode((u32)ConfigMEM2_52MB);
        } else if (mem2End <= 0x93800000) {
            RealMode((u32)ConfigMEM2_56MB);
        } else {
            RealMode((u32)ConfigMEM2_64MB);
        }
    } else if (mem2Sim <= 0x08000000) {
        if (mem2End <= 0x97000000) {
            RealMode((u32)ConfigMEM2_112MB);
        } else {
            RealMode((u32)ConfigMEM2_128MB);
        }
    }
}

void __OSInitMemoryProtection(void)
{
    BOOL enabled;

    enabled = OSDisableInterrupts();

    __MEMRegs[0x10] = 0;
    __MEMRegs[8] = 0xFF;
    __OSMaskInterrupts(OS_INTERRUPTMASK_MEM_0 | OS_INTERRUPTMASK_MEM_1 | OS_INTERRUPTMASK_MEM_2 |
                       OS_INTERRUPTMASK_MEM_3);

    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_0, MEMIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_1, MEMIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_2, MEMIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_3, MEMIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_ADDRESS, MEMIntrruptHandler);
    OSRegisterShutdownFunction(&ShutdownFunctionInfo);

    BATConfig();

    __OSUnmaskInterrupts(OS_INTERRUPTMASK_MEM_ADDRESS);
    OSRestoreInterrupts(enabled);
}
