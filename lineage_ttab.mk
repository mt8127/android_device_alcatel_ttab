
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/alcatel/ttab/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

PRODUCT_CHARACTERISTICS := tablet

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ttab
PRODUCT_NAME := lineage_ttab
PRODUCT_BRAND := alcatel
PRODUCT_MODEL := ttab
PRODUCT_MANUFACTURER := alcatel

PRODUCT_GMS_CLIENTID_BASE := android-alcatel
