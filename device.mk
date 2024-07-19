#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel (Prebuilt)
TARGET_PREBUILT_KERNEL_ARCH := arm64
TARGET_PREBUILT_KERNEL_MODULES_ARCH := arm64
TARGET_PREBUILT_KERNEL_USE ?= 6.6

# Inherit from common
$(call inherit-product, device/virt/virtio-common/device-common.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
