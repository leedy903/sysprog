/* Multiple versions of round.
   Copyright (C) 2013-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

#include <math.h>
#include <math_ldbl_opt.h>
#include <shlib-compat.h>
#include "init-arch.h"

extern __typeof (__round) __round_ppc32 attribute_hidden;
extern __typeof (__round) __round_power5plus attribute_hidden;

libc_ifunc (__round,
	    (hwcap & PPC_FEATURE_POWER5_PLUS)
	    ? __round_power5plus
            : __round_ppc32);

weak_alias (__round, round)

#ifdef NO_LONG_DOUBLE
strong_alias (__round, __roundl)
weak_alias (__round, roundl)
#endif
#if LONG_DOUBLE_COMPAT(libm, GLIBC_2_1)
compat_symbol (libm, __round, roundl, GLIBC_2_1);
#endif
