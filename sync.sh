# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u git://github.com/Project-Xtended/manifest.git -b xr -g default,-device,-mips,-darwin,-notdefault

# local manifest
git clone https://github.com/neonmicky/local_manifest.git --depth 1 -b xr .repo/local_manifests

# Sync source
repo sync -j16 --prune -c --no-clone-bundle --optimized-fetch --no-tags --current-branch || repo sync -j16 --prune -c --no-clone-bundle --optimized-fetch --no-tags --current-branch

echo "Sync Completed"
