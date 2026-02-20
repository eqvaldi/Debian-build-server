#!/bin/bash
cd ./imagebuildrerxfce/build
git pull
cd ..
cd ..
cd ./imagebuildrerlxde/build
git pull
cd ..
cd ..
cd ./imagebuildrermate/build
git pull
cd ..
cd ..
cd ./imagebuildrercinnamon/build
git pull
cd ..
cd ..
cd ./imagebuildrerserver/build
git pull
cd ..
cd ..
cp ./buildscripts/bld-boards.sh ./imagebuildrerxfce/build
cp ./buildscripts/bld-boards.sh ./imagebuildrerlxde/build
cp ./buildscripts/bld-boards.sh ./imagebuildrermate/build
cp ./buildscripts/bld-boards.sh ./imagebuildrerserver/build
cp ./buildscripts/cinnamon.sh ./imagebuildrercinnamon/build
cp ./buildscripts/x86.sh ./imagebuildrerxfce/build
cp ./buildscripts/x86.sh ./imagebuildrerlxde/build
cp ./buildscripts/x86.sh ./imagebuildrermate/build
cp ./buildscripts/x86.sh ./imagebuildrerserver/build
cp ./buildscripts/x86.sh ./imagebuildrercinnamon/build
cp ./buildscripts/edge.sh ./imagebuildrerxfce/build
cp ./buildscripts/edge.sh ./imagebuildrerlxde/build
cp ./buildscripts/edge.sh ./imagebuildrermate/build
cp ./buildscripts/edge.sh ./imagebuildrerserver/build
cp ./buildscripts/edge.sh ./imagebuildrercinnamon/build
chmod +x ./imagebuildrerserver/build/bld-boards.sh
chmod +x ./imagebuildrerxfce/build/bld-boards.sh
chmod +x ./imagebuildrerlxde/build/bld-boards.sh
chmod +x ./imagebuildrermate/build/bld-boards.sh
chmod +x ./imagebuildrercinnamon/build/cinnamon.sh
chmod +x ./imagebuildrerserver/build/x86.sh
chmod +x ./imagebuildrerxfce/build/x86.sh
chmod +x ./imagebuildrerlxde/build/x86.sh
chmod +x ./imagebuildrermate/build/x86.sh
chmod +x ./imagebuildrercinnamon/build/x86.sh
chmod +x ./imagebuildrerserver/build/edge.sh
chmod +x ./imagebuildrerxfce/build/edge.sh
chmod +x ./imagebuildrerlxde/build/edge.sh
chmod +x ./imagebuildrermate/build/edge.sh
chmod +x ./imagebuildrercinnamon/build/edge.sh
