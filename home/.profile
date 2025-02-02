export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

export QT_STYLE_OVERRIDE=kvantum
export MANPAGER="sh -c 'col -bx | bat -l man -p --paging always'"
export MANROFFOPT="-c"
export BROWSER=librewolf
export EDITOR=nvim
export VISUAL=nvim
export BAT_THEME=gruvbox-dark
GPG_TTY=$(tty)
export GPG_TTY

# xdg-ninja
export ANDROID_HOME=$XDG_DATA_HOME/android
export LESSHISTFILE=$XDG_CACHE_HOME/less/history
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export SQLITE_HISTORY="$XDG_CACHE_HOME"/sqlite_history
export WINEPREFIX="$XDG_DATA_HOME"/wine

# Rust
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo
export RUSTC_WRAPPER=/usr/bin/sccache

export PATH="$HOME/bin:$HOME/.local/bin:$CARGO_HOME/bin:${PATH}"
