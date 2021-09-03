#!/bin/sh
echo "Build script"

# Cook
. build/envsetup.sh
export CCACHE_DIR=/drone/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
lunch lineage_tissot-userdebug
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
make bootimage -j48
#make bacon -j24
#mka vendorimage
ccache -s

echo "Build Done"
cd out/target/product/tissot
curl --upload-file boot.img https://free.keep.sh
