#! /usr/bin/env bash

if [[ "$1" = "about" ]] ; then
	echo "Kill all open Nautilus windows and make new ones open full-screen."
	exit
fi

killall nautilus 2>/dev/null								# Kill any running instance of the file manager.
gsettings set org.gnome.nautilus.window-state maximized true			# Start file-manager maximised the next time it starts.
