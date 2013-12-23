## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geevl04e/geevl04e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geevl04e
PRODUCT_NAME := cm_geevl04e
PRODUCT_BRAND := lge
PRODUCT_MODEL := L-04E
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geevl04e_dcm_jp BUILD_FINGERPRINT=lge/geevl04e_dcm_jp/geevl04e:4.1.2/JZO54K/L04E10c.1363013820:user/release-keys PRIVATE_BUILD_DESC="geevl04e_dcm_jp-user 4.1.2 JZO54K L04E10c.1363013820 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
