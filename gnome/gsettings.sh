#!/bin/bash

# Disable automatic updates.
gsettings set org.gnome.software allow-updates false
gsettings set org.gnome.software download-updates false
gsettings set org.gnome.software enable-software-sources false

# Set wallpaper and lock screen.
gsettings set org.gnome.desktop.background picture-options 'stretched'
gsettings set org.gnome.desktop.background picture-uri 'file:///home/kmwil/Obrazy/current_wallpaper_ln.jpg'
gsettings set org.gnome.desktop.screensaver picture-options 'stretched'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:///home/kmwil/Obrazy/current_lockimage_ln.jpg'

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
gsettings set org.gnome.shell favorite-apps "['rhythmbox.desktop', 'libreoffice-writer.desktop', 'libreoffice-calc.desktop', 'org.gnome.Nautilus.desktop' ]"

# Calendar options.
org.gnome.desktop.calendar show-weekdate true
org.gnome.desktop.interface clock-show-date true

# Privacy
org.gnome.desktop.privacy hide-identity true
org.gnome.desktop.privacy old-files-age 3
org.gnome.desktop.privacy remove-old-temp-files true
org.gnome.desktop.privacy remove-old-trash-files true

