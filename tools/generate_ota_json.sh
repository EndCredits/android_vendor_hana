#!/bin/bash
# shellcheck enable=avoid-nullary-conditions

GREEN="\033[1;32m"
YELLOW="\033[1;33m"
NC="\033[0m"

file_path=$1

isGapps=$2

if [ ! $isGapps ]; then 
    echo "Usage: $0 <otapackage path> <isGapps: vanilla or gapps> " 
    exit -1
fi

if [[ -f $file_path ]]; then
    echo "Generating updater_info.json"
    file_name=$(basename "$file_path")
    device_name=picasso
    buildprop=../../out/target/product/picasso/system/build.prop
    file_size=$(stat -c %s "$file_path")
    sha256=$(cut -d' ' -f1 "$file_path".sha256sum)
    datetime=$(grep -w ro\\.build\\.date\\.utc "$buildprop" | cut -d= -f2)
    link=https://sourceforge.net/projects/picasso-rom-project/files/$file_name/download
    cat > updater_info.json <<JSON
{
  "response": [
    {
      "datetime": $datetime,
      "filename": "$file_name",
      "id": "$sha256",
      "romtype": "$isGapps",
      "size": $file_size,
      "url": "$link",
      "version": "13"
    }
  ]
}
JSON
        echo -e "${GREEN}Done generating ${YELLOW}updater_info.json${NC}"
fi
