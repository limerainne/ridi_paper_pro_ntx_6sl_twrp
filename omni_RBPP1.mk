# Inherit configuration
$(call inherit-product, build/target/product/full.mk)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.timezone=Asia/Seoul

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RBPP1
PRODUCT_NAME := omni_RBPP1
PRODUCT_BRAND := RIDIBOOKS
PRODUCT_MODEL := PAPER PRO
PRODUCT_MANUFACTURER := RIDIBOOKS
