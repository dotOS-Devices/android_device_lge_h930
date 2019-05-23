$(call inherit-product, device/lge/h930/full_h930.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device identifiers

PRODUCT_NAME := dot_h930
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V30

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="joan" \
    PRODUCT_DEVICE="joan" \
    PRODUCT_NAME="joan_global_com" \
    PRIVATE_BUILD_DESC="joan_global_com-user 8.0.0 OPR1.170623.026 190211754b47c release-keys"

BUILD_FINGERPRINT="lge/joan_global_com/joan:8.0.0/OPR1.170623.026/190211754b47c:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model ro.vendor.product.model

TARGET_BOOT_ANIMATION_RES := 1440
export DOT_OFFICIAl := true
