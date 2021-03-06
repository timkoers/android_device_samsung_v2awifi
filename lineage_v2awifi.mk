# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from v2awifi device
$(call inherit-product, device/samsung/v2awifi/device.mk)

#PRODUCT_NAME := full_v2awifi
PRODUCT_DEVICE := v2awifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T900

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_v2awifi
PRODUCT_DEVICE := v2awifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T900 \
    PRODUCT_NAME=v2awifi \
    PRODUCT_DEVICE=v2awifi \
    TARGET_DEVICE=v2awifi
