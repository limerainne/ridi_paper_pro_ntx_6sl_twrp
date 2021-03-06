# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := false
TARGET_CPU_VARIANT :=cortex-a9

# Kernel
TARGET_PREBUILT_KERNEL := device/RIDIBOOKS/PAPER_PRO/kernel
BOARD_KERNEL_CMDLINE := console=ttymxc0,115200 init=/init androidboot.console=ttymxc0 video=mxcepdcfb:E060SCM,bpp=16 video=mxc_elcdif_fb:off no_console_suspend
BOARD_KERNEL_BASE := 0x80800000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := false
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 6258688
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 402644992
BOARD_CACHEIMAGE_PARTITION_SIZE := 402644992
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 536862720
#BOARD_KERNEL_PAGESIZE * 64
BOARD_FLASH_BLOCK_SIZE := 131072

# Storage
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_REAL_SDCARD := false   # false for disable emulated sd, but not useful for enabling emulated sd?
# comment below to disable this flag
# RECOVERY_SDCARD_ON_DATA := true
TW_NO_EXFAT_FUSE := true
TARGET_RECOVERY_FSTAB := device/RIDIBOOKS/PAPER_PRO/recovery.fstab

# Storage -- TWRP
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/extsd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "extsd"

# Screen
BOARD_HAS_FLIPPED_SCREEN := true
TW_BRIGHTNESS_PATH := /sys/class/backlight/mxc_msp430_fl.0/brightness
TW_DEFAULT_BRIGHTNESS := 50
TW_MAX_BRIGHTNESS := 100
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true

RECOVERY_TOUCHSCREEN_FLIP_X := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true

#IMX EPDC
TW_IMX_EINK := true
TW_IMX_EINK_ROTATE := 1
TW_IMX_EINK_MONOCHROME := true

#MISC
TW_NO_REBOOT_BOOTLOADER := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/mc13892_bat
TW_EXTRA_LANGUAGES := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#: do not use serial for backup directory name
TW_EXCLUDE_TWRPAPP := true
# TW_DEFAULT_LANGUAGE := ko_KR

#THEME
TW_THEME := portrait_hdpi
TW_CUSTOM_THEME := $(if $(wildcard device/RIDIBOOKS/PAPER_PRO/theme),device/RIDIBOOKS/PAPER_PRO/theme)

# ref: https://forum.xda-developers.com/android/software/twrp-flags-boardconfig-mk-t3333970

