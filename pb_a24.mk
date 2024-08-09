# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common pbrp stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from a24 device
$(call inherit-product, device/samsung/a24/device.mk)

PRODUCT_DEVICE := a24
PRODUCT_NAME := pb_a24
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A245F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
