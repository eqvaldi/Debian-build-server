#!/bin/sh
cmd=(dialog --keep-tite --menu "Debian-build-server-V3" 22 76 16)

options=(1 "Minimal"
         2 "XFCE"
         3 "Lxqt"
         4 "Mate"
         5 "Xfce-lite"
         6 "Cinnamon"
         7 "Labwc")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
	1)
	rm -rf ./build/userpatches/customize-image.sh
	cd ./build
	./compile.sh  ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux-Unofficial" VENDORCOLOR="5;100;115" BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	echo 'Image located in Build/output/images'
	rm -rf ./build/userpatches/customize-image.sh
	;;
	2)
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/xfce/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux-Unofficial" VENDORCOLOR="5;100;115" BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	echo 'Image located in Build/output/images'
	rm -rf ./build/userpatches/customize-image.sh
	;;
	3)
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/lxqt/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux-Unofficial" VENDORCOLOR="5;100;115" BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	echo 'Image located in Build/output/images'
	rm -rf ./build/userpatches/customize-image.sh
	;;
	4)
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/mate/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux-Unofficial" VENDORCOLOR="5;100;115" BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	echo 'Image located in Build/output/images'
	rm -rf ./build/userpatches/customize-image.sh
	;;
	5)
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/server/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux-Unofficial" VENDORCOLOR="5;100;115" BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	echo 'Image located in Build/output/images'
	rm -rf ./build/userpatches/customize-image.sh
	;;
	6)
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/cinnamon/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux-Unofficial" VENDORCOLOR="5;100;115" BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	echo 'Image located in Build/output/images'
	rm -rf ./build/userpatches/customize-image.sh
	;;
	7)
	rm -rf ./build/userpatches/customize-image.sh
	cp ./buildscripts/labwc/userpatches/customize-image.sh ./build/userpatches/
	cd ./build
	./compile.sh  ALLOW_ROOT=yes KERNEL_GIT=full VENDOR="EQLinux-Unofficial" VENDORCOLOR="5;100;115" BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL=u-boot,kernel,armbian-config,armbian-firmware USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes COMPRESS_OUTPUTIMAGE=img BSPFREEZE=yes
	cd ..
	echo 'Image located in Build/output/images'
	rm -rf ./build/userpatches/customize-image.sh
	;;

    esac
done	
