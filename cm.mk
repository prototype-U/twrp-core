## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := arubaslim

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/arubaslim/device_arubaslim.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_arubaslim
PRODUCT_DEVICE := arubaslim
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I8262
PRODUCT_MANUFACTURER := Samsung
PRODUCT_CHARACTERISTICS := phone
