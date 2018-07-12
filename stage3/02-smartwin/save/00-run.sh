apt-get update
apt-get install -y software-properties-common
add-apt-repository -y ppa:ethereum/ethereum
sed -i 's/cosmic/trusty/g' ${ROOTFS_DIR}/etc/apt/sources.list.d/ethereum-ubuntu-ethereum-cosmic.list
apt-get update
apt-get install -y --allow-unauthenticated ethereum
mkdir ${ROOTFS_DIR}/home/pi/smartwin
cp files/* ${ROOTFS_DIR}/home/pi/smartwin