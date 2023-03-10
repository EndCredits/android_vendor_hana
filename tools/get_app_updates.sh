#!/bin/bash

#
# Copyright 2023 Crepusuclar Hana
#
# SPDX-License-Identifier: MIT
#

CURR_DIR=$(pwd)

PACKAGES_PATH=$CURR_DIR/packages

wget -O $PACKAGES_PATH/AndroidDataBackup/DataBackup.apk $(curl -s https://api.github.com/repos/XayahSuSuSu/Android-DataBackup/releases/latest | jq -r ".assets[].browser_download_url" | grep arm64 | grep foss )
wget -O $PACKAGES_PATH/ViaBrowser/via.apk https://res.viayoo.com/v1/via-release.apk
wget -O $PACKAGES_PATH/Fcitx5Android/fcitx5android.apk $(curl -s https://api.github.com/repos/fcitx5-android/fcitx5-android/releases/latest | jq -r ".assets[].browser_download_url" | grep arm64 )