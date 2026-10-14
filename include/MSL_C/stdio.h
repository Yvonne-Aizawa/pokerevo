#ifndef POKEREVO_STDIO_H
#define POKEREVO_STDIO_H

#include "stdarg.h"

#ifdef __cplusplus
extern "C" {
#endif

int vprintf(const char *format, va_list arg);

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_STDIO_H
