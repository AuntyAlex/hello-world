#!/usr/bin/env bash

if [[ "$1" = "about" ]] ; then
	echo "Configures Tor Browser by writing user preferences to ~/.tor-browser/profile.default/user.js"
	exit
fi

echo 'user_pref("layout.css.devPixelsPerPx", "1.5");' >> ~/.tor-browser/profile.default/user.js
