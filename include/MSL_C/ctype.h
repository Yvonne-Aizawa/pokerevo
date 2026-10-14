#ifndef POKEREVO_MSL_CTYPE_H
#define POKEREVO_MSL_CTYPE_H

#ifdef __cplusplus
extern "C" {
#endif

// Only the parts of MSL's locale that the inline ctype functions read. locale.c is still asm.
struct _loc_ctype_cmpt {
    char CmptName[8];                     // 0x0
    const unsigned short *ctype_map_ptr;  // 0x8
    const unsigned char *upper_map_ptr;   // 0xC
    const unsigned char *lower_map_ptr;   // 0x10
};

struct __locale {
    struct __locale *next_locale;                // 0x0
    char locale_name[48];                        // 0x4
    struct _loc_coll_cmpt *coll_cmpt_ptr;        // 0x34
    struct _loc_ctype_cmpt *ctype_cmpt_ptr;      // 0x38
};

extern struct __locale _current_locale;

inline int tolower(int c)
{
    return (c < 0 || c >= 0x100) ? c : (int)_current_locale.ctype_cmpt_ptr->lower_map_ptr[c];
}

inline int toupper(int c)
{
    return (c < 0 || c >= 0x100) ? c : (int)_current_locale.ctype_cmpt_ptr->upper_map_ptr[c];
}

#ifdef __cplusplus
}
#endif

#endif //POKEREVO_MSL_CTYPE_H
