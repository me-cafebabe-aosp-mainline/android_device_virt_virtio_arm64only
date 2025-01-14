#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from upper BoardConfig.mk
include device/virt/virtio_arm64only/BoardConfig.mk

# Kernel
TARGET_KERNEL_CONFIG += lineageos/pagesize_16k.config
