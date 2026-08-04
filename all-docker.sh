#!/usr/bin/env bash
#
# all-docker.sh - builds the full EQLinux board/desktop matrix (same set as
# all.sh) through Armbian's built-in Docker driver, so the build runs
# identically no matter what the host OS is - Linux, macOS (Docker Desktop),
# or Windows (Docker Desktop + WSL2). No native Linux host required, no
# "it can't be done on my machine".
#
# Requirements: Docker installed and usable (`docker info` must succeed).
# Run from the repository root: ./all-docker.sh
#
# Tunables (env vars):
#   MIN_FREE_GB     - abort before starting a board build if free space on
#                     this disk drops below this many GB (default: 30)
#   COMPRESS_MAX_THREADS - override how many CPU cores compression may use
#                     (default: all detected cores - see NPROC below)

set -e

cd "$(dirname "$0")"

# ---- tunables ---------------------------------------------------------

MIN_FREE_GB="${MIN_FREE_GB:-30}"

NPROC="$(nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 4)"

# Compression: force xz's strongest ("extreme") preset and let it use every
# available core. Trades CPU time for the smallest possible output image -
# by design, since compression only runs once per finished image.
COMPRESS_MAX_THREADS="${COMPRESS_MAX_THREADS:-$NPROC}"
COMPRESS_TUNING="IMAGE_XZ_COMPRESSION_RATIO=9e COMPRESS_MAX_THREADS=${COMPRESS_MAX_THREADS}"

# NOTE on download speed/stability: Armbian's MANAGE_ACNG (apt-cacher-ng)
# proxy is explicitly disabled when running inside a container, so it is
# not used here. Docker mode already persists its kernel-git/rootfs/deb
# caches in named Docker volumes across runs, so re-running this script
# reuses everything downloaded by previous runs automatically.

# board lists / REPOSITORY_INSTALL strings / VENDORCOLOR - shared with
# all.sh, all-sid.sh, ubuntu.sh
. ./vars.sh

# ---- helpers ------------------------------------------------------------

require_docker() {
	if ! command -v docker >/dev/null 2>&1; then
		echo "ERROR: docker is not installed or not in PATH." >&2
		echo "Install Docker Desktop (Mac/Windows) or Docker Engine (Linux) and re-run." >&2
		exit 1
	fi
	if ! docker info >/dev/null 2>&1; then
		echo "ERROR: docker is installed but not usable right now." >&2
		echo "Make sure the Docker daemon/Docker Desktop is running, and that this user can run 'docker info' without sudo." >&2
		exit 1
	fi
	echo "Docker OK: $(docker --version)"
}

check_free_space() {
	avail_gb=""
	if df -BG . >/dev/null 2>&1; then
		# GNU coreutils df (Linux)
		avail_gb=$(df -BG . | awk 'NR==2 { gsub("G","",$4); print $4 }')
	elif df -g . >/dev/null 2>&1; then
		# BSD df (macOS)
		avail_gb=$(df -g . | awk 'NR==2 { print $4 }')
	fi

	if [ -z "$avail_gb" ]; then
		echo "WARNING: could not determine free disk space; continuing without the safety check." >&2
		return 0
	fi

	if [ "$avail_gb" -lt "$MIN_FREE_GB" ]; then
		echo "ERROR: only ${avail_gb}GB free, need at least ${MIN_FREE_GB}GB." >&2
		echo "Stopping before the next board build to avoid filling the disk." >&2
		echo "Free up space, or lower the threshold with: MIN_FREE_GB=<gb> ./all-docker.sh" >&2
		exit 1
	fi
}

