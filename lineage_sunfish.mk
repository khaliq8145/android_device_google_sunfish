#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := lineage_sunfish

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

RISING_PACKAGE_TYPE := PIXEL

# Lunch banner maintainer variable
RISING_MAINTAINER="Bias Khaliq (Morpheus)"

# Disable/enable blur support
TARGET_ENABLE_BLUR := true

# whether to ship aperture camera
PRODUCT_NO_CAMERA := true

# Wether to ship lawnchair launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# GMS build flags
WITH_GMS := true

# Wether to ship pixel launcher and set it as default launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sunfish-user 13 TQ3A.230805.001.S1 10786265 release-keys" \
    BuildFingerprint=google/sunfish/sunfish:13/TQ3A.230805.001.S1/10786265:user/release-keys \
    DeviceProduct=sunfish \
    RisingChipset="Snapdragon 730G" \
    RisingMaintainer="Bias Khaliq"

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
