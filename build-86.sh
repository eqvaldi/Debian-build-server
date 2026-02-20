#!/bin/bash

cp -rl -u ./buildscripts/xfce86/userpatches/customize-image.sh ./imagebuildrerxfce/build/userpatches/
cp -rl -u ./buildscripts/lxde86/userpatches/customize-image.sh ./imagebuildrerlxde/build/userpatches/
cp -rl -u ./buildscripts/mate86/userpatches/customize-image.sh ./imagebuildrermate/build/userpatches/
cp -rl -u ./buildscripts/server86/userpatches/customize-image.sh ./imagebuildrerserver/build/userpatches/
cp -rl -u ./buildscripts/cinnamon86/userpatches/customize-image.sh ./imagebuildrercinnamon/build/userpatches/
cd ./imagebuildrerserver/build
./x86.sh
cd ..
cd ..
cd ./imagebuildrerxfce/build
./x86.sh
cd ..
cd ..
cd ./imagebuildrerlxde/build
./x86.sh
cd ..
cd ..
cd ./imagebuildrermate/build
./x86.sh
cd ..
cd ..
cd ./imagebuildrercinnamon/build
./x86.sh
cd ..
cd ..
