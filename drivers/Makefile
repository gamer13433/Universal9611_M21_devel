# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the Linux kernel device drivers.
#
# 15 Sep 2000, Christoph Hellwig <hch@infradead.org>
# Rewritten to use lists instead of if-statements.
#

obj-y				+= irqchip/

obj-$(CONFIG_GENERIC_PHY)	+= phy/

# GPIO must come after pinctrl as gpios may need to mux pins etc
obj-$(CONFIG_PINCTRL)		+= pinctrl/
obj-$(CONFIG_GPIOLIB)		+= gpio/

obj-$(CONFIG_PCI)		+= pci/
obj-$(CONFIG_PCI_ENDPOINT)	+= pci/endpoint/
# PCI dwc controller drivers
obj-y				+= pci/dwc/

obj-y				+= video/

# IPMI must come before ACPI in order to provide IPMI opregion support
obj-y				+= char/ipmi/

# PnP must come after ACPI since it will eventually need to check if acpi
# was used and do nothing if so
obj-y				+= amba/

obj-y				+= clk/
# Many drivers will want to use DMA so this has to be made available
# really early.
obj-$(CONFIG_DMADEVICES)	+= dma/

# SOC specific infrastructure drivers.
obj-y				+= soc/

# regulators early, since some subsystems rely on them to initialize
obj-$(CONFIG_REGULATOR)		+= regulator/


# tty/ comes before char/ so that the VT console is the boot-time
# default.
obj-y				+= tty/
obj-y				+= char/

# iommu/ comes before gpu as gpu are using iommu controllers
obj-$(CONFIG_IOMMU_SUPPORT)	+= iommu/

# gpu/ comes after char for AGP vs DRM startup and after iommu
obj-y				+= gpu/

# i810fb and intelfb depend on char/agp/
obj-$(CONFIG_FB_I810)           += video/fbdev/i810/
obj-$(CONFIG_FB_INTEL)          += video/fbdev/intelfb/

obj-$(CONFIG_USE_MUIC)		+= muic/
obj-y				+= base/ block/ misc/ mfd/ nfc/
obj-$(CONFIG_DAX)		+= dax/
obj-$(CONFIG_DMA_SHARED_BUFFER) += dma-buf/
obj-$(CONFIG_IDE)		+= ide/
obj-$(CONFIG_SCSI)		+= scsi/
obj-$(CONFIG_MTD)		+= mtd/
obj-$(CONFIG_SPI)		+= spi/
obj-$(CONFIG_HSI)		+= hsi/
obj-y				+= net/
obj-$(CONFIG_UIO)		+= uio/
obj-$(CONFIG_VFIO)		+= vfio/
obj-$(CONFIG_PCCARD)		+= pcmcia/
obj-$(CONFIG_ZORRO)		+= zorro/
obj-$(CONFIG_ATA_OVER_ETH)	+= block/aoe/
obj-$(CONFIG_PARIDE) 		+= block/paride/
obj-$(CONFIG_TC)		+= tc/
obj-$(CONFIG_UWB)		+= uwb/
obj-$(CONFIG_USB_PHY)		+= usb/
obj-$(CONFIG_USB)		+= usb/
obj-$(CONFIG_USB_SUPPORT)	+= usb/
obj-$(CONFIG_PCI)		+= usb/
obj-$(CONFIG_USB_GADGET)	+= usb/
obj-$(CONFIG_OF)		+= usb/
obj-$(CONFIG_SERIO)		+= input/serio/
obj-$(CONFIG_GAMEPORT)		+= input/gameport/
obj-$(CONFIG_INPUT)		+= input/
obj-$(CONFIG_RTC_LIB)		+= rtc/
obj-y				+= i2c/ media/
obj-y				+= power/
obj-$(CONFIG_HWMON)		+= hwmon/
obj-$(CONFIG_THERMAL)		+= thermal/
obj-$(CONFIG_WATCHDOG)		+= watchdog/
obj-$(CONFIG_MD)		+= md/
obj-$(CONFIG_CPU_FREQ)		+= cpufreq/
obj-$(CONFIG_CPU_IDLE)		+= cpuidle/
obj-y				+= mmc/
obj-$(CONFIG_NEW_LEDS)		+= leds/
obj-y				+= firmware/
obj-$(CONFIG_CRYPTO)		+= crypto/
ifndef CONFIG_ARCH_USES_GETTIMEOFFSET
obj-y				+= clocksource/
endif
obj-$(CONFIG_HID)		+= hid/
obj-$(CONFIG_OF)		+= of/
obj-$(CONFIG_PWM)		+= pwm/
obj-$(CONFIG_STAGING)		+= staging/

obj-$(CONFIG_PM_DEVFREQ)	+= devfreq/
obj-$(CONFIG_EXTCON)		+= extcon/
obj-$(CONFIG_IIO)		+= iio/
obj-$(CONFIG_PERF_EVENTS)	+= perf/
obj-$(CONFIG_ANDROID)		+= android/
obj-$(CONFIG_NVMEM)		+= nvmem/
obj-$(CONFIG_FPGA)		+= fpga/
obj-$(CONFIG_FSI)		+= fsi/
obj-$(CONFIG_TEE)		+= tee/
obj-$(CONFIG_MULTIPLEXER)	+= mux/

obj-$(CONFIG_EXYNOS_BTS)	+= bts/
obj-$(CONFIG_TRUSTONIC_TEE)     += gud/
ifeq ($(CONFIG_BATTERY_SAMSUNG_V2), y)
  obj-$(CONFIG_BATTERY_SAMSUNG)   += battery_v2/
else
  obj-$(CONFIG_BATTERY_SAMSUNG)   += battery/
endif
obj-$(CONFIG_SWITCH)     	+= switch/

obj-$(CONFIG_VISION_SUPPORT)    += vision/

obj-$(CONFIG_SEC_EXT)           += samsung/

# FIVE TEE driver
obj-$(CONFIG_FIVE_TEE_DRIVER)	+= security/samsung/five_tee_driver/
obj-$(CONFIG_ICD)		+= security/samsung/icdrv/

# Sensor Hub
obj-$(CONFIG_SENSORS_SSP) += sensorhub/


# vibrator
obj-y				+= vibrator/

# Fingerprint
obj-$(CONFIG_SENSORS_FINGERPRINT) += fingerprint/


#TZIC
obj-y  += security/samsung/tzic/

# SPU signature verify
obj-$(CONFIG_SPU_VERIFY) += spu_verify/
