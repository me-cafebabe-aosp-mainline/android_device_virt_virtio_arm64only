#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
TARGET_KERNEL_ARCH := x86_64
TARGET_KERNEL_MODULES_ARCH := x86-64
TARGET_KERNEL_USE ?= 6.6

# Inherit from common
$(call inherit-product, device/virt/virtio-common/device-common.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
