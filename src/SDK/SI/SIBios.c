#include "types.h"
#include "SDK/SI/SIBios.h"
#include "SDK/OS/OS.h"
#include "SDK/OS/OSAlarm.h"
#include "SDK/OS/OSInterrupt.h"
#include "SDK/OS/OSRtc.h"
#include "SDK/OS/OSTime.h"
#include "SDK/VI/vi.h"

vu32 __SIRegs[64] : 0xCD006400;

#define SI_POLL     12
#define SI_COMCSR   13
#define SI_STATUS   14
#define SI_BUFFER   32

#define SI_MAX_CHAN 4

#define SI_COMCSR_TCINT      0x80000000
#define SI_COMCSR_TCINTMSK   0x40000000
#define SI_COMCSR_COMERR     0x20000000
#define SI_COMCSR_RDSTINTMSK 0x08000000
#define SI_COMCSR_RDSTINT    0x10000000
#define SI_COMCSR_TSTART     0x00000001

#define SI_ERROR_UNDER_RUN   0x0001
#define SI_ERROR_OVER_RUN    0x0002
#define SI_ERROR_COLLISION   0x0004
#define SI_ERROR_NO_RESPONSE 0x0008
#define SI_ERROR_RDST        0x0020
#define SI_ERROR_BUSY        0x0080

#define SI_CHAN0_BIT 0x80000000

#define SI_TYPE_MASK    0x18000000
#define SI_TYPE_DOLPHIN 0x08000000

#define SI_GC_WIRELESS        0x80000000
#define SI_WIRELESS_RECEIVED  0x40000000
#define SI_WIRELESS_IR        0x04000000
#define SI_WIRELESS_FIX_ID    0x00100000
#define SI_WIRELESS_TYPE_ID   0x00CFFF00

#define ROUND(n, a) (((u32)(n) + (a) - 1) & ~((a) - 1))

typedef struct SIControl {
    s32 chan;             // 0x0
    u32 poll;             // 0x4
    u32 inputBytes;       // 0x8
    void *input;          // 0xC
    SICallback callback;  // 0x10
} SIControl;

typedef struct SIPacket {
    s32 chan;             // 0x0
    void *output;         // 0x4
    u32 outputBytes;      // 0x8
    void *input;          // 0xC
    u32 inputBytes;       // 0x10
    SICallback callback;  // 0x14
    OSTime fire;          // 0x18
} SIPacket;

typedef union SIComm {
    u32 val;
    struct {
        u32 tcint : 1;
        u32 tcintmsk : 1;
        u32 comerr : 1;
        u32 rdstint : 1;
        u32 rdstintmsk : 1;
        u32 pad0 : 4;
        u32 outlngth : 7;
        u32 pad1 : 1;
        u32 inlngth : 7;
        u32 pad2 : 5;
        u32 channel : 2;
        u32 tstart : 1;
    } f;
} SIComm;

const char *__SIVersion = "<< RVL_SDK - SI \trelease build: Nov 30 2006 03:31:44 (0x4199_60831) >>";

static SIControl Si = {-1, 0, 0, NULL, NULL};
static u32 Type[SI_MAX_CHAN] = {
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE,
};

static SIPacket Packet[SI_MAX_CHAN];
static OSTime XferTime[SI_MAX_CHAN];
static OSTime TypeTime[SI_MAX_CHAN];
static OSAlarm Alarm[SI_MAX_CHAN];
static u32 InputBuffer[SI_MAX_CHAN][2];
static vu32 InputBufferValid[SI_MAX_CHAN];
static vu32 InputBufferVcount[SI_MAX_CHAN];
static __OSInterruptHandler RDSTHandler[4];
static SITypeAndStatusCallback TypeCallback[SI_MAX_CHAN][4];

u32 __PADFixBits;

static void GetTypeCallback(s32 chan, u32 error, OSContext *context);

BOOL SIBusy(void)
{
    return Si.chan != -1 ? TRUE : FALSE;
}

BOOL SIIsChanBusy(s32 chan)
{
    return Packet[chan].chan != -1 || Si.chan == chan;
}

