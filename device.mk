LOCAL_PATH := device/samsung/a24

PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)

# EROFS Tools
PRODUCT_HOST_PACKAGES_ENG += \
    liberofs \
    mkfs.erofs \
    make_erofs \
    dump.erofs \
    fsck.erofs

PRODUCT_PACKAGES += shrink

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 31

# API
PRODUCT_SHIPPING_API_LEVEL := 31
