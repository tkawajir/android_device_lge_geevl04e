#
# Copyright (C) 2011 The Android Open-Source Project
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

include device/lge/gproj-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/lge/geevl04e/include

BOARD_KERNEL_CMDLINE := vmalloc=600M console=ttyHSL0,115200,n8 lpj=67677 user_debug=31 msm_rtb.filter=0x0 ehci-hcd.park=3 coresight-etm.boot_enable=0 androidboot.hardware=geefhd

TARGET_KERNEL_CONFIG := cyanogenmod_geevl04e_defconfig

BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/geevl04e/bluetooth/vnd_gk.txt

TARGET_BOOTLOADER_BOARD_NAME := geefhd
TARGET_BOOTLOADER_NAME=geevl04e

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/geevl04e/bluetooth

BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4334
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"
TARGET_RECOVERY_FSTAB = device/lge/geevl04e/twrp.fstab
ENABLE_LOKI_RECOVERY := true
BOARD_RECOVERY_SWIPE := true

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2621440000 # 2500M. Actually 2560, but hold some in reserve

-include vendor/lge/geevl04e/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := e986,e980,geefhd,e988,gkatt,geevl04e

TARGET_RELEASETOOLS_EXTENSIONS := device/lge/gproj-common/loki

MALLOC_IMPL := dlmalloc

COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

#TWRP config
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_REAL_SDCARD := true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_INCLUDE_JB_CRYPTO := true
TW_FLASH_FROM_STORAGE := true
TW_NO_USB_STORAGE := true
TW_NO_SCREEN_TIMEOUT := true
RECOVERY_VARIANT := twrp

TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_SD"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_SD"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"

BOARD_SEPOLICY_DIRS += \
        device/lge/geevl04e/sepolicy
