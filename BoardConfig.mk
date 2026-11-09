#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3238002688
BOARD_VENDORIMAGE_PARTITION_SIZE := 620756992

# Include the common OEM chipset BoardConfig.
include device/motorola/sm6125-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/doha

# Kernel
TARGET_KERNEL_CONFIG += vendor/motorola/doha.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include the proprietary files BoardConfig.
include vendor/motorola/doha/BoardConfigVendor.mk
