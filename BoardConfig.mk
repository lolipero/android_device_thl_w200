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

# Prebuilt Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# Recovery custom kernel (tests)
#TARGET_PREBUILT_RECOVERY_KERNEL := kernel/ThL/W200/kernel
#TARGET_KERNEL_CONFIG := W200_defconfig
#TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

# Instalation devices compatibility
TARGET_OTA_ASSERT_DEVICE := MTK,mtk,THL,ThL,thl,THL_W200,THL_w200,Thl_W200,Thl_w200,thl_W200,thl_w200,THL_W200_MT6589,THL_w200_MT6589,Thl_W200_MT6589,Thl_w200_MT6589,thl_W200_MT6589,thl_w200_MT6589,THL_W200_mt6589,THL_w200_mt6589,Thl_W200_mt6589,Thl_w200_mt6589,thl_W200_mt6589,thl_w200_mt6589,W200,w200

# Disable make bootloader make didnt find it
TARGET_NO_BOOTLOADER := true

BOARD_HAS_NO_SELECT_BUTTON := true

# Skip recovery installation (error maybe because a bad recovery to install build; not enought functions)
#TARGET_NO_SEPARATE_RECOVERY := true
# Recovery (Basic config)
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.recovery.rc
TARGET_NO_SEPARATE_RECOVERY := true

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
TARGET_USERIMAGES_USE_EXT4 := false
BOARD_FLASH_BLOCK_SIZE := 131072

