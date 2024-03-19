#
# Copyright (C) 2022-2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Sweet stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from r5x device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := r5x
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := lineage_r5x
PRODUCT_MODEL := Realme 5 Series

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := r5x
TARGET_VENDOR_DEVICE_NAME := r5x

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="r5x" \
    PRIVATE_BUILD_DESC="unknown-user 10 QKQ1.200209.002 unknown release-keys"

# RisingOs Flags
RISING_CHIPSET := SM6125
RISING_MAINTAINER := MAdMiZ
WITH_GMS := false
RISING_PACKAGE_TYPE := Vanilla
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
RISING_PACKAGE_TYPE := Gapps
TARGET_EXCLUDES_AUDIOFX := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
