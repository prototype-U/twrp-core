## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := core

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/core/device_core.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := core
PRODUCT_NAME := cm_core
PRODUCT_BRAND := samsung
PRODUCT_MODEL := core
PRODUCT_MANUFACTURER := samsung
