#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from device
TARGET_BOOTS_16K := true
TARGET_PREBUILT_KERNEL_PAGE_SIZE := 16k
$(call inherit-product, device/virt/virtio_arm64only/device.mk)

$(call enforce-product-packages-exist,\
    android.hardware.health@2.0-impl-default.recovery \
    DeviceDiagnostics \
    product_manifest.xml)

PRODUCT_NAME := aosp_virtio_arm64only_16k
PRODUCT_DEVICE := virtio_arm64only_16k
PRODUCT_BRAND := VirtIO
PRODUCT_MANUFACTURER := VirtIO
PRODUCT_MODEL := VirtIO arm64-only 16k

PRODUCT_VENDOR_PROPERTIES += \
    ro.soc.manufacturer=$(PRODUCT_MANUFACTURER) \
    ro.soc.model=$(PRODUCT_DEVICE)
