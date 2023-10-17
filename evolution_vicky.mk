#
# Copyright (C) 2023 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit from vicky device
$(call inherit-product, device/motorola/vicky/device.mk)

PRODUCT_DEVICE := vicky
PRODUCT_NAME := evolution_vicky
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g72
PRODUCT_MANUFACTURER := motorola

# Evolution X flags
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vicky_g_vext-user 12 S3SVS32.45-28-2-3 c4e712 release-keys"

BUILD_FINGERPRINT := motorola/vicky_g_vext/vicky:12/S3SVS32.45-28-2-3/c4e712:user/release-keys
