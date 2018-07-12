# Copying configuration files and geth
mkdir ${ROOTFS_DIR}/home/pi/smartwin
chown 1000:1000 ${ROOTFS_DIR}/home/pi/smartwin
install -g 1000 -o 1000 -m 755 files/* ${ROOTFS_DIR}/home/pi/smartwin
ln -s ${ROOTFS_DIR}/home/pi/smartwin/geth /usr/local/bin/