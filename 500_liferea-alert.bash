#! /usr/bin/env bash

if [[ "$1" = "about" ]] ; then
	echo "Plays a sound every 5 minutes while there are unread items in Liferea feed reader."
	exit
fi

liferea_alarm() {
	local sound="/usr/share/sounds/speech-dispatcher/test.wav"

	while true ; do
		local count=$( dbus-send --session --dest=org.gnome.feed.Reader --print-reply=literal --type=method_call /org/gnome/feed/Reader org.gnome.feed.Reader.GetUnreadItems ) 
		[[ "$count" == "   int32 0" ]] || { paplay "$sound" ; paplay "$sound" ; }
		sleep 5m
	done
}

liferea_alarm </dev/null &>/dev/null &
