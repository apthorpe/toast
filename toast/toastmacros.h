#ifndef TOAST_MACROS_H
#define TOAST_MACROS_H

!! Only tested for GNU and intel
!! It is known that NAG complains for
!! some preprocessing
#ifdef __GFORTRAN__
#define MACRO_SAME(A) A
#define MACRO_CAT2(A,B) MACRO_SAME(A)B
#define MACRO_CAT3(A,B,C) MACRO_CAT2(A,B)C
#define MACRO_STRINGIFY(A) "A"
#else
#define MACRO_CAT2(A,B) A ## B
#define MACRO_CAT3(A,B,C) A ## B ## C
#define MACRO_STRINGIFY(A) #A
#endif

#endif
