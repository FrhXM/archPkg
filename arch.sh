#!/usr/bin/env bash 
                            # == MY BASE PKG INSTALLER [ Arch ] == #
sudo pacman -Syy --needed xorg-server xorg-xinit xorg-xmessage xwallpaper acpilight xmonad xmonad-contrib xmobar kitty \
    firefox qutebrowser \
    dmenu rofi \
    fzf fd exa bat xclip trash-cli man-db imagemagick xdotool acpi \
    scrot slock dunst libnotify \
    neovim sxiv mpv \
    nautilus udisks2 udiskie \
    gvfs gvfs-mtp gvfs-smb gvfs-afc gvfs-nfs gvfs-gphoto2 \
    unzip unrar dosfstools ntfs-3g \
    unclutter picom lxappearance-gtk3 redshift \
    arc-gtk-theme papirus-icon-theme \
    python php nodejs npm vscode \
    ttf-dejavu ttf-font-awesome ttf-jetbrains-mono \
    pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulsemixer pamixer \
    bluez bluez-utils blueman network-manager-applet trayer \
    xf86-video-intel xdg-user-dirs pacman-contrib neofetch htop 
