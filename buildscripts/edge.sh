#!/bin/bash
#Bullseye

./compile.sh  BOARD=uefi-x86 BRANCH=edge RELEASE=bullseye BUILD_MINIMAL=no BUILD_DESKTOP=no REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=yes INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes COMPRESS_OUTPUTIMAGE=img
