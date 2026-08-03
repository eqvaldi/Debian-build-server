#!/bin/sh
#
# lib-build.sh - shared native (non-Docker) board-loop builder, sourced by
# all.sh, all-sid.sh, and ubuntu.sh so the same compile.sh invocation isn't
# repeated per board/desktop combination. Expects vars.sh to already be
# sourced (uses $VENDORCOLOR). See all-docker.sh for the Docker equivalent,
# which additionally forces `docker` mode, tunes compression, and checks
# free disk space - kept separate since native builds don't need those.

# build_group <customize-script-or-empty> <vendor> <branch> <release> <output-dir> <repo-install-or-empty> <board...>
build_group() {
	customize="$1"
	vendor="$2"
	branch="$3"
	release="$4"
	outdir="$5"
	repoinstall="$6"
	shift 6

	rm -f ./build/userpatches/customize-image.sh
	[ -n "$customize" ] && cp "$customize" ./build/userpatches/customize-image.sh

	for board in "$@"; do
		repoarg=""
		[ -n "$repoinstall" ] && repoarg="REPOSITORY_INSTALL=$repoinstall"

		(
			cd ./build
			./compile.sh BOARD="$board" ALLOW_ROOT=yes KERNEL_GIT=full \
				VENDOR="$vendor" VENDORCOLOR="$VENDORCOLOR" BRANCH="$branch" RELEASE="$release" \
				BUILD_MINIMAL=yes BUILD_DESKTOP=no BUILD_ONLY=default $repoarg \
				USE_CCACHE=no INSTALL_HEADERS=yes KERNEL_CONFIGURE=no SKIP_BOOTSPLASH=yes USE_TORRENT=yes \
				COMPRESS_OUTPUTIMAGE=xz,sha BSPFREEZE=yes
		)
	done

	mkdir -p "./img/${outdir}"
	mv ./build/output/images "./img/${outdir}/"
}
