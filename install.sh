sudo pacman -Syu base base-devel xorg-server xorg-xinit i3-wm ntfs-3g git nano rofi polybar dunst blueman bluez bluez-utils kitty nautilus firefox neofetch htop discord flameshot gnome-keyring nitrogen --noconfirm
# non-essential: sddm dotnet-runtime dotnet-sdk pulse-mixer libpulse ranger picom

echo "xrandr --output HDMI-1 --left-of DP-1" | sudo tee -a /etc/X11/xinit/xinitrc.d/51-display-settings.sh
echo "nitrogen --set-zoom --random ~/wallpapers --head=0 && nitrogen --set-zoom-fill --random ~/wallpapers --head=1" | sudo tee -a /etc/X11/xinit/xinitrc.d/52-wallpaper-settings.sh
echo "export PATH=\"\$HOME/.config/composer/vendor/bin:\$PATH\"" | sudo tee -a /etc/X11/xinit/xinitrc.d/53-environment-variables.sh

sudo chmod +x /etc/X11/xinit/xinitrc.d/*.sh

cp -a config/. /home/ash/.config/
cp .xinitrc /home/ash/.xinitrc
cp -R wallpapers/ /home/ash/wallpapers

sudo mkdir /mnt/other-drive

echo "UUID=46BA9DEABA9DD6B1       /mnt/other-drive	ntfs	defaults,noatime,rw,nofail 0 3" | sudo tee -a /etc/fstab
systemctl daemon-reload

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -Syu jetbrains-toolbox php composer spotify betterlockscreen plex-media-server visual-studio-code-bin --nocleanmenu --nodiffmenu --noconfirm

mkdir ~/scripts

sudo systemctl enable --now bluetooth.service
#sudo systemctl enable --now sddm.service
sudo systemctl enable --now plexmediaserver

reboot
