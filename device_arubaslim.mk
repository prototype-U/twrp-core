$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/arubaslim/arubaslim-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/arubaslim/overlay

LOCAL_PATH := device/samsung/arubaslim
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/samsung/arubaslim/recovery/init.twrp.rc:recovery/root/init.rc \
    device/samsung/arubaslim/recovery/sbin/adbd:recovery/root/sbin/adbd \
    device/samsung/arubaslim/recovery/sbin/recovery:recovery/root/sbin/recovery \
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_arubaslim
PRODUCT_DEVICE := arubaslim
