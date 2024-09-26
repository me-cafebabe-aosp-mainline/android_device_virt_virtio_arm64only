#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_virtio_arm64only.mk \
    $(LOCAL_DIR)/lineage_virtio_arm64only.mk \
    $(LOCAL_DIR)/lmodroid_virtio_arm64only.mk

$(foreach build_type, user userdebug eng, \
    $(eval COMMON_LUNCH_CHOICES += aosp_virtio_arm64only-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += lineage_virtio_arm64only-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += lmodroid_virtio_arm64only-$(build_type)))
