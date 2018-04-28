DEVICE_DIR := device/alcatel/ttab

# Inherit from those products. Most specific first.
$(call inherit-product, $(DEVICE_DIR)/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_DEVICE := ttab
PRODUCT_NAME :ttab
PRODUCT_BRAND := alcatel
PRODUCT_MANUFACTURER := alcatel
PRODUCT_MODEL := ttab