# build_group <customize-script-or-empty> <vendor> <release> <output-dir> <repo-install> <board...>
build_group() {
	customize="$1"
	vendor="$2"
	release="$3"
	outdir="$4"
	repoinstall="$5"
	shift 5

	mkdir -p ./build/userpatches
	rm -f ./build/userpatches/customize-image.sh
	[ -n "$customize" ] && cp "$customize" ./build/userpatches/customize-image.sh

	echo "== ${vendor} / ${release} -> img/${outdir} =="

	for board in "$@"; do
		check_free_space

		echo "-- building BOARD=${board} RELEASE=${release}"
		(
			cd ./build
			./compile.sh docker BOARD="$board" ALLOW_ROOT=yes KERNEL_GIT=full \
				VENDOR="$vendor" VENDORCOLOR="$VENDORCOLOR" BRANCH=current RELEASE="$release" \
				BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default REPOSITORY_INSTALL="$repoinstall" \
				USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes \
				COMPRESS_OUTPUTIMAGE=xz,sha BSPFREEZE=yes $COMPRESS_TUNING
		)
	done

	mkdir -p "./img/${outdir}"
	mv ./build/output/images "./img/${outdir}/"
}

# ---- go -----------------------------------------------------------------

require_docker
check_free_space

# Debian trixie - ARM
build_group ""                                              "EQLinux"            trixie minimal/ARM   "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/xfce/userpatches/customize-image.sh     "EQLinux.xfce"       trixie xfce/ARM      "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/lxqt/userpatches/customize-image.sh     "EQLinux.lxqt"       trixie lxqt/ARM      "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/mate/userpatches/customize-image.sh     "EQLinux.mate"       trixie mate/ARM      "$ARM_REPO" $ARM_BOARDS_11
build_group buildscripts/server/userpatches/customize-image.sh   "EQLinux.xfce-lite"  trixie server/ARM    "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/cinnamon/userpatches/customize-image.sh "EQLinux.cinnamon"   trixie cinnamon/ARM  "$ARM_REPO" $ARM_BOARDS_CINNAMON
build_group buildscripts/labwc/userpatches/customize-image.sh    "EQLinux.labwc"      trixie labwc/ARM     "$ARM_REPO" $ARM_BOARDS_FULL

# Debian trixie - X86
build_group ""                                                     "EQLinux"           trixie minimal/X86   "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/xfce86/userpatches/customize-image.sh     "EQLinux.xfce"      trixie xfce/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/lxqt86/userpatches/customize-image.sh     "EQLinux.lxqt"      trixie lxqt/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/mate86/userpatches/customize-image.sh     "EQLinux.mate"      trixie mate/X86      "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/server86/userpatches/customize-image.sh   "EQLinux.xfce-lite" trixie server/X86    "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/cinnamon86/userpatches/customize-image.sh "EQLinux.cinnamon"  trixie cinnamon/X86  "$X86_REPO" $X86_BOARDS_FULL
build_group buildscripts/labwc86/userpatches/customize-image.sh    "EQLinux.labwc"     trixie labwc/X86     "$X86_REPO" $X86_BOARDS_FULL

# Ubuntu resolute - ARM
build_group ""                                                    "EQLinux"          resolute ubuntuminimal/ARM  "$ARM_REPO" $ARM_BOARDS_FULL
build_group buildscripts/xfce/userpatches/customize-image.sh      "EQLinux.xfce"     resolute ubuntuxfce/ARM     "$ARM_REPO" $ARM_BOARDS_11
build_group buildscripts/cinnamon/userpatches/customize-image.sh  "EQLinux.cinnamon" resolute ubuntucinnamon/ARM "$ARM_REPO" $ARM_BOARDS_CINNAMON

# Ubuntu resolute - X86
build_group ""                                                      "EQLinux"          resolute ubuntuminimal/X86  "$X86_REPO" $X86_BOARDS_UBUNTU
build_group buildscripts/xfce86/userpatches/customize-image.sh      "EQLinux.xfce"     resolute ubuntuxfce/X86     "$X86_REPO" $X86_BOARDS_UBUNTU
build_group buildscripts/cinnamon86/userpatches/customize-image.sh  "EQLinux.cinnamon" resolute ubuntucinnamon/X86 "$X86_REPO" $X86_BOARDS_UBUNTU

rm -f ./build/userpatches/customize-image.sh
echo "all-docker.sh: done."
