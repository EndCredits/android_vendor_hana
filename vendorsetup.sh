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

CURRENT_PATH=$(pwd)

echo "$CURRENT_PATH/packages/apps/KProfiles"

if [ ! -d "$CURRENT_PATH/packages/apps/KProfiles" ]; then
    echo 'KProfiles App not exist. Cloning...'
    git clone https://github.com/CannedShroud/android_packages_apps_KProfiles $CURRENT_PATH/packages/apps/KProfiles/
else
    echo 'KProfiles App seems existed. Updating to latest version'
    cd $CURRENT_PATH/packages/apps/KProfiles
    git pull
    croot
fi
