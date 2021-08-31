# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://android.googlesource.com/platform/manifest -b android-s-beta-4 -g default,-device,-mips,-darwin,-notdefault

# local manifest
git clone https://github.com/neonmicky/local_manifest.git --depth 1 -b cr .repo/local_manifests

# Sync source
repo sync -j16 --prune -c --no-clone-bundle --no-tags || repo sync -j16 --prune -c --no-clone-bundle --no-tags

echo "Sync Completed"

# Device Source
#git clone https://github.com/labneon/device_xiaomi_tissot -b 11.0 device/xiaomi/tissot --depth=1
#git clone https://github.com/labneon/device_xiaomi_msm8953-common -b 11.0 device/xiaomi/msm8953-common --depth=1
#git clone https://github.com/neonmicky/kernel_xiaomi_tissot -b eleven kernel/xiaomi/msm8953  --depth=1
#git clone https://github.com/neonmicky/vendor -b tissot vendor/xiaomi/tissot --depth=1
#git clone https://github.com/neonmicky/vendor -b common vendor/xiaomi/msm8953-common --depth=1
#rm -rf hardware/qcom-caf/msm8996/display hardware/qcom-caf/msm8996/media hardware/qcom-caf/msm8996/audio
#git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996-r_display -b eleven hardware/qcom-caf/msm8996/display
#git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996-r_media -b eleven hardware/qcom-caf/msm8996/media
#git clone https://github.com/PixelExperience/hardware_qcom-caf_msm8996_audio -b eleven hardware/qcom-caf/msm8996/audio
