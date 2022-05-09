# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://github.com/P-404/platform_manifest -b shinka
#git clone https://github.com/neonmicky/local_manifest.git -b 12.1 .repo/local_manifests --depth=1

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
#echo "Sync Completed"
git clone https://github.com/aospneon/device_xiaomi_tissot -b shinka device/xiaomi/tissot --depth=1
git clone https://github.com/aospneon/android_device_xiaomi_msm8953-common -b shinka device/xiaomi/msm8953-common --depth=1
git clone https://github.com/neonmicky/vendor_xiaomi.git -b 12.0-tissot vendor/xiaomi/tissot --depth=1
git clone https://github.com/neonmicky/vendor_xiaomi.git -b 12.0-common vendor/xiaomi/msm8953-common --depth=1
git clone https://github.com/neonmicky/kernel_xiaomi_tissot.git -b twelve kernel/xiaomi/msm8953 --depth=1
