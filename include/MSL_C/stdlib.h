#ifndef POKEREVO_STDLIB_H
#define POKEREVO_STDLIB_H

#ifdef __cplusplus
extern "C" {
#endif

void qsort(void *base, u32 nmemb, u32 size, 
            s32 (*compar)(const void *, const void *));

// MSL's abs is the compiler intrinsic.
int __abs(int n);
inline int abs(int n)
{
    return __abs(n);
}

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_STDLIB_H