static u32 CompleteTransfer(void)
{
    u32 sr;
    u32 i;
    u32 rLen;
    u8 *input;

    sr = __SIRegs[SI_STATUS];
    __SIRegs[SI_COMCSR] = (__SIRegs[SI_COMCSR] | SI_COMCSR_TCINT) & ~SI_COMCSR_TSTART;

    if (Si.chan != -1) {
        XferTime[Si.chan] = __OSGetSystemTime();

        input = Si.input;
        rLen = Si.inputBytes / 4;
        for (i = 0; i < rLen; i++) {
            *(u32 *)input = __SIRegs[SI_BUFFER + i];
            input += 4;
        }

        rLen = Si.inputBytes & 3;
        if (rLen) {
            u32 temp = __SIRegs[SI_BUFFER + i];
            for (i = 0; i < rLen; i++) {
                *(input++) = (u8)((temp >> ((3 - i) * 8)) & 0xFF);
            }
        }

        if (__SIRegs[SI_COMCSR] & SI_COMCSR_COMERR) {
            sr >>= 8 * (3 - Si.chan);
            sr &= 0xF;
            if ((sr & SI_ERROR_NO_RESPONSE) && !(Type[Si.chan] & SI_ERROR_BUSY)) {
                Type[Si.chan] = SI_ERROR_NO_RESPONSE;
            }
            if (sr == 0) {
                sr = SI_ERROR_COLLISION;
            }
        } else {
            TypeTime[Si.chan] = __OSGetSystemTime();
            sr = 0;
        }

        Si.chan = -1;
    }
    return sr;
}

static void SITransferNext(s32 chan)
{
    int i;
    SIPacket *packet;

    for (i = 0; i < SI_MAX_CHAN; i++) {
        ++chan;
        chan %= SI_MAX_CHAN;
        packet = &Packet[chan];
        if (packet->chan != -1 && packet->fire <= __OSGetSystemTime()) {
            if (__SITransfer(packet->chan, packet->output, packet->outputBytes, packet->input, packet->inputBytes,
                             packet->callback)) {
                OSCancelAlarm(&Alarm[chan]);
                packet->chan = -1;
            }
            break;
        }
    }
}

static u32 SIGetStatus(s32 chan)
{
    BOOL enabled;
    u32 sr;
    int chanShift;

    enabled = OSDisableInterrupts();
    sr = __SIRegs[SI_STATUS];
    chanShift = 8 * (SI_MAX_CHAN - 1 - chan);
    sr >>= chanShift;
    if (sr & SI_ERROR_NO_RESPONSE) {
        if (!(Type[chan] & SI_ERROR_BUSY)) {
            Type[chan] = SI_ERROR_NO_RESPONSE;
        }
    }
    OSRestoreInterrupts(enabled);
    return sr;
}

static BOOL SIGetResponseRaw(s32 chan)
{
    u32 sr;

    sr = SIGetStatus(chan);
    if (sr & SI_ERROR_RDST) {
        InputBuffer[chan][0] = __SIRegs[3 * chan + 1];
        InputBuffer[chan][1] = __SIRegs[3 * chan + 2];
        InputBufferValid[chan] = TRUE;
        return TRUE;
    }
    return FALSE;
}

static void SIInterruptHandler(__OSInterrupt interrupt, OSContext *context)
{
    u32 reg;

    reg = __SIRegs[SI_COMCSR];

    if ((reg & (SI_COMCSR_TCINT | SI_COMCSR_TCINTMSK)) == (SI_COMCSR_TCINT | SI_COMCSR_TCINTMSK)) {
        s32 chan;
        u32 sr;
        SICallback callback;

        chan = Si.chan;
        sr = CompleteTransfer();
        callback = Si.callback;
        Si.callback = NULL;

        SITransferNext(chan);

        if (callback) {
            callback(chan, sr, context);
        }

        sr = __SIRegs[SI_STATUS];
        sr &= 0x0F000000 >> (8 * chan);
        __SIRegs[SI_STATUS] = sr;

        if (Type[chan] == SI_ERROR_BUSY && !SIIsChanBusy(chan)) {
            static u32 cmdTypeAndStatus = 0 << 24;

            SITransfer(chan, &cmdTypeAndStatus, 1, &Type[chan], 3, GetTypeCallback, OSMicrosecondsToTicks(65));
        }
    }

    if ((reg & (SI_COMCSR_RDSTINT | SI_COMCSR_RDSTINTMSK)) == (SI_COMCSR_RDSTINT | SI_COMCSR_RDSTINTMSK)) {
        int i;
        u32 vcount;
        u32 x;

        vcount = VIGetCurrentLine() + 1;
        x = (Si.poll & 0x03FF0000) >> 16;

        for (i = 0; i < SI_MAX_CHAN; i++) {
            if (SIGetResponseRaw(i)) {
                InputBufferVcount[i] = vcount;
            }
        }

        for (i = 0; i < SI_MAX_CHAN; i++) {
            if (!(Si.poll & (SI_CHAN0_BIT >> (31 - 7 + i)))) {
                continue;
            }
            if (InputBufferVcount[i] == 0 || InputBufferVcount[i] + (x / 2) < vcount) {
                return;
            }
        }

        for (i = 0; i < SI_MAX_CHAN; i++) {
            InputBufferVcount[i] = 0;
        }

        for (i = 0; i < 4; i++) {
            if (RDSTHandler[i]) {
                RDSTHandler[i](interrupt, context);
            }
        }
    }
}

