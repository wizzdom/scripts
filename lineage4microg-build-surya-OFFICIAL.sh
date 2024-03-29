sudo docker run \
    -e "BRANCH_NAME=lineage-18.1" \
    -e "DEVICE_LIST=surya" \
    -e "SIGN_BUILDS=true" \
    -e "SIGNATURE_SPOOFING=restricted" \
    -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore MozillaNlpBackend NominatimNlpBackend com.google.android.maps.jar FDroid FDroidPrivilegedExtension " \
    -v "/mnt/storage/lineageos4microg/lineage:/srv/src" \
    -v "/mnt/storage/lineageos4microg/zips:/srv/zips" \
    -v "/mnt/storage/lineageos4microg/logs:/srv/logs" \
    -v "/mnt/storage/lineageos4microg/ccache:/srv/ccache" \
    -v "/home/wizzdom/keys:/srv/keys" \
    -v "/mnt/storage/lineageos4microg/manifests:/srv/local_manifests" \
    lineageos4microg/docker-lineage-cicd

