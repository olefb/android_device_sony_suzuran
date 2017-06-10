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
TARGET_OTA_ASSERT_DEVICE := E5803,E5823,suzuran

TARGET_KERNEL_CONFIG := aosp_kitakami_suzuran_defconfig

# TWRP Recovery
TW_THEME := portrait_hdpi
TW_IGNORE_ABS_MT_TRACKING_ID := true

# Inherit kitakami common device parts
$(call inherit-product, device/sony/suzuran/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit Choose-A GSM telephony parts
PRODUCT_PROPERTY_OVERRIDES += telephony.lteOnGSMDevice=1
$(call inherit-product, vendor/choose-a/config/gsm.mk)

# Override Product Name for Choose-A
PRODUCT_DEVICE := suzuran
PRODUCT_NAME := choose_suzuran
PRODUCT_MODEL := Xperia Z5 Compact
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

# Suzuran Props
TARGET_SYSTEM_PROP += device/sony/suzuran/system.prop
