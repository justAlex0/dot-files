#!/usr/bin/env bash

[[ -z "$DEBUG" ]] && DEBUG=false
$DEBUG && set -Eeuxo pipefail

SCRIPT="$(realpath -s "${BASH_SOURCE[0]}")"
SCRIPT_DIR=$(dirname "$SCRIPT")
source "$SCRIPT_DIR"/include/log

if [[ ! -d "$HOME/.local/bin/" ]]; then
    mkdir --parents "$HOME/.local/bin/"
fi

function update {
    NAME="$(echo "$1" | awk -F '/' '{print $NF}')"

    if [[ -d ~/gitclone/"$NAME" ]]; then
        log "Updating $NAME"
        cd ~/gitclone/"$NAME" && git pull
    else
        log "Installing $NAME"
        git clone --depth 1 "$1.git" ~/gitclone/"$NAME" \
            && cd ~/gitclone/"$NAME"
    fi
}

function eww {
    update "https://github.com/elkowar/eww"

    cargo build --release
    install -vsDm 744 target/release/eww ~/.local/bin/eww-x
    if pacman -Q gtk-layer-shell &> /dev/null; then
        cargo build --release --no-default-features --features=wayland
        install -vsDm 744 target/release/eww ~/.local/bin/eww-wayland
    fi
}

function leftwm {
    if pacman -Q xorg-server &> /dev/null; then
        update "https://github.com/leftwm/leftwm"

        if [[ ! -f ~/.xinitrc ]]; then
            {
                echo "#\!/usr/bin/env zsh"
                echo "exec dbus-launch leftwm"
            } > ~/.xinitrc
        fi

        cargo build --release
        install -vsDm 744 \
            target/release/leftwm \
            target/release/leftwm-worker \
            target/release/lefthk-worker \
            target/release/leftwm-state \
            target/release/leftwm-check \
            target/release/leftwm-command \
            -t ~/.local/bin
    fi
}

function parinfer {
    update "https://github.com/eraserhd/parinfer-rust"
    cargo build --release --features emacs
}

function fennel_language_server {
    update "https://github.com/rydesun/fennel-language-server"
    cargo build --release
    install -vsDm 744 target/release/fennel-language-server ~/.local/bin
}

case $1 in
    "eww")
        eww
        ;;
    "leftwm")
        leftwm
        ;;
    "parinfer")
        parinfer
        ;;
    "fennel-language-server")
        fennel_language_server
        ;;

    "all")
        eww
        leftwm
        parinfer
        fennel_language_server
        ;;
    *) exit 1 ;;
esac
