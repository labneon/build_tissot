# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://github.com/cygnus-rom/manifest.git -b caf-11 -g default,-device,-mips,-darwin,-notdefault

# local manifest
git clone https://github.com/labneon/local_manifest.git --depth 1 -b cyg .repo/local_manifests

# Sync source
repo sync -j16 --prune -c --no-clone-bundle --optimized-fetch --no-tags --current-branch || repo sync -j16 --prune -c --no-clone-bundle --optimized-fetch --no-tags --current-branch

echo "Sync Completed"
