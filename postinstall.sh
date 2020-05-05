#! /bin/sh

# create user
# lightdm gtk conf
# link all shit
# configure shell
# setup ohmyzsh
# install packages



sudo pacman -Syu
xargs -a packages/core.list sudo pacman -S --noconfirm --needed
xargs -a packages/dev.list sudo pacman -S --noconfirm --needed

# aur


sudo pacman -S expac yajl git --noconfirm --needed
