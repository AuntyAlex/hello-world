#! /usr/bin/env bash

if [[ "$1" = "about" ]] ; then
	echo "Gedit text editor: turn on (syntax-hightlighting, bracket-matching, auto-indent, auto-save, backup-copy); start full screen."
	exit
fi

gsettings set org.gnome.gedit.preferences.editor syntax-highlighting true
gsettings set org.gnome.gedit.preferences.editor bracket-matching true
gsettings set org.gnome.gedit.preferences.editor auto-indent true 
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor auto-save true
gsettings set org.gnome.gedit.preferences.editor create-backup-copy true
gsettings set org.gnome.gedit.state.window size '(1920, 1080)'			# Starting Gedit at a resolution bigger than the screen should result in a maximised window. Fingers crossed.
gsettings set org.gnome.gedit.preferences.editor tabs-size 'uint32 2'
gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor wrap-mode 'none'
