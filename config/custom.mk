# Copyright 2023 Crepusuclar Hana
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

# Vendor Path
CUSTOM_PATH := vendor/hana

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += $(CUSTOM_PATH)

# Audios
$(call inherit-product, $(CUSTOM_PATH)/config/audio.mk)

# Custom Apps
PRODUCT_PACKAGES += \
	AndroidDataBackup \
	CameraGo_SHAMIM \
	GeometricWeather

ifneq ($(WITH_GAPPS), true)
ifneq ($(WITH_GMS), true)
PRODUCT_PACKAGES += \
	Fcitx5Android \
	ViaBrowser
endif
endif

ifdef $(LINEAGE_VERSION)
PRODUCT_PACKAGES += \
	Fcitx5Android \
	ViaBrowser
endif

PRODUCT_PACKAGES += \
	KProfiles

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(CUSTOM_PATH)/sepolicy/vendor