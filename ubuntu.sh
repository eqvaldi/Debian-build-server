#!/bin/sh
if [ -f ./wallpapers/wallpaper.jpg ]; then
	mkdir -p ./build/userpatches/overlay
	cp ./wallpapers/wallpaper.jpg ./build/userpatches/overlay/wallpaper.jpg
fi

. ./vars.sh
. ./lib-build.sh

# Ubuntu resolute - ARM (original ubuntu.sh never set REPOSITORY_INSTALL for ARM boards here - kept as-is)
build_group ""                                                    "EQLinux"          current resolute ubuntuminimal/ARM  "" $ARM_BOARDS_FULL
build_group buildscripts/xfce/userpatches/customize-image.sh      "EQLinux.xfce"     current resolute ubuntuxfce/ARM     "" $ARM_BOARDS_11
build_group buildscripts/cinnamon/userpatches/customize-image.sh  "EQLinux.cinnamon" current resolute ubuntucinnamon/ARM "" $ARM_BOARDS_CINNAMON

# Ubuntu resolute - X86 (original ubuntu.sh does set REPOSITORY_INSTALL=$X86_REPO here)
build_group ""                                                     "EQLinux"          current resolute ubuntuminimal/X86  "$X86_REPO" $X86_BOARDS_UBUNTU
build_group buildscripts/xfce86/userpatches/customize-image.sh     "EQLinux.xfce"     current resolute ubuntuxfce/X86     "$X86_REPO" $X86_BOARDS_UBUNTU
build_group buildscripts/cinnamon86/userpatches/customize-image.sh "EQLinux.cinnamon" current resolute ubuntucinnamon/X86 "$X86_REPO" $X86_BOARDS_UBUNTU

rm -f ./build/userpatches/customize-image.sh
