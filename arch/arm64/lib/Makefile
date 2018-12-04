# SPDX-License-Identifier: GPL-2.0

ccflags-y += -Ofast
lib-y		:= clear_user.o delay.o copy_from_user.o		\
		   copy_to_user.o copy_in_user.o copy_page.o		\
		   clear_page.o insn.o memchr.o memcpy.o csum.o		\
		   memset.o memcmp.o strcmp.o strncmp.o strlen.o	\
		   strnlen.o strchr.o strrchr.o tishift.o old/old_memcpy.o old/old_memcmp.o

ifeq ($(CONFIG_KERNEL_MODE_NEON), y)
obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
CFLAGS_REMOVE_xor-neon.o	+= -mgeneral-regs-only
CFLAGS_xor-neon.o		+= -ffreestanding
endif


ifeq ($(ld-name),lld)
# https://bugs.llvm.org/show_bug.cgi?id=35841
obj-$(CONFIG_ARM64_LSE_ATOMICS) += atomic_ll_sc.o
else

endif


lib-$(CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE) += uaccess_flushcache.o