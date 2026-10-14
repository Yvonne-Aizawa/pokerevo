#ifndef POKEREVO_EUART_EUART_H
#define POKEREVO_EUART_EUART_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 UARTError;

#define kUARTNoError            0
#define kUARTUnknownBaudRate    1
#define kUARTConfigurationError 2
#define kUARTBufferOverflow     3
#define kUARTNoData             4

UARTError InitializeUART(u32 baudRate);
UARTError WriteUARTN(const void *buf, u32 len);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_EUART_EUART_H
