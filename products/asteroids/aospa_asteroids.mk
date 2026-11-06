#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_asteroids,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/asteroids/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := asteroids
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A059
PRODUCT_NAME := aospa_asteroids

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 17 CQ2A.260522.002-CP2A.260605.016 2610232146 release-keys" \
    BuildFingerprint=Nothing/Asteroids/Asteroids:14/UKQ1.260129.001/2610232146:user/release-keys \
    DeviceName=Asteroids \
    DeviceProduct=Asteroids \
    SystemDevice=Asteroids \
    SystemName=Asteroids

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_ENFORCE_PACKAGES_EXIST := true

endif
