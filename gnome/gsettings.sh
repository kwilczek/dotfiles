#!/bin/bash

# Disable automatic updates.
gsettings set org.gnome.software allow-updates false
gsettings set org.gnome.software download-updates false

# Calendar options.
gsettings set org.gnome.desktop.calendar show-weekdate false
gsettings set org.gnome.desktop.interface clock-show-date true

# Set wallpaper and lock screen.
gsettings set org.gnome.desktop.background picture-options 'stretched'
gsettings set org.gnome.desktop.screensaver picture-options 'stretched'

# Set nautilus options.
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.list-view use-tree-view false
gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'date_modified', 'permissions']"
gsettings set org.gnome.nautilus.preferences show-delete-permanently true
gsettings set org.gnome.nautilus.preferences show-image-thumbnails 'never'

# Gnome Shell options.
gsettings set org.gnome.shell always-show-log-out true
gsettings set org.gnome.shell development-tools true
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.gnome.desktop.session idle-delay 'uint32 900'
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic false
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 17.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 6.0
gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'libreoffice-writer.desktop', 'libreoffice-calc.desktop', 'org.gnome.Nautilus.desktop' ]"

# Privacy
gsettings set org.gnome.desktop.privacy hide-identity true
gsettings set org.gnome.desktop.search-providers disable-external true

# Dock
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
