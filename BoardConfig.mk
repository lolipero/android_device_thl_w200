LOCAL_PATH := device/ThL/W200

USE_CAMERA_STUB := true

# inherit from the proprietary version
include vendor/ThL/W200/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := mt6589
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
TARGET_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_BOOTLOADER_BOARD_NAME := w200

BOARD_HAS_NO_SELECT_BUTTON := true

# Recovery
RECOVERY_NAME := ThL W200 CWM-based Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
#CWM_EMMC_BOOT_DEVICE_SIZE := 0x00380000
#CWM_EMMC_BOOT_DEVICE_SIZE := 0x00380000
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
#CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x00480000
#CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x00480000
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
#CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00060000
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_HAS_MTK := true
# MTK Partitions Defines
MTK_BOOT_DEVICE_NAME := /dev/bootimg
MTK_BOOT_DEVICE_SIZE := 6291456
MTK_RECOVERY_DEVICE_NAME := /dev/recovery
MTK_RECOVERY_DEVICE_SIZE := 10485760
MTK_UBOOT_DEVICE_NAME := /dev/uboot
MTK_UBOOT_DEVICE_SIZE := 1284096
#MTK_NVRAM_DEVICE_NAME := /dev/nvram
#MTK_NVRAM_DEVICE_SIZE := 5242880

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 576716800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 987758592
# Original Rom
#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072

