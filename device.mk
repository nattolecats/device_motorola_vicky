#
# Copyright (C) 2023 The Evolution-X Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/motorola/vicky
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.mt6789 \
    bootctrl.mt6789.recovery \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Overlays
DEVICE_PACKAGE_OVERLAYS := \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-evolution
