add-apt-repository -y ppa:ethereum/ethereum
sed -i 's/cosmic/trusty/g' ${ROOTFS_DIR}/etc/apt/sources.list.d/ethereum-ubuntu-ethereum-cosmic.list
apt-get update