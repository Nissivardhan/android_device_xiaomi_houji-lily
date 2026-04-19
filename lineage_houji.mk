#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from houji device.
$(call inherit-product, device/xiaomi/houji/device.mk)

## Device identifier
PRODUCT_DEVICE := houji
PRODUCT_NAME := lineage_houji
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23127PN0CG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "houji houji 15 AQ3A.240627.003 OS2.0.201.0.VNCMIXM release-keys")

BUILD_FINGERPRINT := Xiaomi/houji/houji:15/AQ3A.240627.003/OS2.0.201.0.VNCMIXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

## Lunaris flags

# ---------------------------
# Core Groups
# ---------------------------
LUNARIS_CPU_SMALL_CORES := 0,1,2,3
LUNARIS_CPU_BIG_CORES   := 4,5,6
LUNARIS_CPU_PRIME_CORE  := 7
LUNARIS_ALL_CORES       := 0-7

# ---------------------------
# Background Tasks
# ---------------------------
LUNARIS_CPU_BG          := 0-1
LUNARIS_CPU_LIMIT_BG    := 0-1

# ---------------------------
# Foreground / UI Tasks
# ---------------------------
LUNARIS_CPU_FG          := 0-3,5
LUNARIS_CPU_LIMIT_UI    := 0-3

# ---------------------------
# Display / Animation
# ---------------------------
LUNARIS_CPU_DISPLAY     := 0-3,4

# Enable optimized dexopt tuning
TARGET_OPTIMIZED_DEXOPT := true

# GMS CORE
TARGET_USES_CORE_GAPPS := true

# Ship BCR
WITH_BCR := true

# UDFPS
TARGET_CUSTOM_UDFPS := true
