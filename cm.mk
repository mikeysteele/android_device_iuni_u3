#
# Copyright 2012 The Android Open Source Project
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

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/iuni/u3/u3.mk)

PRODUCT_NAME := cm_u3
PRODUCT_DEVICE := u3
PRODUCT_BRAND := iuni
PRODUCT_MODEL := u3
PRODUCT_MANUFACTURER := iuni

# Kernel
TARGET_KERNEL_SOURCE := kernel/iuni/u3
TARGET_KERNEL_CONFIG := u3_defconfig

$(call inherit-product-if-exists, vendor/iuni/u3/u3-vendor.mk)
