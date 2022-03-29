#!/bin/sh
#echo "Build script"
# Cook
source build/envsetup.sh
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
lunch lineage_tissot-userdebug
make bacon
#echo "Build Done"
#cd out/target/product/tissot
#curl bashupload.com -T boot.img
