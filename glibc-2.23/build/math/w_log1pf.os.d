$(common-objpfx)math/w_log1pf.os: \
 w_log1pf.c ../include/stdc-predef.h \
 $(common-objpfx)libc-modules.h \
 ../include/libc-symbols.h \
 $(common-objpfx)config.h \
 ../sysdeps/generic/symbol-hacks.h ../include/errno.h ../stdlib/errno.h \
 ../include/features.h ../include/sys/cdefs.h ../misc/sys/cdefs.h \
 ../sysdeps/x86/bits/wordsize.h ../include/gnu/stubs.h \
 ../sysdeps/unix/sysv/linux/bits/errno.h /usr/include/linux/errno.h \
 /usr/include/x86_64-linux-gnu/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
 ../sysdeps/x86_64/nptl/tls.h /usr/include/x86_64-linux-gnu/asm/prctl.h \
 /usr/lib/gcc/x86_64-linux-gnu/5/include/stdbool.h \
 /usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h \
 ../sysdeps/generic/stdint.h ../bits/wchar.h ../include/stdlib.h \
 ../stdlib/stdlib.h ../sysdeps/unix/sysv/linux/bits/waitflags.h \
 ../bits/waitstatus.h ../include/endian.h ../string/endian.h \
 ../sysdeps/x86/bits/endian.h ../sysdeps/x86/bits/byteswap.h \
 ../bits/types.h ../sysdeps/unix/sysv/linux/x86/bits/typesizes.h \
 ../sysdeps/x86/bits/byteswap-16.h ../include/xlocale.h \
 ../locale/xlocale.h ../include/sys/types.h ../posix/sys/types.h \
 ../include/time.h ../time/time.h ../include/sys/select.h \
 ../misc/sys/select.h ../sysdeps/x86/bits/select.h \
 ../sysdeps/unix/sysv/linux/bits/sigset.h \
 ../sysdeps/unix/sysv/linux/bits/time.h \
 ../sysdeps/unix/sysv/linux/sys/sysmacros.h \
 ../sysdeps/x86/bits/pthreadtypes.h ../include/alloca.h \
 ../stdlib/alloca.h ../include/stackinfo.h ../sysdeps/x86_64/stackinfo.h \
 ../include/elf.h ../elf/elf.h ../sysdeps/generic/dl-dtprocnum.h \
 ../sysdeps/pthread/allocalim.h ../include/limits.h \
 /usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h \
 ../include/bits/posix1_lim.h ../posix/bits/posix1_lim.h \
 ../sysdeps/unix/sysv/linux/bits/local_lim.h /usr/include/linux/limits.h \
 ../include/bits/posix2_lim.h ../posix/bits/posix2_lim.h \
 ../include/bits/xopen_lim.h \
 $(common-objpfx)bits/stdio_lim.h \
 ../bits/stdlib-bsearch.h ../include/bits/stdlib-float.h \
 ../stdlib/bits/stdlib-float.h ../include/sys/stat.h ../io/sys/stat.h \
 ../sysdeps/unix/sysv/linux/x86/bits/stat.h \
 ../sysdeps/unix/sysv/linux/x86_64/sysdep.h \
 ../sysdeps/unix/sysv/linux/sysdep.h ../sysdeps/unix/x86_64/sysdep.h \
 ../sysdeps/unix/sysdep.h ../sysdeps/generic/sysdep.h \
 ../sysdeps/generic/dwarf2.h ../sysdeps/unix/sysv/linux/sys/syscall.h \
 /usr/include/x86_64-linux-gnu/asm/unistd.h \
 /usr/include/x86_64-linux-gnu/asm/unistd_64.h ../sysdeps/x86_64/sysdep.h \
 ../include/libc-internal.h ../sysdeps/x86_64/hp-timing.h \
 ../sysdeps/generic/hp-timing-common.h ../include/string.h \
 ../sysdeps/x86/string_private.h ../string/string.h \
 ../sysdeps/x86/bits/string.h ../include/bits/string2.h \
 ../string/bits/string2.h ../include/sys/param.h ../misc/sys/param.h \
 ../include/signal.h ../signal/signal.h \
 ../sysdeps/unix/sysv/linux/bits/signum.h \
 ../sysdeps/unix/sysv/linux/x86/bits/siginfo.h \
 ../sysdeps/unix/sysv/linux/bits/sigaction.h \
 ../sysdeps/unix/sysv/linux/x86/bits/sigcontext.h \
 ../sysdeps/unix/sysv/linux/bits/sigstack.h \
 ../sysdeps/unix/sysv/linux/x86/sys/ucontext.h \
 ../sysdeps/pthread/bits/sigthread.h \
 ../sysdeps/unix/sysv/linux/bits/param.h /usr/include/linux/param.h \
 /usr/include/x86_64-linux-gnu/asm/param.h \
 /usr/include/asm-generic/param.h ../sysdeps/generic/_itoa.h \
 ../sysdeps/unix/sysv/linux/x86_64/kernel-features.h \
 ../sysdeps/unix/sysv/linux/kernel-features.h ../nptl/descr.h \
 ../include/sched.h ../posix/sched.h \
 ../sysdeps/unix/sysv/linux/bits/sched.h ../include/setjmp.h \
 ../setjmp/setjmp.h ../sysdeps/x86/bits/setjmp.h ../include/list.h \
 ../sysdeps/unix/sysv/linux/x86_64/lowlevellock.h ../include/stap-probe.h \
 ../sysdeps/unix/sysv/linux/bits/timex.h \
 $(common-objpfx)tcb-offsets.h \
 ../sysdeps/unix/sysv/linux/lowlevellock-futex.h \
 ../sysdeps/x86_64/nptl/pthreaddef.h \
 ../sysdeps/unix/sysv/linux/dl-sysdep.h ../sysdeps/generic/dl-sysdep.h \
 ../nptl/../nptl_db/thread_db.h ../include/pthread.h \
 ../sysdeps/nptl/pthread.h ../sysdeps/unix/sysv/linux/x86/sys/procfs.h \
 ../include/sys/time.h ../time/sys/time.h \
 ../sysdeps/unix/sysv/linux/x86/sys/user.h ../sysdeps/generic/unwind.h \
 ../include/resolv.h ../resolv/resolv.h ../include/netinet/in.h \
 ../inet/netinet/in.h ../include/sys/socket.h ../socket/sys/socket.h \
 ../include/sys/uio.h ../misc/sys/uio.h \
 ../sysdeps/unix/sysv/linux/bits/uio.h \
 ../sysdeps/unix/sysv/linux/bits/socket.h \
 ../sysdeps/unix/sysv/linux/bits/socket_type.h ../bits/sockaddr.h \
 /usr/include/x86_64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/x86_64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h ../sysdeps/unix/sysv/linux/bits/in.h \
 ../include/math.h ../math/math.h ../sysdeps/x86/fpu/bits/math-vector.h \
 ../bits/libm-simd-decl-stubs.h ../sysdeps/ieee754/bits/huge_val.h \
 ../sysdeps/ieee754/bits/huge_valf.h ../sysdeps/x86/bits/huge_vall.h \
 ../sysdeps/ieee754/bits/inf.h ../sysdeps/ieee754/bits/nan.h \
 ../sysdeps/x86/bits/mathdef.h ../include/bits/mathcalls.h \
 ../math/bits/mathcalls.h ../sysdeps/x86/fpu/bits/mathinline.h \
 ../sysdeps/x86_64/fpu/math_private.h ../sysdeps/i386/fpu/fenv_private.h \
 ../include/fenv.h ../math/fenv.h ../sysdeps/x86/fpu/include/bits/fenv.h \
 ../sysdeps/x86/fpu/bits/fenv.h ../bits/fenvinline.h \
 ../include/fpu_control.h ../sysdeps/x86/fpu_control.h \
 ../sysdeps/generic/math_private.h \
 /usr/lib/gcc/x86_64-linux-gnu/5/include/float.h \
 ../sysdeps/generic/get-rounding-mode.h ../sysdeps/x86_64/fpu/math_ldbl.h

