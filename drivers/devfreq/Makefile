# SPDX-License-Identifier: GPL-2.0
ccflags-y += -Ofast
obj-$(CONFIG_PM_DEVFREQ)	+= devfreq.o
obj-$(CONFIG_PM_DEVFREQ_EVENT)	+= devfreq-event.o
obj-$(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)	+= governor_simpleondemand.o
obj-$(CONFIG_DEVFREQ_GOV_SIMPLE_EXYNOS)	+= governor_simpleexynos.o
obj-$(CONFIG_DEVFREQ_GOV_SIMPLE_INTERACTIVE)	+= governor_simpleinteractive.o
obj-$(CONFIG_DEVFREQ_GOV_SIMPLE_USAGE)	+= governor_simpleusage.o
obj-$(CONFIG_DEVFREQ_GOV_PERFORMANCE)	+= governor_performance.o
obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o

# DEVFREQ Drivers
obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra-devfreq.o

# DEVFREQ Event Drivers
obj-$(CONFIG_PM_DEVFREQ_EVENT)		+= event/
obj-$(CONFIG_ARM_EXYNOS_DEVFREQ)        += exynos/

# DEVFREQ Boost
obj-$(CONFIG_DEVFREQ_BOOST)		+= devfreq_boost.o