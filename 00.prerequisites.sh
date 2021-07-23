#!/usr/bin/env bash

if [[ "${EUID}" -eq 0 ]]; then
    echo
    echo "  This script should not be run as root!"
    echo "  Please add your user to the sudo group."
    echo "  # usermod -a -G sudo username"
    echo
    exit 0
fi

# edit fstab --> ssd,noatime

set -o pipefail
set -o errexit
set -o nounset

sudo apt-get --yes install  \
    vim                     \
    git                     \
    python3-pip             \
    python3-apt             \
    uuid-runtime            \
    keepassxc               \
    wl-clipboard            \
    xclip                   \
    fonts-firacode          \
    fonts-inconsolata

sudo apt-get clean

python3 -m pip install ansible