../include/stdc-predef.h:

$(common-objpfx)libc-modules.h:

../include/libc-symbols.h:

$(common-objpfx)config.h:

../sysdeps/generic/symbol-hacks.h:

../include/errno.h:

../stdlib/errno.h:

../include/features.h:

../include/sys/cdefs.h:

../misc/sys/cdefs.h:

../sysdeps/x86/bits/wordsize.h:

../include/gnu/stubs.h:

../sysdeps/unix/sysv/linux/bits/errno.h:

/usr/include/linux/errno.h:

/usr/include/x86_64-linux-gnu/asm/errno.h:

/usr/include/asm-generic/errno.h:

/usr/include/asm-generic/errno-base.h:

../sysdeps/x86_64/nptl/tls.h:

/usr/include/x86_64-linux-gnu/asm/prctl.h:

/usr/lib/gcc/x86_64-linux-gnu/5/include/stdbool.h:

/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h:

../sysdeps/generic/stdint.h:

../bits/wchar.h:

../include/stdlib.h:

../stdlib/stdlib.h:

../sysdeps/unix/sysv/linux/bits/waitflags.h:

../bits/waitstatus.h:

../include/endian.h:

../string/endian.h:

../sysdeps/x86/bits/endian.h:

../sysdeps/x86/bits/byteswap.h:

