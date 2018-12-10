#!/bin/bash

# Get the default profile ID.
# But just after changing the name.
prof_id="$( dconf list /org/gnome/terminal/legacy/profiles:/ )"

# dconf terminal profiles path.
# prof_id starts with the ':' and ends with '/'.
prof_path="/org/gnome/terminal/legacy/profiles:/${prof_id}"

# set the profile name
dconf write "${prof_path}default-show-menubar"	"false"
dconf write "${prof_path}use-system-font"				"false"
dconf write "${prof_path}audible-bell"					"false"
dconf write "${prof_path}use-theme-colors"			"false"
dconf write "${prof_path}font"									"'Fira Code Medium 10'"
dconf write "${prof_path}background-color"			"'rgb(0,0,0)'"
dconf write "${prof_path}scrollbar-policy"			"'never'"

dconf write "/org/gnome/terminal/legacy/default-show-menubar" "false"
dconf write "/org/gnome/desktop/interface/enable-animations" "false"
dconf write "/org/gnome/desktop/interface/gtk-theme" "'Adwaita-dark'"
dconf write "/org/gnome/desktop/interface/clock-show-date" "true"
dconf write "/org/gnome/shell/extensions/dash-to-dock/dock-fixed" "false"
dconf write "/org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size" "30"
dconf write "/org/gnome/desktop/search-providers/disable-external" "true"
dconf write "/org/gnome/desktop/session/idle-delay" "uint32 900"
dconf write "/org/gnome/settings-daemon/plugins/color/night-light-enabled" "true"
dconf write "/org/gnome/settings-daemon/plugins/media-keys/terminal" "'<Super>t'"
dconf write "/org/gnome/shell/favorite-apps" "['firefox.desktop', 'org.gnome.Nautilus.desktop', 'libreoffice-writer.desktop']"
dconf write "/org/gnome/nautilus/preferences/default-folder-viewer" "'list-view'"
dconf write "/org/gnome/nautilus/list-view/default-zoom-level" "'small'"
