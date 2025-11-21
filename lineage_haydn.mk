#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from haydn device
$(call inherit-product, device/xiaomi/haydn/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11G
PRODUCT_NAME := lineage_haydn

MISTOS_MAINTAINER := Hexdare
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := true
MIST_BUILD_TYPE := OFFICIAL

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="haydn_global-user 14 UKQ1.231207.002 V816.0.18.0.UKKMIXM release-keys" \
    BuildFingerprint=Xiaomi/haydn_global/haydn:14/UKQ1.231207.002/V816.0.18.0.UKKMIXM:user/release-keys \
    DeviceProduct=haydn \
    SystemName=haydn_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
