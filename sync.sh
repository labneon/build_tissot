# Initialize Repos
#echo "Initializing Manifest"
#repo init --depth=1 --no-repo-verify -u git://github.com/crdroidandroid/android.git -b 11.0 -g default,-device,-mips,-darwin,-notdefault

# local manifest
#git clone https://github.com/labneon/local_manifest.git --depth 1 -b main .repo/local_manifests

# Sync source
#repo sync -j48 --prune -c --force-sync --no-clone-bundle --no-tags || repo sync -j48 --force-sync --prune -c --no-clone-bundle --no-tags

#echo "Sync Completed"
tmate
