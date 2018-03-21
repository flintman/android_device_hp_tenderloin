# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit AOSP device configuration for inc.
$(call inherit-product, device/hp/tenderloin/full_tenderloin.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/du/config/common_full_tablet_wifionly.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := du_tenderloin
PRODUCT_BRAND := HP
PRODUCT_DEVICE := tenderloin
PRODUCT_MODEL := Touchpad

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=touchpad \
    BUILD_FINGERPRINT="hp/hp_tenderloin/tenderloin:6.0/MRA58K/2256973:user/release-keys" \
    PRIVATE_BUILD_DESC="tenderloin-user 6.0 MRA58K 2256973 release-keys" \
    BUILD_NUMBER=228551
