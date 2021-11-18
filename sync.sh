# Initialize Repos
echo "Initializing Manifest"
repo init --depth=1 -u git://github.com/LineageOS/android.git -b lineage-18.1
git clone https://github.com/neonmicky/local_manifest.git -b xr .repo/local_manifests --depth=1

# Sync source
repo sync -j24 --prune -c --no-clone-bundle --no-tags || repo sync -j24 --prune -c --no-clone-bundle --no-tags
#echo "Sync Completed"

