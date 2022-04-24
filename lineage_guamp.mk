# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from guamp device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := guamp
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_guamp
PRODUCT_MODEL := moto g(9) play

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := guamp
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="guamp_retail-user 11 RPXS31.Q2-58-17-4-4 711c1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/guamp_retail/guamp:11/RPXS31.Q2-58-17-4-4/711c1:user/release-keys
