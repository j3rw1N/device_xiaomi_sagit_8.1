# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/xiaomi/sagit/full_sagit.mk)

# Inherit some common PE stuff.
TARGET_ARCH := arm64
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_ARCORE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

CUSTOM_BUILD_TYPE=OFFICIAL

PRODUCT_NAME := aosp_sagit
PRODUCT_DEVICE := sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi

# Google client ID.
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="sagit" \
    PRODUCT_NAME="sagit" \
    BUILD_FINGERPRINT="Xiaomi/sagit/sagit:7.1.1/NMF26X/V9.0.1.0.NCAMIEI:user/release-keys" \
    PRIVATE_BUILD_DESC="sagit-user 7.1.1 NMF26X V9.0.1.0.NCAMIEI release-keys"

