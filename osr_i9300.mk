# Specify phone tech before including full_phone
$(call inherit-product, vendor/osr/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := i9300

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common OSR stuff.
$(call inherit-product, vendor/osr/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Add Google apps
$(call inherit-product, vendor/google/minimal.mk)
#$(call inherit-product, vendor/google/products/ears_support.mk)
# $(call inherit-product, vendor/google/products/tts_support.mk)
$(call inherit-product, vendor/google/products/maps_support.mk)
$(call inherit-product, vendor/google/products/music_support.mk)
#$(call inherit-product, vendor/google/products/facelock_support.mk)
$(call inherit-product, vendor/google/products/youtube_support.mk)

# Addons personal (call files from vendor/osr/prebuilt/app)
#$(call inherit-product, vendor/osr/addons/superatmel.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9300
PRODUCT_NAME := osr_i9300
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.1.1/JRO03C/I9300XXDLIB:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.1.1 JRO03C I9300XXDLIB release-keys"

