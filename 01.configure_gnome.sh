#!/usr/bin/env bash

set -o pipefail
set -o errexit
set -o nounset

dconf write "/org/gnome/desktop/interface/enable-animations" "false"
dconf write "/org/gnome/desktop/interface/gtk-theme" "'Adwaita-dark'"
dconf write "/org/gnome/desktop/interface/clock-show-date" "true"
dconf write "/org/gnome/shell/extensions/dash-to-dock/dock-fixed" "false"
dconf write "/org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size" "30"
dconf write "/org/gnome/desktop/search-providers/disable-external" "true"
dconf write "/org/gnome/desktop/session/idle-delay" "uint32 900"
dconf write "/org/gnome/settings-daemon/plugins/color/night-light-enabled" "true"
dconf write "/org/gnome/settings-daemon/plugins/color/night-light-schedule-from" "18.0"
dconf write "/org/gnome/settings-daemon/plugins/color/night-light-schedule-to" "8.0"

dconf write "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding" "'<Super>t'"
dconf write "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name" "'gnome-terminal'"
dconf write "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command" "'gnome-terminal'"
dconf write "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings" "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

dconf write "/org/gnome/shell/favorite-apps" "['firefox.desktop', 'org.gnome.Nautilus.desktop', 'libreoffice-writer.desktop']"
dconf write "/org/gnome/nautilus/preferences/default-folder-viewer" "'list-view'"
dconf write "/org/gnome/nautilus/list-view/default-zoom-level" "'small'"
dconf write "/org/gnome/desktop/peripherals/touchpad/natural-scroll" "false"
dconf write "/org/gnome/settings-daemon/plugins/power/sleep-inactive-ac-type" "'nothing'"
dconf write "/org/gnome/settings-daemon/plugins/power/sleep-inactive-ac-timeout" "0"
dconf write "/org/gnome/settings-daemon/plugins/power/sleep-inactive-battery-timeout" "0"
dconf write "/org/gnome/settings-daemon/plugins/power/sleep-inactive-battery-type" "'nothing'"
dconf write "/org/gnome/settings-daemon/plugins/power/power-button-action" "'nothing'"

dconf write "/org/gnome/desktop/peripherals/touchpad/tap-to-click" "true"
dconf write "/org/gnome/desktop/peripherals/touchpad/two-finger-scrolling-enabled" "true"
dconf write "/org/gnome/settings-daemon/plugins/xsettings/antialiasing" "'rgba'"
dconf write "/org/gnome/desktop/privacy/remember-recent-files" "false"
dconf write "/org/gnome/software/download-updates-notify" "false"
dconf write "/org/gnome/software/download-updates" "false"
dconf write "/org/gnome/software/allow-updates" "false"
