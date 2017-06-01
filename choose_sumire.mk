# Copyright 2014 The Android Open Source Project
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

# Assert
TARGET_OTA_ASSERT_DEVICE := E6653,E6683,sumire

TARGET_KERNEL_CONFIG := aosp_kitakami_sumire_defconfig

# TWRP Recovery
DEVICE_RESOLUTION := 1440x814
TW_THEME := portrait_hdpi
TW_IGNORE_ABS_MT_TRACKING_ID := true

# Inherit kitakami common device parts
$(call inherit-product, device/sony/sumire/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit Omni GSM telephony parts
PRODUCT_PROPERTY_OVERRIDES += telephony.lteOnGSMDevice=1
$(call inherit-product, vendor/choose-a/config/gsm.mk)

# Override Product Name for OmniROM
PRODUCT_DEVICE := sumire
PRODUCT_NAME := choose_sumire
PRODUCT_MODEL := Xperia Z5
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

# Suzu Props
TARGET_SYSTEM_PROP += device/sony/sumire/system.prop
