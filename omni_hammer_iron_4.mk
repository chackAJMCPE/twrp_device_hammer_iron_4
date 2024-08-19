$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

$(call inherit-product, vendor/omni/config/common.mk)


PRODUCT_COPY_FILES += device/myphone/hammer_iron_4/prebuilt/zImage:kernel


PRODUCT_DEVICE := hammer_iron_4
PRODUCT_NAME := omni_hammer_iron_4
PRODUCT_BRAND := myphone
PRODUCT_MODEL := hammer_iron_4
PRODUCT_MANUFACTURER := myphone

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="myPhone/Hammer_IRON_4_EEA/Hammer_IRON_4:12/SP1A.210812.016/1654602365:user/release-keys" \
    PRIVATE_BUILD_DESC="Hammer_IRON_4-user 12 SP1A.210812.016 1654602365 release-keys"