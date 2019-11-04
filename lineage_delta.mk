# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from delta device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := smartisan
PRODUCT_DEVICE := delta
PRODUCT_MANUFACTURER := smartisan
PRODUCT_NAME := lineage_delta
PRODUCT_MODEL := DT1901A

PRODUCT_GMS_CLIENTID_BASE := android-smartisan
TARGET_VENDOR := smartisan
TARGET_VENDOR_PRODUCT_NAME := delta
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="delta-user 9 PKQ1.190727.001 1 dev-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := SMARTISAN/aries/aries:9/PKQ1.190727.001/1572490152:user/dev-keys
