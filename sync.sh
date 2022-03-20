# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android.git -b 12.0
git clone https://github.com/neonmicky/local_manifest.git -b 12.0 .repo/local_manifests --depth=1

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
#echo "Sync Completed"