void SIInit(void)
{
    static BOOL SIInitialized;

    if (SIInitialized) {
        return;
    }

    OSRegisterVersion(__SIVersion);

    Packet[0].chan = Packet[1].chan = Packet[2].chan = Packet[3].chan = -1;
    Si.poll = 0;
    SISetSamplingRate(0);

    while (__SIRegs[SI_COMCSR] & SI_COMCSR_TSTART) {
    }
    __SIRegs[SI_COMCSR] = SI_COMCSR_TCINT;

    __OSSetInterruptHandler(__OS_INTERRUPT_PI_SI, SIInterruptHandler);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_SI);

    SIGetType(0);
    SIGetType(1);
    SIGetType(2);
    SIGetType(3);

    SIInitialized = TRUE;
}

BOOL __SITransfer(s32 chan, void *output, u32 outputBytes, void *input, u32 inputBytes, SICallback callback)
{
    BOOL enabled;
    u32 rLen;
    u32 i;
    u32 sr;
    SIComm comcsr;

    enabled = OSDisableInterrupts();
    if (Si.chan != -1) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    sr = __SIRegs[SI_STATUS];
    sr &= 0x0F000000 >> (8 * chan);
    __SIRegs[SI_STATUS] = sr;

    Si.chan = chan;
    Si.callback = callback;
    Si.inputBytes = inputBytes;
    Si.input = input;

    rLen = ROUND(outputBytes, 4) / 4;
    for (i = 0; i < rLen; i++) {
        __SIRegs[SI_BUFFER + i] = ((u32 *)output)[i];
    }

    comcsr.val = __SIRegs[SI_COMCSR];
    comcsr.f.tcint = 1;
    comcsr.f.tcintmsk = callback ? 1 : 0;
    comcsr.f.outlngth = (outputBytes == 128) ? 0 : outputBytes;
    comcsr.f.inlngth = (inputBytes == 128) ? 0 : inputBytes;
    comcsr.f.channel = chan;
    comcsr.f.tstart = 1;
    __SIRegs[SI_COMCSR] = comcsr.val;

    OSRestoreInterrupts(enabled);
    return TRUE;
}

u32 SISetXY(u32 x, u32 y)
{
    u32 poll;
    BOOL enabled;

    poll = x << 16;
    poll |= y << 8;

    enabled = OSDisableInterrupts();
    Si.poll &= ~(0x03FF0000 | 0x0000FF00);
    Si.poll |= poll;
    poll = Si.poll;
    __SIRegs[SI_POLL] = poll;
    OSRestoreInterrupts(enabled);
    return poll;
}

static void AlarmHandler(OSAlarm *alarm, OSContext *context)
{
#pragma unused(context)
    s32 chan;
    SIPacket *packet;

    chan = alarm - Alarm;
    packet = &Packet[chan];
    if (packet->chan != -1) {
        if (__SITransfer(packet->chan, packet->output, packet->outputBytes, packet->input, packet->inputBytes,
                         packet->callback)) {
            packet->chan = -1;
        }
    }
}

BOOL SITransfer(s32 chan, void *output, u32 outputBytes, void *input, u32 inputBytes, SICallback callback,
                OSTime delay)
{
    BOOL enabled;
    SIPacket *packet = &Packet[chan];
    OSTime now;
    OSTime fire;

    enabled = OSDisableInterrupts();
    if (packet->chan != -1 || Si.chan == chan) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    now = __OSGetSystemTime();
    if (delay == 0) {
        fire = now;
    } else {
        fire = XferTime[chan] + delay;
    }

    if (now < fire) {
        delay = fire - now;
        OSSetAlarm(&Alarm[chan], delay, AlarmHandler);
    } else if (__SITransfer(chan, output, outputBytes, input, inputBytes, callback)) {
        OSRestoreInterrupts(enabled);
        return TRUE;
    }

    packet->chan = chan;
    packet->output = output;
    packet->outputBytes = outputBytes;
    packet->input = input;
    packet->inputBytes = inputBytes;
    packet->callback = callback;
    packet->fire = fire;

    OSRestoreInterrupts(enabled);
    return TRUE;
}

