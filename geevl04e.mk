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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Init files
LOCAL_PATH := device/lge/geevl04e
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab_dcm.qcom:root/fstab_dcm.qcom \
    $(LOCAL_PATH)/rootdir/sbin/setup_fs:root/sbin/setup_fs

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := full_geevl04e
PRODUCT_DEVICE := geevl04e
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G Pro
PRODUCT_MANUFACTURER := lge
PRODUCT_RESTRICT_VENDOR_FILES := false

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/geevl04e/device.mk)
$(call inherit-product-if-exists, vendor/lge/geevl04e/geevl04e-vendor.mk)
