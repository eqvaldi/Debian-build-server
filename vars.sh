#!/bin/sh
#
# vars.sh - shared board lists, REPOSITORY_INSTALL strings, and VENDORCOLOR
# used by all.sh, all-sid.sh, ubuntu.sh, and all-docker.sh. Source this
# instead of copy-pasting board names - one place to add/remove a board.

VENDORCOLOR="5;100;115"

ARM_REPO="u-boot,kernel,armbian-config,armbian-firmware"
X86_REPO="kernel,armbian-config,armbian-firmware"

ARM_BOARDS_FULL="odroidn2 odroidxu4 orangepi3 orangepione orangepioneplus orangepiprime orangepizero tinkerboard odroidc2 orangepipc2 orangepipc orangepiplus orangepiwin orangepizeroplus2-h5"
ARM_BOARDS_11="odroidn2 odroidxu4 orangepi3 orangepioneplus orangepiprime tinkerboard odroidc2 orangepipc2 orangepipc orangepiplus orangepiwin"
ARM_BOARDS_CINNAMON="odroidn2 odroidxu4 orangepi3 odroidc2"

X86_BOARDS_FULL="uefi-x86 uefi-arm64 uefi-riscv64"
X86_BOARDS_UBUNTU="uefi-x86 uefi-arm64"
