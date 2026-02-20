#!/bin/bash
mkdir imagebuildrerxfce
mkdir imagebuildrerlxde
mkdir imagebuildrermate
mkdir imagebuildrercinnamon
mkdir imagebuildrerserver
mkdir img
cd img/
mkdir xfce
mkdir lxde
mkdir mate
mkdir cinnamon
mkdir server
cd ..
cd imagebuildrerxfce/
git clone https://github.com/Eqvaldi-deer/build.git
cd ..
cd imagebuildrerlxde/
git clone https://github.com/Eqvaldi-deer/build.git
cd ..
cd imagebuildrermate/
git clone https://github.com/Eqvaldi-deer/build.git
cd ..
cd imagebuildrerserver/
git clone https://github.com/Eqvaldi-deer/build.git
cd ..
cd imagebuildrercinnamon/
git clone https://github.com/Eqvaldi-deer/build.git
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
