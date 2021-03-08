# SPDX-License-Identifier: GPL-2.0
# CPUfreq core
obj-$(CONFIG_CPU_FREQ)			+= cpufreq.o freq_table.o

# CPUfreq stats
obj-$(CONFIG_CPU_FREQ_STAT)             += cpufreq_stats.o

# CPUfreq times
obj-$(CONFIG_CPU_FREQ_TIMES)		+= cpufreq_times.o

# CPUfreq governors
obj-$(CONFIG_CPU_FREQ_GOV_COMMON)		+= cpufreq_governor.o
obj-$(CONFIG_CPU_FREQ_GOV_ATTR_SET)	+= cpufreq_governor_attr_set.o

obj-$(CONFIG_FINGERPRINT_BOOST)		+= fp-boost.o

##################################################################################
# ARM SoC drivers
obj-$(CONFIG_ARM_EXYNOS_ACME)		+= exynos-acme.o
obj-$(CONFIG_ARM_EXYNOS_UFC)		+= exynos-ufc.o