../bits/types.h:

../sysdeps/unix/sysv/linux/x86/bits/typesizes.h:

../sysdeps/x86/bits/byteswap-16.h:

../include/xlocale.h:

../locale/xlocale.h:

../include/sys/types.h:

../posix/sys/types.h:

../include/time.h:

../time/time.h:

../include/sys/select.h:

../misc/sys/select.h:

../sysdeps/x86/bits/select.h:

../sysdeps/unix/sysv/linux/bits/sigset.h:

../sysdeps/unix/sysv/linux/bits/time.h:

../sysdeps/unix/sysv/linux/sys/sysmacros.h:

../sysdeps/x86/bits/pthreadtypes.h:

../include/alloca.h:

../stdlib/alloca.h:

../include/stackinfo.h:

../sysdeps/x86_64/stackinfo.h:

../include/elf.h:

../elf/elf.h:

../sysdeps/generic/dl-dtprocnum.h:

../sysdeps/pthread/allocalim.h:

../include/limits.h:

/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/limits.h:

../include/bits/posix1_lim.h:

../posix/bits/posix1_lim.h:

../sysdeps/unix/sysv/linux/bits/local_lim.h:

/usr/include/linux/limits.h:

../include/bits/posix2_lim.h:

../posix/bits/posix2_lim.h:

../include/bits/xopen_lim.h:

$(common-objpfx)bits/stdio_lim.h:

../bits/stdlib-bsearch.h:

../include/bits/stdlib-float.h:

../stdlib/bits/stdlib-float.h:

../include/sys/stat.h:

../io/sys/stat.h:

../sysdeps/unix/sysv/linux/x86/bits/stat.h:

../sysdeps/unix/sysv/linux/x86_64/sysdep.h:

../sysdeps/unix/sysv/linux/sysdep.h:

../sysdeps/unix/x86_64/sysdep.h:

../sysdeps/unix/sysdep.h:

../sysdeps/generic/sysdep.h:

../sysdeps/generic/dwarf2.h:

../sysdeps/unix/sysv/linux/sys/syscall.h:

/usr/include/x86_64-linux-gnu/asm/unistd.h:

/usr/include/x86_64-linux-gnu/asm/unistd_64.h:

../sysdeps/x86_64/sysdep.h:

../include/libc-internal.h:

../sysdeps/x86_64/hp-timing.h:

../sysdeps/generic/hp-timing-common.h:

../include/string.h:

../sysdeps/x86/string_private.h:

../string/string.h:

../sysdeps/x86/bits/string.h:

../include/bits/string2.h:

../string/bits/string2.h:

../include/sys/param.h:

../misc/sys/param.h:

../include/signal.h:

../signal/signal.h:

