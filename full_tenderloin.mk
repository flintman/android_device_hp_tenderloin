#
# Copyright (C) 2011 The Evervolv Project
# Copyright (C) 2011 The CyanogenMod Project
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
#


# Include tenderloin's BoardConfig.mk
include device/hp/tenderloin/BoardConfig.mk

# Proprietary stuff.
$(call inherit-product-if-exists, vendor/hp/tenderloin/tenderloin-vendor.mk)

# common tenderloin configs
$(call inherit-product, device/hp/tenderloin-common/tenderloin-common.mk)

DEVICE_PACKAGE_OVERLAYS += device/hp/tenderloin/overlay


PRODUCT_COPY_FILES += \
    device/hp/tenderloin/makemulti.sh:makemulti.sh \

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
