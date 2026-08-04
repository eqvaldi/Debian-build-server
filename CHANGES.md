# Changes

Summary of the build-system additions made in this pass. Kept separate from
`README.md` (usage instructions) since this documents what changed and why.

## Theming (Cinnamon / MATE / XFCE)

`orchis-gtk-theme` + `numix-icon-theme` are applied automatically at image
build time - no manual desktop setup after first boot.

- **Cinnamon / MATE** (`buildscripts/{cinnamon,cinnamon86,mate,mate86}/userpatches/customize-image.sh`):
  a `ConfigureDesktop()` function writes `/etc/dconf/db/local.d/*` keyfiles
  (`gtk-theme='Orchis'`, `icon-theme='Numix'`) and runs `dconf update`.
- **XFCE** (`buildscripts/{xfce,xfce86}/userpatches/customize-image.sh`):
  `ConfigureDesktop()` writes the xfconf channel XML directly under
  `/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml`.
- Not applied to LXQT/labwc - out of scope per what was asked (theme only for
  XFCE/Cinnamon/MATE).

This works because these `customize-image.sh` scripts run inside a chroot
during image build with no display session and no D-Bus - settings have to be
pre-seeded as files the desktop reads on first real login, not set via
`gsettings`/`xfconf-query` (which need a running session).

## Docker build path (`all-docker.sh`)

New script, same full board/desktop matrix as `all.sh` (20 build groups,
Debian trixie + Ubuntu resolute, ARM + X86), but every `compile.sh` call goes
through Armbian's built-in `docker` command instead of running natively.
Means the build runs the same way regardless of host OS - Linux, macOS
(Docker Desktop), Windows (Docker Desktop + WSL2) - no native Linux host
required.

- `require_docker()` checks Docker is installed and usable before starting.
- `check_free_space()` runs before *every* board build (not just once at
  the start) and aborts the whole run if free disk space drops under
  `MIN_FREE_GB` (default 30, override via env var) - so a long unattended
  run stops cleanly instead of filling the disk.
- Compression is pushed to `IMAGE_XZ_COMPRESSION_RATIO=9e` (xz's strongest
  preset) with `COMPRESS_MAX_THREADS` uncapped to all detected cores -
  ratio over speed, since compression runs once per finished image anyway.
- `MANAGE_ACNG` (apt-cacher-ng) is *not* used here - Armbian explicitly
  disables it inside containers. Docker mode already persists its
  kernel-git/rootfs/deb caches in named Docker volumes across runs, so
  repeat runs of `all-docker.sh` reuse everything from previous runs
  automatically.

## Shared config: `vars.sh` + `lib-build.sh`

The board lists and `REPOSITORY_INSTALL` strings were duplicated across
`all.sh`, `all-sid.sh`, `ubuntu.sh`, and `all-docker.sh`. Extracted to:

- **`vars.sh`** - `VENDORCOLOR`, `ARM_REPO`/`X86_REPO`, and the board lists
  (`ARM_BOARDS_FULL`, `ARM_BOARDS_MINIMAL`, `ARM_BOARDS_11`,
  `ARM_BOARDS_CINNAMON`, `X86_BOARDS_FULL`, `X86_BOARDS_UBUNTU`). One place
  to add/remove a board.
- **`lib-build.sh`** - shared native `build_group()` function (customize-script
  swap, board loop, jetson-nano's forced-trixie override, output move).
  Used by `all.sh`/`all-sid.sh`/`ubuntu.sh`. `all-docker.sh` keeps its own
  separate `build_group` (adds the docker prefix, compression tuning, and
  free-space check that the native scripts don't need).

`all.sh`, `all-sid.sh`, and `ubuntu.sh` went from ~250/~180/~65 lines of
repeated `compile.sh` invocations to a short list of `build_group` calls
each.

**Verified** by running both the original scripts (from git history) and the
rewritten ones through a stub `compile.sh` that just logs its arguments, then
diffing the resulting BOARD/VENDOR/BRANCH/RELEASE/REPOSITORY_INSTALL tuples.
`all-sid.sh` and `ubuntu.sh` matched byte-for-byte. `all.sh` turned up two
pre-existing bugs in the *original* script that the refactor incidentally
fixed (confirmed via `git log -p` that both were introduced once and never
touched again across later commits, i.e. oversights, not intent):

1. Ubuntu-resolute's Cinnamon ARM group was missing `u-boot` from
   `REPOSITORY_INSTALL` (every other ARM group has it).
2. labwc86's X86 group had a stray leading comma in `REPOSITORY_INSTALL`
   (`,kernel,armbian-config,armbian-firmware`).

Both were kept fixed rather than reproduced.
