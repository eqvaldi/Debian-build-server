# Wallpapers

Drop commissioned wallpaper images here for reference/storage.

Only one is actually used across all desktop environments (Cinnamon, MATE,
LXQT, XFCE, labwc): whichever file is named `wallpaper.jpg`. The build
scripts (all.sh, all-sid.sh, ubuntu.sh, custom.sh, build.sh, all-docker.sh)
copy `wallpapers/wallpaper.jpg` into `build/userpatches/overlay/` before
building, where each desktop's customize-image.sh picks it up automatically.

To switch the active wallpaper, just overwrite/replace `wallpaper.jpg` with
a different commissioned image - no script changes needed.
