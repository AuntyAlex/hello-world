#! /usr/bin/env bash

size=32

if [[ "$1" = "about" ]] ; then
	echo "Sets the cursor size to $size."
	exit
fi

gsettings set org.gnome.desktop.interface cursor-size $size			# Make mouse cursor larger.
