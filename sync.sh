# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 -u https://github.com/P-404/platform_manifest -b rippa

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
git clone https://github.com/labneon/device_xiaomi_tissot -b rippa device/xiaomi/tissot --depth=1
git clone https://github.com/labneon/device_xiaomi_msm8953-common -b rippa device/xiaomi/msm8953-common --depth=1
git clone https://github.com/neonmicky/kernel_xiaomi_tissot -b 11.0 kernel/xiaomi/msm8953 --depth=1
git clone https://github.com/neonmicky/vendor_xiaomi -b 11.0-common vendor/xiaomi/msm8953-common --depth=1
git clone https://github.com/neonmicky/vendor_xiaomi -b 11.0-tissot vendor/xiaomi/tissot --depth=1 
rm -rf hardware/qcom/media hardware/qcom/audio hardware/qcom/display vendor/qcom/opensource/audio-hal/primary-hal
git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-18.1-caf-msm8996 hardware/qcom/display --depth=1
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-18.1-caf-msm8996 hardware/qcom/media --depth=1
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8996 vendor/qcom/opensource/audio-hal/primary-hal --depth=1
#echo "Sync Completed"

