#!/bin/bash

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

CURR_DIR=$(pwd)

PACKAGES_PATH=$CURR_DIR/packages

wget -O $PACKAGES_PATH/AndroidDataBackup/DataBackup.apk $(curl -s https://api.github.com/repos/XayahSuSuSu/Android-DataBackup/releases/latest | jq -r ".assets[].browser_download_url")
wget -O $PACKAGES_PATH/ViaBrowser/via.apk https://res.viayoo.com/v1/via-release.apk
wget -O $PACKAGES_PATH/Fcitx5Android/fcitx5android.apk $(curl -s https://api.github.com/repos/fcitx5-android/fcitx5-android/releases/latest | jq -r ".assets[].browser_download_url" | grep arm64)