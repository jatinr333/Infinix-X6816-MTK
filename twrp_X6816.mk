#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X6816 device
$(call inherit-product, device/infinix/X6816/device.mk)

PRODUCT_DEVICE := X6816
PRODUCT_NAME := twrp_X6816
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6816
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6816_xq683-user 11 RP1A.200720.011 254692 release-keys"

BUILD_FINGERPRINT := Infinix/X6816-OP/X6816:11/RP1A.200720.011/220310V217:user/release-keys
