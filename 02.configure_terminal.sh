#!/usr/bin/env bash

set -o pipefail
set -o errexit
set -o nounset

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

# Fonts hinting.
dconf write "/org/gnome/settings-daemon/plugins/xsettings/hinting" "'medium'"

# Set favourite preferences in the profile.
dconf write "${term_path}/:${uuid}/default-show-menubar" "false"
dconf write "${term_path}/:${uuid}/use-system-font" "false"
dconf write "${term_path}/:${uuid}/audible-bell" "false"
dconf write "${term_path}/:${uuid}/use-theme-colors" "false"
dconf write "${term_path}/:${uuid}/font" "'Fira Code Regular 10'"
dconf write "${term_path}/:${uuid}/background-color" "'rgb(0,0,0)'"
dconf write "${term_path}/:${uuid}/scrollbar-policy" "'never'"
dconf write "${term_path}/:${uuid}/foreground-color" "'rgb(255,255,255)'"
dconf write "${term_path}/:${uuid}/palette" "['rgb(7,54,66)', 'rgb(220,50,47)', 'rgb(133,153,0)', 'rgb(181,137,0)', 'rgb(38,139,210)', 'rgb(211,54,130)', 'rgb(42,161,152)', 'rgb(238,232,213)', 'rgb(0,43,54)', 'rgb(203,75,22)', 'rgb(88,110,117)', 'rgb(101,123,131)', 'rgb(131,148,150)', 'rgb(108,113,196)', 'rgb(147,161,161)', 'rgb(253,246,227)']"

