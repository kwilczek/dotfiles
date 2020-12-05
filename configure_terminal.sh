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

