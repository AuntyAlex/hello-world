#! /usr/bin/env bash

if [[ "$1" = "about" ]] ; then
	echo "Turn off the lock screen."
	exit
fi

gsettings set org.gnome.desktop.session idle-delay 'uint32 0'	# Stop the screen from going to sleep when the machine is inactive.
