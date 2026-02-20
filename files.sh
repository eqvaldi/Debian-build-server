#!/bin/sh
echo ============================================================================
echo
echo
echo                    Copyright © Eqvaldi-deer/Eqvaldi-records
echo
echo
echo                                   2017-2025
echo
echo                               special thanks to:
echo
echo          		BeanGreen247/Tomáš Mozdřeň: MATE-Desktop.
echo
echo                    Github: https://github.com/BeanGreen247
echo
echo ============================================================================

cmd=(dialog --keep-tite --menu "Debian-build-server-V3" 22 76 16)

options=(1 "Create Files"
         2 "Update")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
	#files
	mkdir img
	cd img
	mkdir minimal
	cd minimal
	mkdir EDGE
	mkdir X86
	mkdir ARM
	cd ..
	mkdir xfce
	cd xfce
	mkdir EDGE
	mkdir X86
	mkdir ARM
	cd ..
	mkdir lxqt
	cd lxqt
	mkdir EDGE
	mkdir X86
	mkdir ARM
	cd ..
	mkdir mate
	cd mate
	mkdir EDGE
	mkdir X86
	mkdir ARM
	cd ..
	mkdir cinnamon
	cd cinnamon
	mkdir EDGE
	mkdir X86
	mkdir ARM
	cd ..
	mkdir server
	cd server
	mkdir EDGE
	mkdir X86
	mkdir ARM
	cd ..
	mkdir labwc
	cd labwc
	mkdir EDGE
	mkdir X86
	mkdir ARM
	cd ..
	cd ..
	git clone https://github.com/Eqvaldi-deer/build.git
	cp ./buildscripts/compress.sh ./img
	cp ./buildscripts/compresssid.sh ./img
            ;;
        2)
	#update
	cd ./build
	git pull
	cd ..
            ;;

    esac
done
