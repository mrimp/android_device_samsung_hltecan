# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2014 The LiquidSmooth Project
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

# device
$(call inherit-product, device/samsung/hltecan/full_hltecan.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# telephony
$(call inherit-product, vendor/liquid/config/common_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hltecan
PRODUCT_BRAND := samsung
PRODUCT_NAME := liquid_hltecan
PRODUCT_MODEL := SM-N900W8
PRODUCT_MANUFACTURER := samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.hltecan.$(shell date +%m%d%y).$(shell date +%H%M%S)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=N900W8VLUBMJ4 \
    PRODUCT_NAME=hlteevl \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="hltevl-user 4.3 JSS15J N900W8VLUBMJ4 release-keys" \
    BUILD_FINGERPRINT="samsung/hltevl/hltecan:4.3/JSS15J/N900W8VLUBMJ4:user/release-keys"


