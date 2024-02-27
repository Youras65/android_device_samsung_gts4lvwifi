#
# Copyright (C) 2019-2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gts4lvwifi device
$(call inherit-product, device/samsung/gts4lvwifi/device.mk)

# Inherit some common risingOS stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts4lvwifi
PRODUCT_NAME := rising_gts4lvwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T720
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := gts4lvwifixx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# RisingOS flags
WITH_GMS := true
TARGET_PREBUILT_PIXEL_LAUNCHER := true
TARGET_ENABLE_PIXEL_FEATURES := true
RISING_MAINTAINER := Youras65
RISING_CHIPSET := Snapdragon670
RISING_STORAGE := 64GB
RISING_RAM := 4GB
RISING_BATTERY := 7040mAh
RISING_DISPLAY := 2560×1600

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=gts4lvwifixx \
    PRIVATE_BUILD_DESC="gts4lvwifixx-user 11 RP1A.200720.012 T720XXS3DWA1 release-keys"

BUILD_FINGERPRINT := "samsung/gts4lvwifixx/gts4lvwifi:11/RP1A.200720.012/T720XXS3DWA1:user/release-keys"
