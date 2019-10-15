#include "tommath_private.h"
#ifdef BN_MP_ABS_C
/* LibTomMath, multiple-precision integer library -- Tom St Denis
 *
 * LibTomMath is a library that provides multiple-precision
 * integer arithmetic as well as number theoretic functionality.
 *
 * The library was designed directly after the MPI library by
 * Michael Fromberger but has been written from scratch with
 * additional optimizations in place.
 *
 * SPDX-License-Identifier: Unlicense
 */

/* b = |a|
 *
 * Simple function copies the input and fixes the sign to positive
 */
int mp_abs(const mp_int *a, mp_int *b)
{
   int     res;

   /* copy a to b */
   if (a != b) {
      if ((res = mp_copy(a, b)) != MP_OKAY) {
         return res;
      }
   }

   /* force the sign of b to positive */
   b->sign = MP_ZPOS;

   return MP_OKAY;
}
#endif

/* ref:         tag: v1.1.0, master */
/* git commit:  08549ad6bc8b0cede0b357a9c341c5c6473a9c55 */
/* commit time: 2019-01-28 20:32:32 +0100 */
