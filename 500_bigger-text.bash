#! /usr/bin/env bash

scale="1.5"

if [[ "$1" = "about" ]] ; then
	echo "Increases size of text by a factor of $scale."
	exit
fi

gsettings set org.gnome.desktop.interface text-scaling-factor $scale		# Make fonts larger.
