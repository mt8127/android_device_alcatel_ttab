# Release name
PRODUCT_RELEASE_NAME := ttab

# Inherit device configuration
$(call inherit-product, device/alcatel/ttab/full_ttab.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ttab
PRODUCT_NAME := lineage_ttab
PRODUCT_BRAND := alcatel
PRODUCT_MODEL := ttab
PRODUCT_MANUFACTURER := alcatel
PRODUCT_RELEASE_NAME := ttab
PRODUCT_GMS_CLIENTID_BASE := android-alcatel
