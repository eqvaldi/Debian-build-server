#!/bin/sh
. ./vars.sh
. ./lib-build.sh

# Debian sid - ARM
build_group ""                                                   "EQLinux"           edge sid minimal/ARM   "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/xfce/userpatches/customize-image.sh     "EQLinux.xfce"      edge sid xfce/ARM      "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/lxqt/userpatches/customize-image.sh     "EQLinux.lxqt"      edge sid lxqt/ARM      "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/mate/userpatches/customize-image.sh     "EQLinux.mate"      edge sid mate/ARM      "$ARM_REPO" $ARM_BOARDS_11
build_group buildscripts/server/userpatches/customize-image.sh   "EQLinux.xfce-lite" edge sid server/ARM    "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/cinnamon/userpatches/customize-image.sh "EQLinux.cinnamon"  edge sid cinnamon/ARM  "$ARM_REPO" $ARM_BOARDS_CINNAMON
build_group buildscripts/labwc/userpatches/customize-image.sh    "EQLinux.labwc"     edge sid labwc/ARM     "$ARM_REPO" $ARM_BOARDS_FULL

# Debian sid - X86
build_group ""                                                     "EQLinux"           edge sid minimal/X86   "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/xfce86/userpatches/customize-image.sh     "EQLinux.xfce"      edge sid xfce/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/lxqt86/userpatches/customize-image.sh     "EQLinux.lxqt"      edge sid lxqt/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/mate86/userpatches/customize-image.sh     "EQLinux.mate"      edge sid mate/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/server86/userpatches/customize-image.sh   "EQLinux.xfce-lite" edge sid server/X86    "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/cinnamon86/userpatches/customize-image.sh "EQLinux.cinnamon"  edge sid cinnamon/X86  "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/labwc86/userpatches/customize-image.sh    "EQLinux.labwc"     edge sid labwc/X86     "$X86_REPO" $X86_BOARDS_FULL

rm -f ./build/userpatches/customize-image.sh
