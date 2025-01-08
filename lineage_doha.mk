#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from doha device
$(call inherit-product, device/motorola/doha/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_doha
PRODUCT_DEVICE := doha
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT2019

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="doha_retail-user 10 QPI30.28-Q3-28-26-4-1 2f8cb release-keys" \
    BuildFingerprint=motorola/doha_retail/doha:10/QPI30.28-Q3-28-26-4-1/2f8cb:user/release-keys \
    DeviceProduct=doha_retail
