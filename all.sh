#!/bin/sh
if [ -f ./wallpapers/wallpaper.jpg ]; then
	mkdir -p ./build/userpatches/overlay
	cp ./wallpapers/wallpaper.jpg ./build/userpatches/overlay/wallpaper.jpg
fi

. ./vars.sh
. ./lib-build.sh

# Debian trixie - ARM
build_group ""                                                   "EQLinux"           current trixie   minimal/ARM   "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/xfce/userpatches/customize-image.sh     "EQLinux.xfce"      current trixie   xfce/ARM      "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/lxqt/userpatches/customize-image.sh     "EQLinux.lxqt"      current trixie   lxqt/ARM      "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/mate/userpatches/customize-image.sh     "EQLinux.mate"      current trixie   mate/ARM      "$ARM_REPO" $ARM_BOARDS_11
build_group buildscripts/server/userpatches/customize-image.sh   "EQLinux.xfce-lite" current trixie   server/ARM    "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/cinnamon/userpatches/customize-image.sh "EQLinux.cinnamon"  current trixie   cinnamon/ARM  "$ARM_REPO" $ARM_BOARDS_CINNAMON
build_group buildscripts/labwc/userpatches/customize-image.sh    "EQLinux.labwc"     current trixie   labwc/ARM     "$ARM_REPO" $ARM_BOARDS_FULL

# Debian trixie - X86
build_group ""                                                     "EQLinux"           current trixie   minimal/X86   "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/xfce86/userpatches/customize-image.sh     "EQLinux.xfce"      current trixie   xfce/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/lxqt86/userpatches/customize-image.sh     "EQLinux.lxqt"      current trixie   lxqt/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/mate86/userpatches/customize-image.sh     "EQLinux.mate"      current trixie   mate/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/server86/userpatches/customize-image.sh   "EQLinux.xfce-lite" current trixie   server/X86    "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/cinnamon86/userpatches/customize-image.sh "EQLinux.cinnamon"  current trixie   cinnamon/X86  "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/labwc86/userpatches/customize-image.sh    "EQLinux.labwc"     current trixie   labwc/X86     "$X86_REPO" $X86_BOARDS_FULL

# Ubuntu resolute - ARM
build_group ""                                                    "EQLinux"          current resolute ubuntuminimal/ARM  "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/xfce/userpatches/customize-image.sh      "EQLinux.xfce"     current resolute ubuntuxfce/ARM     "$ARM_REPO" $ARM_BOARDS_11
build_group buildscripts/cinnamon/userpatches/customize-image.sh  "EQLinux.cinnamon" current resolute ubuntucinnamon/ARM "$ARM_REPO" $ARM_BOARDS_CINNAMON

# Ubuntu resolute - X86
build_group ""                                                     "EQLinux"          current resolute ubuntuminimal/X86  "$X86_REPO" $X86_BOARDS_UBUNTU
build_group buildscripts/xfce86/userpatches/customize-image.sh     "EQLinux.xfce"     current resolute ubuntuxfce/X86     "$X86_REPO" $X86_BOARDS_UBUNTU
build_group buildscripts/cinnamon86/userpatches/customize-image.sh "EQLinux.cinnamon" current resolute ubuntucinnamon/X86 "$X86_REPO" $X86_BOARDS_UBUNTU

rm -f ./build/userpatches/customize-image.sh
