#! /bin/sh

ln -sf $(pwd)/.Xresources ~/.Xresources
ln -sf $(pwd)/.Xresources ~/.Xdefaults

ln -sf $(pwd)/.zprofile ~/.zprofile
ln -sf $(pwd)/.zshrc ~/.zshrc

ln -sf $(pwd)/.gitignore_global ~/.gitignore_global
ln -sf $(pwd)/.gitconfig ~/.gitconfig

ln -sf $(pwd)/.wallpaper.jpg ~/.wallpaper.jpg

mkdir -p ~/.config/Code\ -\ OSS/User
ln -sf $(pwd)/.config/Code\ -\ OSS/User/settings.json ~/.config/Code\ -\ OSS/User/settings.json

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml
ln -sf $(pwd)/.config/xfce4/xfconf/xfce-perchannel-xml/keyboard-layout.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/keyboard-layout.xml
ln -sf $(pwd)/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
ln -sf $(pwd)/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
ln -sf $(pwd)/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
ln -sf $(pwd)/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
ln -sf $(pwd)/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
