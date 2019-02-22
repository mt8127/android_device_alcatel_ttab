USE_CAMERA_STUB := true

DEVICE_DIR := device/alcatel/ttab
VENDOR_DIR := vendor/alcatel/ttab
KERNEL_DIR := kernel/alcatel/ttab

# Additional includes
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_DIR)/include

# inherit from the proprietary version
-include $(VENDOR_DIR)/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := mt8127
TARGET_BOARD_PLATFORM_GPU := mali-450mp4

# Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

TARGET_NO_BOOTLOADER := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_BOOTLOADER_BOARD_NAME := ttab
TARGET_OTA_ASSERT_DEVICE := ttab

TARGET_INIT_VENDOR_LIB := libinit_ttab
TARGET_USES_64_BIT_BINDER := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1468006400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12852920320
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_HAS_NO_MISC_PARTITION := true

BACKLIGHT_PATH := "/sys/class/leds/lcd-backlight/brightness"

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Kernel
TARGET_KERNEL_CONFIG := ttab_defconfig
TARGET_KERNEL_SOURCE := kernel/alcatel/ttab
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive  androidboot.hardware=mt8127
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_BOOTIMG_MK := device/alcatel/ttab/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --cmdline "$(BOARD_KERNEL_CMDLINE)" --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --board vC29-0

# MTK
BOARD_HAS_MTK_HARDWARE := true

# Graphics
BOARD_EGL_CFG := $(DEVICE_DIR)/configs/egl.cfg

# Surfaceflinger optimization for VD surfaces
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# WIFI
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# BT (added 03/10/2016)
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_DIR)/bluetooth

# RECOVERY
TARGET_RECOVERY_FSTAB := $(DEVICE_DIR)/recovery.fstab

DEVICE_MANIFEST_FILE += $(DEVICE_DIR)/manifest.xml

# shims
TARGET_LD_SHIM_LIBS := \
	/system/lib/egl/libEGL_mali.so|libxlog.so \
	/system/lib/egl/libGLESv1_CM_mali.so|libxlog.so \
	/system/lib/egl/libGLESv2_mali.so|libxlog.so \
	/system/bin/guiext-server|libmtk_symbols.so \
	/system/lib/libgui_ext.so|libmtk_symbols.so \
	/system/lib/hw/hwcomposer.mt8127.so|libmtk_symbols.so \
	/system/lib/hw/hwcomposer.mt8127.so|libxlog.so \
	/system/lib/libMtkOmxVenc.so|libmtk_symbols.so \
	/system/vendor/lib/libvcodecdrv.so|libmtk_symbols.so \
	/system/lib/libcam_utils.so|libmtk_symbols.so \
	/system/lib/libcam.utils.sensorlistener.so|libmtk_symbols.so \
	/system/vendor/lib/libwvm.so|libmtk_symbols.so \
    /system/lib/hw/gps.mt8127.so|libboringssl-compat.so
# SELinux
BOARD_SECCOMP_POLICY := $(DEVICE_DIR)/seccomp
#BOARD_SEPOLICY_DIRS += $(DEVICE_DIR)/sepolicy