static void CallTypeAndStatusCallback(s32 chan, u32 type)
{
    SITypeAndStatusCallback callback;
    int i;

    for (i = 0; i < 4; i++) {
        callback = TypeCallback[chan][i];
        if (callback) {
            TypeCallback[chan][i] = NULL;
            callback(chan, type);
        }
    }
}

static void GetTypeCallback(s32 chan, u32 error, OSContext *context)
{
#pragma unused(context)
    static u32 cmdFixDevice[SI_MAX_CHAN];
    u32 type;
    u32 chanBit;
    BOOL fix;
    u32 id;

    Type[chan] &= ~SI_ERROR_BUSY;
    Type[chan] |= error;
    TypeTime[chan] = __OSGetSystemTime();

    type = Type[chan];

    chanBit = SI_CHAN0_BIT >> chan;
    fix = (BOOL)(__PADFixBits & chanBit);
    __PADFixBits &= ~chanBit;

    if ((error & (SI_ERROR_UNDER_RUN | SI_ERROR_OVER_RUN | SI_ERROR_NO_RESPONSE | SI_ERROR_COLLISION)) ||
        (type & SI_TYPE_MASK) != SI_TYPE_DOLPHIN || !(type & SI_GC_WIRELESS) || (type & SI_WIRELESS_IR)) {
        OSSetWirelessID(chan, 0);
        CallTypeAndStatusCallback(chan, Type[chan]);
        return;
    }

    id = (u32)(OSGetWirelessID(chan) << 8);

    if (fix && (id & SI_WIRELESS_FIX_ID)) {
        cmdFixDevice[chan] = 0x4E << 24 | (id & SI_WIRELESS_TYPE_ID) | SI_WIRELESS_FIX_ID;
        Type[chan] = SI_ERROR_BUSY;
        SITransfer(chan, &cmdFixDevice[chan], 3, &Type[chan], 3, GetTypeCallback, 0);
        return;
    }

    if (type & SI_WIRELESS_FIX_ID) {
        if ((id & SI_WIRELESS_TYPE_ID) != (type & SI_WIRELESS_TYPE_ID)) {
            if (!(id & SI_WIRELESS_FIX_ID)) {
                id = type & SI_WIRELESS_TYPE_ID;
                id |= SI_WIRELESS_FIX_ID;
                OSSetWirelessID(chan, (u16)((id >> 8) & 0xFFFF));
            }
            cmdFixDevice[chan] = 0x4E << 24 | id;
            Type[chan] = SI_ERROR_BUSY;
            SITransfer(chan, &cmdFixDevice[chan], 3, &Type[chan], 3, GetTypeCallback, 0);
            return;
        }
    } else if (type & SI_WIRELESS_RECEIVED) {
        id = type & SI_WIRELESS_TYPE_ID;
        id |= SI_WIRELESS_FIX_ID;
        OSSetWirelessID(chan, (u16)((id >> 8) & 0xFFFF));
        cmdFixDevice[chan] = 0x4E << 24 | id;
        Type[chan] = SI_ERROR_BUSY;
        SITransfer(chan, &cmdFixDevice[chan], 3, &Type[chan], 3, GetTypeCallback, 0);
        return;
    } else {
        OSSetWirelessID(chan, 0);
    }

    CallTypeAndStatusCallback(chan, Type[chan]);
}

u32 SIGetType(s32 chan)
{
    static u32 cmdTypeAndStatus;
    BOOL enabled;
    u32 type;
    OSTime diff;

    enabled = OSDisableInterrupts();

    type = Type[chan];
    diff = __OSGetSystemTime() - TypeTime[chan];
    if (Si.poll & (0x80 >> chan)) {
        if (type != SI_ERROR_NO_RESPONSE) {
            TypeTime[chan] = __OSGetSystemTime();
            OSRestoreInterrupts(enabled);
            return type;
        } else {
            type = Type[chan] = SI_ERROR_BUSY;
        }
    } else if (diff <= OSMillisecondsToTicks(50) && type != SI_ERROR_NO_RESPONSE) {
        OSRestoreInterrupts(enabled);
        return type;
    } else if (diff <= OSMillisecondsToTicks(75)) {
        Type[chan] = SI_ERROR_BUSY;
    } else {
        type = Type[chan] = SI_ERROR_BUSY;
    }

    TypeTime[chan] = __OSGetSystemTime();
    SITransfer(chan, &cmdTypeAndStatus, 1, &Type[chan], 3, GetTypeCallback, OSMicrosecondsToTicks(65));
    OSRestoreInterrupts(enabled);
    return type;
}
