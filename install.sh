sudo pacman -Syu base-devel xorg-server xorg-xinit i3 ntfs-3g git nano rofi polybar dunst bluez bluez-utils kitty

echo "UUID=46BA9DEABA9DD6B1       /mnt/other-drive	ntfs	defaults,noatime,rw,nofail 0 3" | sudo tee -a /etc/fstab
systemctl daemon-reload

# yay; plex-media-server spotify jetbrains-toolbox
