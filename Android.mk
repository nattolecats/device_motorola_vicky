#
# Copyright (C) 2023 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),vicky)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
