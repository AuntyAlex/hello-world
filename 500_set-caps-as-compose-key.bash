#! /usr/bin/env bash

if [[ "$1" = "about" ]] ; then
	echo "Sets CapsLock as the compose key; used for typing special characters."
	exit
fi

attempts=0

while true ; do

value0=$( gsettings get org.gnome.desktop.input-sources xkb-options )

if [[ "$value0" = *'compose:caps'* ]] ; then
	echo "It looks like Capslock has been assigned as the compose key. Jolly good."
	break
elif [[ "$value0" = *'compose:'* ]] ; then
	echo "It looks like something other than Capslock is already assigned as the compose key. You might want to look into that."
	break
elif (( $attempts != 0 )) ; then
	echo "Could not set Capslock as the compose key for unknown reasons. Further investigation required."
	break
else
	echo "Attempting to set Capslock as the compose key."
	gsettings set org.gnome.desktop.input-sources xkb-options "@as ['compose:caps']"
	attempts=1
fi
done

echo -e "\nCurrent value for 'org.gnome.desktop.input-sources xkb-options' is:"
gsettings get org.gnome.desktop.input-sources xkb-options

exit
