# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 -u git://github.com/crdroidandroid/android.git -b 11.0
git clone https://github.com/neonmicky/local_manifest -b cr .repo/local_manifests

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
#echo "Sync Completed"

