# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://android.googlesource.com/platform/manifest -b android-12.0.0_r2 -g default,-device,-mips,-darwin,-notdefault

# local manifest
#git clone https://github.com/neonmicky/local_manifest.git --depth 1 -b cr .repo/local_manifests

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
git clone https://github.com/labneon/device_xiaomi_tissot -b aosp device/xiaomi/tissot --depth=1
git clone https://github.com/labneon/device_xiaomi_msm8953-common -b aosp device/xiaomi/msm8953-common --depth=1
git clone https://github.com/neonmicky/kernel_xiaomi_tissot -b test kernel/xiaomi/msm8953 --depth=1
git clone https://gitlab.com/the-muppets/proprietary_vendor_xiaomi.git -b lineage-18.1 vendor/xiaomi --depth=1 --single-branch
rm -rf hardware/qcom-caf/msm8996/media hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/audio
#rm -rf device/generic/opengl-transport
#echo "Sync Completed"
