#### livecd
timedatectl set-ntp true

fdisk -l
parted /dev/sdX
mkfs.ext4 /dev/sdX1
mkswap /dev/sdX2
swapon /dev/sdX2

mount /dev/sdX1 /mnt
pacstrap /mnt base base-devel linux linux-firmware amd-ucode grub vim git zsh sudo dhcpcd
genfstab -U /mnt/etc/fstab

arch-chroot /mnt

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc

vim /etc/locale.gen # en_US.UTF-8 UTF-8      ru_RU.UTF-8 UTF-8  
locale-gen
vim /etc/locale.conf # LANG=en_US.UTF-8

passwd

grub-install --target=i386-pc /dev/sdX
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m -G wheel -s zsh user
passwd user

visudo # wheel

reboot

#### postinstall

vim /etc/lightdm/lightdm.conf
```
[Seat:*]
greeter-session=lightdm-gtk-greeter
display-setup-script=xrandr --output DP-4 --primary
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sh link_dotfiles.sh

xrdb ~/.Xresources

sudo pacman -Syu
xargs -d '\n' -a packages/core.list sudo pacman -S --noconfirm --needed
xargs -d '\n' -a packages/dev.list sudo pacman -S --noconfirm --needed

#### TODO: 
aur shit install script
dhcpcd > networkmanager
dev deps
ssh (ssh-agent systemd)