../sysdeps/unix/sysv/linux/bits/signum.h:

../sysdeps/unix/sysv/linux/x86/bits/siginfo.h:

../sysdeps/unix/sysv/linux/bits/sigaction.h:

../sysdeps/unix/sysv/linux/x86/bits/sigcontext.h:

../sysdeps/unix/sysv/linux/bits/sigstack.h:

../sysdeps/unix/sysv/linux/x86/sys/ucontext.h:

../sysdeps/pthread/bits/sigthread.h:

../sysdeps/unix/sysv/linux/bits/param.h:

/usr/include/linux/param.h:

/usr/include/x86_64-linux-gnu/asm/param.h:

/usr/include/asm-generic/param.h:

../sysdeps/generic/_itoa.h:

../sysdeps/unix/sysv/linux/x86_64/kernel-features.h:

../sysdeps/unix/sysv/linux/kernel-features.h:

../nptl/descr.h:

../include/sched.h:

../posix/sched.h:

../sysdeps/unix/sysv/linux/bits/sched.h:

../include/setjmp.h:

../setjmp/setjmp.h:

../sysdeps/x86/bits/setjmp.h:

../include/list.h:

../sysdeps/unix/sysv/linux/x86_64/lowlevellock.h:

../include/stap-probe.h:

../sysdeps/unix/sysv/linux/bits/timex.h:

$(common-objpfx)tcb-offsets.h:

../sysdeps/unix/sysv/linux/lowlevellock-futex.h:

../sysdeps/x86_64/nptl/pthreaddef.h:

../sysdeps/unix/sysv/linux/dl-sysdep.h:

../sysdeps/generic/dl-sysdep.h:

../nptl/../nptl_db/thread_db.h:

../include/pthread.h:

../sysdeps/nptl/pthread.h:

../sysdeps/unix/sysv/linux/x86/sys/procfs.h:

../include/sys/time.h:

../time/sys/time.h:

../sysdeps/unix/sysv/linux/x86/sys/user.h:

../sysdeps/generic/unwind.h:

../include/resolv.h:

../resolv/resolv.h:

../include/netinet/in.h:

../inet/netinet/in.h:

../include/sys/socket.h:

../socket/sys/socket.h:

../include/sys/uio.h:

../misc/sys/uio.h:

../sysdeps/unix/sysv/linux/bits/uio.h:

../sysdeps/unix/sysv/linux/bits/socket.h:

../sysdeps/unix/sysv/linux/bits/socket_type.h:

../bits/sockaddr.h:

/usr/include/x86_64-linux-gnu/asm/socket.h:

/usr/include/asm-generic/socket.h:

/usr/include/x86_64-linux-gnu/asm/sockios.h:

/usr/include/asm-generic/sockios.h:

../sysdeps/unix/sysv/linux/bits/in.h:

../include/math.h:

../math/math.h:

../sysdeps/x86/fpu/bits/math-vector.h:

../bits/libm-simd-decl-stubs.h:

../sysdeps/ieee754/bits/huge_val.h:

../sysdeps/ieee754/bits/huge_valf.h:

../sysdeps/x86/bits/huge_vall.h:

../sysdeps/ieee754/bits/inf.h:

../sysdeps/ieee754/bits/nan.h:

../sysdeps/x86/bits/mathdef.h:

../include/bits/mathcalls.h:

../math/bits/mathcalls.h:

../sysdeps/x86/fpu/bits/mathinline.h:

../sysdeps/x86_64/fpu/math_private.h:

../sysdeps/i386/fpu/fenv_private.h:

../include/fenv.h:

../math/fenv.h:

../sysdeps/x86/fpu/include/bits/fenv.h:

../sysdeps/x86/fpu/bits/fenv.h:

../bits/fenvinline.h:

../include/fpu_control.h:

../sysdeps/x86/fpu_control.h:

../sysdeps/generic/math_private.h:

/usr/lib/gcc/x86_64-linux-gnu/5/include/float.h:

../sysdeps/generic/get-rounding-mode.h:

../sysdeps/x86_64/fpu/math_ldbl.h: