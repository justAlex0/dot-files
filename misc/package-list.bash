PKG+=(linux linux-firmware base base-devel opendoas)
PKG+=(e2fsprogs btrfs-progs)
PKG+=(git networkmanager iwd iptables-nft wget)
PKG+=(man-db man-pages texinfo)

PKG+=(efibootmgr apparmor strace lsof)
PKG+=(bind bandwhich net-tools nmap traceroute dnscrypt-proxy)
PKG+=(zsh fish stow neovim gvim tmux)
PKG+=(earlyoom)    # Early OOM Daemon for Linux
PKG+=(fzf fzy)     # A command-line fuzzy finder


PKG+=(eza bat dust ripgrep fd sd hyperfine)
PKG+=(atuin zoxide task taskwarrior-tui)
# PKG+=(tealdeer wikiman arch-wiki-docs)

PKG+=(perf gdb clang python sccache)
PKG+=(zig zls)
PKG+=(rustup rust-analyzer)
PKG+=(prettier shellharden shfmt lua-language-server selene stylua)

PKG+=(smartmontools) # Control and monitor S.M.A.R.T. enabled ATA and SCSI Hard Drives
PKG+=(acpi)          # Client for battery, power, and thermal readings
PKG+=(htop btop nvtop)

PKG+=(bubblewrap)  # Unprivileged sandboxing tool
PKG+=(xdg-desktop-portal)
PKG+=(bemenu) # Dynamic menu library and client program inspired by dmenu
PKG+=(glfw vulkan-icd-loader)
PKG+=(pkgstats pacman-contrib)

# -- Display servers

if [[ "$DISPLAY_SERVER" == "X" ]]; then
    PKG+=(alacritty)
    PKG+=(xorg-server xorg-xinit xclip)
    PKG+=(xdg-desktop-portal-gtk)
    PKG+=(bspwm sxhkd xdo)
    PKG+=(xss-lock i3lock) # Screen locker
    PKG+=(picom)           # compositor
    PKG+=(bemenu-x11)      # X11 renderer for bemenu
    PKG+=(flameshot)       # screenshoter
    PKG+=(feh)             # for wallpaper setting
fi

if [[ "$DISPLAY_SERVER" == "Wayland" ]]; then
    PKG+=(foot)
    PKG+=(wlroots xorg-xwayland wl-clipboard)
    PKG+=(hyprland)
    PKG+=(xdg-desktop-portal-hyprland)
    # PKG+=(xdg-desktop-portal-wlr)
    PKG+=(qt5-wayland qt6-wayland)
    PKG+=(swayidle)       # Idle management daemon
    PKG+=(swaylock)       # Screen locker
    PKG+=(bemenu-wayland) # Wayland (wlroots-based compositors) renderer for bemenu
    PKG+=(grim slurp)     # screenshoter
    PKG+=(waybar)         # bar
    AUR_PKG+=(swww)
fi

# -- Multimedia

PKG+=(pipewire wireplumber)
PKG+=(pipewire-alsa pipewire-pulse pipewire-jack qjackctl)
PKG+=(pamixer pavucontrol qpwgraph)

PKG+=(imv)             # Image viewer for Wayland and X11
PKG+=(mpd mpc ncmpcpp) # Music player
PKG+=(mpv mediainfo songrec easyeffects)
# PKG+=(soundconverter)   # A simple sound converter application for GNOME
# PKG+=(lmms)             # The Linux MultiMedia Studio

# -- Miscellaneous utilities

PKG+=(syncthing)            # file synchronization client/server application
PKG+=(nm-connection-editor) # NetworkManager GUI connection editor and widgets

PKG+=(yazi)
PKG+=(ark)           # Archiver
PKG+=(udisks2)       # Daemon, tools and libraries to access and manipulate disks, storage devices and technologies
PKG+=(fuseiso)       # FuseISO is a FUSE module to let unprivileged users mount ISO filesystem images
PKG+=(gvfs gvfs-mtp) # Virtual filesystem implementation
PKG+=(handlr-regex)  # Powerful alternative to xdg-utils (managing mime types)
PKG+=(trash-cli)     # Command line trashcan (recycle bin) interface

PKG+=(hunspell hunspell-en_us hunspell-ru enchant gspell)

PKG+=(mate-polkit)    # graphical authentication agent
PKG+=(dunst)          # Customizable and lightweight notification-daemon
PKG+=(yt-dlp)
PKG+=(qrencode)
PKG+=(tlp) # Linux Advanced Power Management
PKG+=(socat)

# -- Themes, icons, fonts

PKG+=(kvantum kvantum-qt5 lxappearance-gtk3)
PKG+=(arc-gtk-theme breeze-icons)
PKG+=(ttf-dejavu ttf-jetbrains-mono ttf-liberation ttf-opensans)
# PKG+=(ttc-iosevka-ss14)     # JetBrains Mono Style
# PKG+=(ttc-iosevka-aile)     # Sans style
# PKG+=(ttc-iosevka-etoile)   # Serif style
# PKG+=(ttf-iosevka-nerd)
PKG+=(unicode-emoji noto-fonts noto-fonts-cjk noto-fonts-emoji)

# -- Apps

PKG+=(libreoffice-fresh qbittorrent keepassxc zathura zathura-pdf-mupdf)
AUR_PKG+=(7-zip-full)
AUR_PKG+=(librewolf-bin freetube-bin)
AUR_PKG+=(xkb-switch catppuccin-cursors-mocha ttf-comic-neue)
AUR_PKG+=(downgrade rate-mirrors-bin)
# AUR_PKG+=(pince-git)

# Wine
# pacman -S wine-staging winetricks gamemode lib32-gamemode
# pacman -S --asdeps --needed $(pacman -Si wine-staging | sed -n '/^Opt/,/^Conf/p' | sed '$d' | sed 's/^Opt.*://g' | sed 's/^\s*//g' | tr '\n' ' ')
