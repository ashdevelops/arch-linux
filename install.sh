sudo pacman -Syu ntfs-3g git nano rofi polybar dunst bluez bluez-utils kitty

echo "UUID=46BA9DEABA9DD6B1       /mnt/other-drive	ntfs	defaults,noatime,rw,nofail 0 3" | sudo tee -a /etc/fstab

# yay; plex-media-server spotify jetbrains-toolbox
