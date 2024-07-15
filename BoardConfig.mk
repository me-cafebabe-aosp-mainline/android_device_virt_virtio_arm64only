#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common
include device/virt/virtio-common/BoardConfigCommon.mk

USES_DEVICE_VIRT_VIRTIO_X86_64 := true
DEVICE_PATH := device/virt/virtio_x86_64

# Arch
TARGET_CPU_ABI := x86_64
TARGET_ARCH := x86_64
TARGET_ARCH_VARIANT := x86_64
TARGET_2ND_CPU_ABI := x86
TARGET_2ND_ARCH := x86
TARGET_2ND_ARCH_VARIANT := x86_64

# Kernel
BOARD_KERNEL_CMDLINE += \
    8250.nr_uarts=1 \
    console=ttyS0
