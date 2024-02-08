#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit from ares device
$(call inherit-product, device/xiaomi/ares/device.mk)

PRODUCT_DEVICE := ares
PRODUCT_NAME := twrp_ares
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ares
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ares-user 11 RP1A.200720.011 V12.5.12.0.RKJCNXM release-keys"

BUILD_FINGERPRINT := Redmi/ares/ares:11/RP1A.200720.011/V12.5.12.0.RKJCNXM:user/release-keys
