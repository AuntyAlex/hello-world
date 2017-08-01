#! /usr/bin/env bash

if [[ "$1" = "about" ]] ; then
	echo "Open Gnome Terminal terminals in tabs rather than windows."
	exit
fi

gsettings set org.gnome.Terminal.Legacy.Settings new-terminal-mode 'tab'	# Open Gnome Terminal terminals in tabs rather than windows.
