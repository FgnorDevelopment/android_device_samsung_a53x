#
# Copyright (C) 2024 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/samsung/a53x/device.mk)

# Inherit from those products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_a53x
PRODUCT_DEVICE := a53x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A536B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="a53xnaxx-user 14 UP1A.231005.007 A536BXXSDEXL2 release-keys"

# Fingerprint	
BUILD_FINGERPRINT := samsung/a53xnaxx/a53x:14/UP1A.231005.007/A536BXXSDEXL2:user/release-keys

PRODUCT_PACKAGES += com.android.vndk.current.on_vendor
