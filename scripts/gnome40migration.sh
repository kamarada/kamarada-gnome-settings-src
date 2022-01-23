#!/usr/bin/env bash
if ! [[ -e /etc/.gnome40new ]]; then
	dconf load / < /usr/share/gnome-shell/10_gnome40transition
	if ! [[ -e ~/.config/autostart/gnome40-transition.desktop ]] ; then
	  cp /etc/xdg/autostart/gnome40-transition.desktop ~/.config/autostart/gnome40-transition.desktop
	  echo "Hidden=true" >> ~/.config/autostart/gnome40-transition.desktop
	fi 
fi
