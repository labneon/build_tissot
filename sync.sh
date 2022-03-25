# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://github.com/LineageOS/android.git -b lineage-19.1
#git clone https://github.com/aospneon/local_manifest.git -b lineage-19.1 .repo/local_manifests --depth=1

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
#echo "Sync Completed"
git clone https://github.com/aospneon/device_xiaomi_tissot -b lineage-19.1 device/xiaomi/tissot --depth=1
git clone https://github.com/aospneon/device_xiaomi_msm8953-common -b lineage-19.1 device/xiaomi/msm8953-common --depth=1
git clone https://github.com/neonmicky/kernel_xiaomi_tissot -b twelve kernel/xiaomi/msm8953 --depth=1
git clone https://github.com/neonmicky/vendor_xiaomi -b 12.0-tissot vendor/xiaomi/tissot --depth=1
git clone https://github.com/neonmicky/vendor_xiaomi -b 12.0-common vendor/xiaomi/msm8953-common --depth=1
rm -rf hardware/qcom-caf/msm8996/display hardware/qcom-caf/msm8996/media
git clone https://github.com/aospneon/msm8996-Hals -b display hardware/qcom-caf/msm8996/display
git clone https://github.com/aospneon/msm8996-Hals -b media hardware/qcom-caf/msm8996/media
