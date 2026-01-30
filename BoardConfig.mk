#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/houji

# Inherit from sm8650-common
include device/xiaomi/sm8650-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 440

# Dtb/o
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/dtb

# Kernel
BOARD_VENDOR_KERNEL_MODULES_LOAD += \
	cs35l41_dlkm.ko \
	goodix_fod.ko \
	synaptics_tcm2.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += \
	synaptics_tcm2.ko

BOOT_KERNEL_MODULES += \
	synaptics_tcm2.ko

# OTA
TARGET_OTA_ASSERT_DEVICE := houji,houjiin

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/properties/odm.prop

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/xiaomi/houji/BoardConfigVendor.mk
