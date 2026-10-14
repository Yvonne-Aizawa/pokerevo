#ifndef POKEREVO_STDARG_H
#define POKEREVO_STDARG_H

#ifdef __cplusplus
extern "C" {
#endif

// MWCC's PowerPC va_list
typedef struct __va_list_struct
{
    char gpr;
    char fpr;
    char reserved[2];
    char *input_arg_area;
    char *reg_save_area;
} va_list[1];

#define va_start(ap, fmt) ((void)fmt, __builtin_va_info(&ap))
#define va_end(ap)        ((void)0)

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_STDARG_H
