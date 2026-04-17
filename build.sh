#!/bin/sh
echo ============================================================================
echo
echo
echo                    Copyright © Eqvaldi-deer/Eqvaldi-records
echo
echo
echo                                   2017-2026
echo
echo                               special thanks to:
echo
echo          		BeanGreen247/Tomáš Mozdřeň: MATE-Desktop.
echo
echo                    Github: https://github.com/BeanGreen247
echo
echo ============================================================================

cmd=(dialog --keep-tite --menu "Debian-build-server-V3" 22 76 16)

options=(1 "Build x86 trixie current"
         2 "Build x86 trixie EDGE"
         3 "Build x86 Sid"
         4 "Build ARM trixie current"
         5 "Build ARM Sid"
         6 "Build ALL Sid"
	 7 "Build ALL trixie"
	 8 "Custom Build"
	 9 "DELETE Build directory"
	 10 "DELETE img directory")
	 
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
	#86-trixie-current
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/minimal/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/xfce86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/xfce/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/lxqt86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/lxqt/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/mate86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/mate/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/server86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/server/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/cinnamon86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/cinnamon/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/labwc86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/labwc/X86/
	rm -rf ./build/userpatches/customize-image.sh

            ;;
        2)
	#86-trixie-EDGE
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/minimal/EDGE/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/xfce86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/xfce/EDGE/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/lxqt86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/lxqt/EDGE/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/mate86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/mate/EDGE/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/server86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/server/EDGE/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/cinnamon86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/cinnamon/EDGE/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/labwc86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/labwc/EDGE/
	rm -rf ./build/userpatches/customize-image.sh
            ;;
        3)
	#86-sid
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/minimal/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/xfce86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes;
	cd ..
	mv ./build/output/images ./img/xfce/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/lxqt86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/lxqt/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/mate86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/mate/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/server86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/server/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/cinnamon86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/cinnamon/X86/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/labwc86/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=uefi-x86 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/labwc/X86/
	rm -rf ./build/userpatches/customize-image.sh
            ;;
        4)
	#ARM-trixie
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/minimal/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/xfce/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/xfce/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/lxqt/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/lxqt/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/mate/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/mate/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/server/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/server/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/cinnamon/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/cinnamon/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/labwc/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=current RELEASE=trixie BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/labwc/ARM/
	rm -rf ./build/userpatches/customize-image.sh
            ;;
        5)
	#ARM-sid
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/minimal/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/xfce/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/xfce/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/lxqt/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/lxqt/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/mate/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/mate/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/server/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/server/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/cinnamon/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/cinnamon/ARM/
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/labwc/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  BOARD=odroidn2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidxu4 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepi3 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepione ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepioneplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiprime ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizero ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=tinkerboard ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=odroidc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc2 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepipc ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes 
	./compile.sh  BOARD=orangepiplus ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepiwin ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	./compile.sh  BOARD=orangepizeroplus2-h5 ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux" VENDORCOLOR="5;100;115" BRANCH=edge RELEASE=sid BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	mv ./build/output/images ./img/labwc/ARM/
	rm -rf ./build/userpatches/customize-image.sh
            ;;
        6)
	bash ./all-sid.sh
            ;;
        7)
	bash ./all.sh
            ;;
        8)
	bash ./custom.sh
            ;;
        9)
	#DELETE build dir.
	rm -rf ./build
            ;;
        10)
	#DELETE img dir.
	rm -rf ./img
            ;;
    esac
done
