#!/bin/sh
#echo "Build script"
# Cook
source build/envsetup.sh
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
lunch p404_tissot-userdebug
make bacon
