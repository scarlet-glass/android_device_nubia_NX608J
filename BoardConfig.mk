#
# Copyright (C) 2017 The Android Open Source Project
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

LOCAL_PATH := device/nubia/NX608J

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_BOARD_SUFFIX := _64

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# exFAT drivers included in the kernel
TW_NO_EXFAT_FUSE := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
TW_CRYPTO_SYSTEM_VOLD_DEBUG := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 0x800
BOARD_KERNEL_TAGS_OFFSET := 0x80000100
BOARD_RAMDISK_OFFSET := 0x81000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 1067958957
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 1067958957
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x10000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x140000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xd03379e00
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
PRODUCT_SUPPORTS_VERITY := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_NEW_ION_HEAP := true
TW_INCLUDE_CRYPTO := true
BOARD_FIX_NUBIA_OTA := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 2047
TW_EXCLUDE_SUPERSU := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/nubia/NX608J/twrp.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INPUT_BLACKLIST := "hbtp_vm"
#add chinese language
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
