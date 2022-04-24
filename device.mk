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

# OTA
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
  boot \
  system \
  vendor \
  product


# Assert
TARGET_OTA_ASSERT_DEVICE := guamp

# SOONG Namespaces
PRODUCT_SOONG_NAMESPACES=device/motorola/guamp kernel/motorola/guamp hardware/qcom-caf/bootctrl hardware/google/pixel

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
