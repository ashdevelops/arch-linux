sudo pacman -Syu base-devel xorg-server xorg-xinit i3-wm sddm ntfs-3g git nano rofi polybar dunst blueman bluez bluez-utils kitty nautilus nitrogen firefox picom neofetch dotnet-runtime dotnet-sdk ranger pulsemixer libpulse --noconfirm

echo "xrandr --output HDMI-1 --right-of DP-1" | sudo tee -a /etc/X11/xinit/xinitrc.d/51-display-settings.sh
echo "nitrogen --set-zoom --random ~/wallpapers --head=0 && nitrogen --set-zoom-fill --random ~/wallpapers --head=1" | sudo tee -a /etc/X11/xinit/xinitrc.d/52-wallpaper-settings.sh

sudo chmod +x /etc/X11/xinit/xinitrc.d/51-display-settings.sh
sudo chmod +x /etc/X11/xinit/xinitrc.d/52-wallpaper-settings.sh

echo "UUID=46BA9DEABA9DD6B1       /mnt/other-drive	ntfs	defaults,noatime,rw,nofail 0 3" | sudo tee -a /etc/fstab
systemctl daemon-reload

sudo pacman -S --needed base-devel git && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -Syu betterlockscreen plex-media-server spotify jetbrains-toolbox visual-studio-code-bin php composer --nocleanmenu --nodiffmenu

cp -a config/. ~/.config/
cp ./.xinitrc ~/.xinitrc

mkdir ~/scripts

sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now sddm.service

startx
