# Necessary flags
DEVICE_PATH := device/motorola/guamp
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
PRODUCT_BUILD_RECOVERY_IMAGE := true
TARGET_NO_RECOVERY := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true
BOARD_BUILD_PRODUCT_IMAGE := true
BOARD_BUILD_VENDOR_IMAGE := true
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    recovery \
    system \
    vendor \
    vbmeta \
    vbmeta_system

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Assert
TARGET_OTA_ASSERT_DEVICE := guamp

# SOONG Namespaces
PRODUCT_SOONG_NAMESPACES=device/motorola/guamp kernel/motorola/guamp hardware/qcom-caf/bootctrl

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/motorola/guamp/guamp-vendor.mk)

PRODUCT_ENFORCE_VINTF_MANIFEST := true

PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage/lineage-sdk \
    $(LOCAL_PATH)/overlay-lineage/packages/apps/Snap

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Debug
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1 \
    ro.control_privapp_permissions=log
