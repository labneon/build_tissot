#!/bin/sh
echo "Build script"

# Export some variables
#export CCACHE_DIR=/drone/ccache
#export CCACHE_EXEC=$(which ccache)
#export USE_CCACHE=1

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
make bootimage -j24
#make bacon -j24
ccache -s

echo "Build Done"
