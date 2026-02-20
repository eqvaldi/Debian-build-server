#!/bin/bash
cp -u ./buildscripts/xfce86/userpatches/customize-image.sh ./imagebuildrerxfce/build/userpatches/
cp -u ./buildscripts/lxde86/userpatches/customize-image.sh ./imagebuildrerlxde/build/userpatches/
cp -u ./buildscripts/mate86/userpatches/customize-image.sh ./imagebuildrermate/build/userpatches/
cp -u ./buildscripts/server86/userpatches/customize-image.sh ./imagebuildrerserver/build/userpatches/
cp -u ./buildscripts/cinnamon86/userpatches/customize-image.sh ./imagebuildrercinnamon/build/userpatches/
cd ./imagebuildrerserver/build
./edge.sh
cd ..
cd ..
cd ./imagebuildrerxfce/build
./edge.sh
cd ..
cd ..
cd ./imagebuildrerlxde/build
./edge.sh
cd ..
cd ..
cd ./imagebuildrermate/build
./edge.sh
cd ..
cd ..
cd ./imagebuildrercinnamon/build
./edge.sh
cd ..
cd ..
