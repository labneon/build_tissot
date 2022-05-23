# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://github.com/P-404/platform_manifest -b shinka -g default,-mips,-darwin,-notdefault
git clone https://github.com/aospneon/local_manifest --depth 1 -b shinka .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8 || repo sync -j24 --prune -c --no-clone-bundle --no-tags

#echo "Sync Completed"
# build
source build/envsetup.sh
lunch p404_tissot-userdebug
make sepolicy
