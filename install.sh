sudo pacman -Syu ntfs-3g git nano rofi polybar plex-media-server spotify dunst blueman jetbrains-toolbox kitty

echo "UUID=46BA9DEABA9DD6B1       /mnt/other-drive	ntfs	defaults,noatime,rw,nofail 0 3" | sudo tee -a /etc/fstab

# TODO: Restore config files
