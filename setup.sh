#!/usr/bin/env bash
set -euxo pipefail

VIMPACK="$HOME/.vim-plugins/pack/plugins/start"

mkdir -p "$VIMPACK"

installPlugin() {
    repo="$1"
    name="$2"

    if [ ! -d "$VIMPACK/$name" ]; then
        echo "Installing $name..."
        git clone --depth 1 "$repo" "$VIMPACK/$name"
    else
        echo "$name already installed, skipping"
    fi
}

installPlugin https://github.com/catppuccin/vim catppuccin

