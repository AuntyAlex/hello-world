#! /usr/bin/env bash

if [[ "$1" = "about" ]] ; then
	echo "Turn off desktop icons and set background."
	exit
fi

gsettings set org.gnome.desktop.background show-desktop-icons false		# Don\'t show desktop icons.

wallpaper='/usr/share/images/desktop-base/lines.xml'

if [[ -f "$wallpaper" ]] ; then								# Set a wallpaper if we can find the right file.
	gsettings set org.gnome.desktop.background picture-opacity 100
	gsettings set org.gnome.desktop.background picture-options 'zoom'
	gsettings set org.gnome.desktop.background picture-uri "file://$wallpaper"
else											# Set a gradient if we can't.
	gsettings set org.gnome.desktop.background color-shading-type 'horizontal'
	gsettings set org.gnome.desktop.background primary-color '#0099cc'
	gsettings set org.gnome.desktop.background secondary-color '#006699'
	echo -e "\nERROR! Couldn't find image file to set as wallpaper. Setting a nice gradient instead."
fi
