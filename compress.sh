#!/bin/bash
cd ./imagebuildrerxfce/build/output/images
find . -type f -name "*.img" -exec 7z a {}.7z {} \;
cd ..
cd ..
cd ..
cd ..
cd ./imagebuildrerlxde/build/output/images
find . -type f -name "*.img" -exec 7z a {}.7z {} \;
cd ..
cd ..
cd ..
cd ..
cd ./imagebuildrermate/build/output/images
find . -type f -name "*.img" -exec 7z a {}.7z {} \;
cd ..
cd ..
cd ..
cd ..
cd ./imagebuildrerserver/build/output/images
find . -type f -name "*.img" -exec 7z a {}.7z {} \;
cd ..
cd ..
cd ..
cd ..
cd ./imagebuildrercinnamon/build/output/images
find . -type f -name "*.img" -exec 7z a {}.7z {} \;
cd ..
cd ..
cd ..
cd ..
