#!/bin/bash
cp -rl -u ./buildscripts/xfce/userpatches/customize-image.sh ./imagebuildrerxfce/build/userpatches/
cp -rl -u ./buildscripts/lxde/userpatches/customize-image.sh ./imagebuildrerlxde/build/userpatches/
cp -rl -u ./buildscripts/mate/userpatches/customize-image.sh ./imagebuildrermate/build/userpatches/
cp -rl -u ./buildscripts/server/userpatches/customize-image.sh ./imagebuildrerserver/build/userpatches/
cp -rl -u ./buildscripts/cinnamon/userpatches/customize-image.sh ./imagebuildrercinnamon/build/userpatches/
cd ./imagebuildrerserver/build
./bld-boards.sh
cd ..
cd ..
cd ./imagebuildrerxfce/build
./bld-boards.sh
cd ..
cd ..
cd ./imagebuildrerlxde/build
./bld-boards.sh
cd ..
cd ..
cd ./imagebuildrermate/build
./bld-boards.sh
cd ..
cd ..
cd ./imagebuildrercinnamon/build
./cinnamon.sh
cd ..
cd ..
