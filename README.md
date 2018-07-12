# smartpi-gen

_Tool used to create the Raspbian image for the Smartwin project_

## Introduction

This project is a fork of [pi-gen](https://github.com/RPi-Distro/pi-gen), the tool used to create the [raspberrypi.org](https://www.raspberrypi.org/) Raspbian images.
The configuration specific to the Smartwin project is done at the end of stage 3.
Its aim is to install the Ethereum client `geth` and configure it.
All files and scripts are contained in the `stage3/02-smartwin` directory.

## Building the image

pi-gen runs on Debian based operating systems. Currently it is only supported on
either Debian Stretch or Ubuntu Xenial and is known to have issues building on
earlier releases of these systems.

- If you are under a Debian based operating system, you must install the required dependencies :

```bash
apt-get install quilt parted realpath qemu-user-static debootstrap zerofree pxz zip dosfstools bsdtar libcap2-bin grep rsync xz-utils file git
```

Then launch the build :

```bash
./build.sh
```

- If you aren't under a Debian based operating system, you can build the image using Docker.  

First, install `docker` and `docker-compose` using your package manager.

Then launch the build :

```bash
./build-docker.sh
```

If something breaks along the line, you can edit the corresponding scripts, and
continue:

```bash
CONTINUE=1 ./build-docker.sh
```

After successful build, the build container is by default removed. This may be undesired when making incremental changes to a customized build. To prevent the build script from remove the container add

```bash
PRESERVE_CONTAINER=1 ./build-docker.sh
```

## Using the image

- After system startup, log into the `pi` session. Default password is `raspberry`.
- Open a terminal and move to the `~/smartwin` directory :
```bash
cd ~/smartwin
```
- Setup the node by executing :
```bash
./setup_network.sh
```
- Start the Ethereum node by executing :
```bash
./launch_geth.sh
```