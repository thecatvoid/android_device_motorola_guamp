DEVICE_PATH := device/motorola/guamp

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := guamp

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2048000000
BOARD_USES_PRODUCTIMAGE := true
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 50616843776
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VNDK_VERSION := current
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# Kernel
BOARD_KERNEL_CMDLINE := \
console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0x4a90000 \
androidboot.hardware=qcom androidboot.console=ttyMSM0 \
androidboot.memcg=1 lpm_levels.sleep_disabled=1 \
video=vfb:640x400,bpp=32,memsize=3072000 \
msm_rtb.filter=0x237 service_locator.enable=1 \
swiotlb=2048 loop.max_part=7 androidboot.hab.csv=16 \
androidboot.hab.product=guamp androidboot.hab.cid=50 buildvariant=eng	

BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE          := 0x00000000
BOARD_KERNEL_OFFSET        := 0x00008000
BOARD_RAMDISK_OFFSET       := 0x01000000
BOARD_KERNEL_SECOND_OFFSET := 0x00000000
BOARD_KERNEL_TAGS_OFFSET   := 0x00000100
BOARD_DTB_OFFSET           := 0x01f00000

BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --os_patch_level 2022-04
BOARD_MKBOOTIMG_ARGS += --os_version 11.0.0

TARGET_KERNEL_ARCH := arm64
TARGET_NO_KERNEL := false
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/recovery.fstab
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTB := false
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := vendor/guamp_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/guamp
TARGET_KERNEL_VERSION := 4.19
TARGET_KERNEL_CLANG_COMPILE := true

# Filesystem
TARGET_FS_CONFIG_GEN := \
    $(DEVICE_PATH)/config.fs \
    $(DEVICE_PATH)/mot_aids.fs

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_bengal
TARGET_RECOVERY_DEVICE_MODULES := libinit_bengal

# Super
BOARD_SUPER_PARTITION_SIZE := 9763291136
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 4877451264
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product

# Power
TARGET_RPM_MASTER_STAT := "/d/rpmh/master_stats"
TARGET_RPM_STAT := "/d/rpmh/stats"
TARGET_WLAN_POWER_STAT := "/sys/kernel/wlan/power_stats"

# Display DPI
TARGET_SCREEN_DENSITY := 436

# Drm
TARGET_ENABLE_MEDIADRM_64 := true

# Bootloader 
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := bengal
TARGET_BOOTLOADER_BOARD_NAME := bengal
TARGET_BOARD_PLATFORM_GPU := qcom-adreno610

# Broken R
BUILD_BROKEN_DUP_RULES := true

# Power
TARGET_USES_INTERACTION_BOOST := true
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Platform
BOARD_USES_QCOM_HARDWARE := true

# RIL
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_RIL_VARIANT := caf

# Treble
BOARD_VNDK_VERSION := current

# UEFI
TARGET_USES_UEFI := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Misc
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_PRODUCT := product
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
TARGET_USES_64_BIT_BINDER := true
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_USES_ION := true
TARGET_SUPPORTS_64_BIT_APPS := true
BOARD_VENDOR := motorola
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/props/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/props/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/props/product.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/props/system_ext.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/props/odm.prop

# Security patch level
VENDOR_SECURITY_PATCH := 2022-01-01

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.atrace@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.boot@1.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.cas@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.gnss@2.1-service-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.graphics.mapper-impl-qti-display.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.health@2.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.neuralnetworks@1.3-service-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.sensors@2.0-multihal.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.usb@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.wifi.hostapd.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/android.hardware.wifi@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_android.hardware.drm@1.3-service.clearkey.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/manifest_android.hardware.drm@1.3-service.widevine.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/power.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.gnss@4.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.hardware.display.allocator-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.hardware.display.composer-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.hardware.servicetracker@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vintf/vendor.qti.hardware.vibrator.service.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/vintf/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/vintf/framework_compatibility_matrix.xml

# SELinux
include device/qcom/sepolicy_vndr/SEPolicy.mk
SELINUX_IGNORE_NEVERALLOWS := true
