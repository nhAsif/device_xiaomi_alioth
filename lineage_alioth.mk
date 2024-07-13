#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_SUPPORTS_QUICK_TAP := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/alioth_global/alioth:13/TKQ1.221114.001/V816.0.2.0.TKHMIXM:user/release-keys

# Matrixx
MATRIXX_BUILD_TYPE := FAN-EDITON
MATRIXX_MAINTAINER := nhAsif
MATRIXX_CHIPSET := SM8250
MATRIXX_BATTERY := 4520mAh
MATRIXX_DISPLAY := 1080x2400
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true