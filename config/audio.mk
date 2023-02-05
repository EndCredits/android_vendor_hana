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

CUSTOM_PATH := vendor/hana

# Copy ringtones
PRODUCT_COPY_FILES += \
	$(CUSTOM_PATH)/audio/Please_dont_pick_me_up.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Please_dont_pick_me_up.ogg

# Change default sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Please_dont_pick_me_up.ogg