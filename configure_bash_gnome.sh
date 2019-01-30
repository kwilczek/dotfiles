#!/bin/bash

# Gnome Terminal preferences in dconf are stored under this path:
term_path="/org/gnome/terminal/legacy/profiles:"

# We need a new UUID for our profile.
# I do not care if there are different profiles. This is only
# a run-once setup script that will set me up after a fresh
# installation. And I do not use more than one Bash profile.
uuid="$( uuidgen )"

# Name the new profile and set as the default one.
dconf write "${term_path}/:${uuid}/visible-name" "'kamil'"
dconf write "${term_path}/list" "['${uuid}']"
dconf write "${term_path}/default" "'${uuid}'"

# Global Gnome Terminal preferences.
dconf write "/org/gnome/terminal/legacy/default-show-menubar" "false"

# Set favourite preferences in the profile.
dconf write "${term_path}/:${uuid}/default-show-menubar" "false"
dconf write "${term_path}/:${uuid}/use-system-font" "false"
dconf write "${term_path}/:${uuid}/audible-bell" "false"
dconf write "${term_path}/:${uuid}/use-theme-colors" "false"
dconf write "${term_path}/:${uuid}/font" "'Fira Code Regular 10'"
dconf write "${term_path}/:${uuid}/background-color" "'rgb(0,0,0)'"
dconf write "${term_path}/:${uuid}/scrollbar-policy" "'never'"

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
dconf write "/org/gnome/desktop/peripherals/touchpad/natural-scroll" "false"
dconf write "/org/gnome/settings-daemon/plugins/power/sleep-inactive-ac-type" "'nothing'"
dconf write "/org/gnome/settings-daemon/plugins/power/sleep-inactive-battery-type" "'nothing'"
