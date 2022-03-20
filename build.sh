#!/bin/sh
#echo "Build script"
rm -rf hardware/qcom/media hardware/qcom/display
git clone https://github.com/aospneon/msm8996-Hals -b dis hardware/qcom/display --depth=1
git clone https://github.com/aospneon/msm8996-Hals -b med hardware/qcom/media --depth=1
# Cook
source build/envsetup.sh
ccache -M 20G
ccache -o compression=true
ccache -z
echo "Starting Cooking"
lunch aospa_tissot-userdebug
./rom-build.sh tissot
#echo "Build Done"
#cd out/target/product/tissot
#curl bashupload.com -T boot.img
