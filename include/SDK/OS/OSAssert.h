#ifndef POKEREVO_OSASSERT_H
#define POKEREVO_OSASSERT_H

// The SDK's assertions, as its release build defines them. They generate no code, but a function
// that contains one is not inlined by -inline auto, which is how the SDK was built.
#define ASSERT(exp)         ((void)0)
#define ASSERTMSG(exp, ...) ((void)0)

#endif //POKEREVO_OSASSERT_H
