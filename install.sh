sudo pacman -Syu --noconfirm - < pkglist

echo "xrandr --output HDMI-1 --left-of DP-1" | sudo tee -a /etc/X11/xinit/xinitrc.d/51-display-settings.sh
echo "nitrogen --set-zoom --random ~/wallpapers --head=0 && nitrogen --set-zoom-fill --random ~/wallpapers --head=1" | sudo tee -a /etc/X11/xinit/xinitrc.d/52-wallpaper-settings.sh
echo "export PATH=\"\$HOME/.config/composer/vendor/bin:\$PATH\"" | sudo tee -a /etc/X11/xinit/xinitrc.d/53-environment-variables.sh

mkdir ~/scripts ~/work ~/dev

cp -a config/. /home/ash/.config/
cp .xinitrc /home/ash/.xinitrc
cp -a scripts/. /home/ash/scripts/
cp -R wallpapers/ /home/ash/wallpapers

sudo chmod +x /etc/X11/xinit/xinitrc.d/*.sh
sudo chmod +x /home/ash/scripts/*.sh

sudo mkdir /mnt/storage

echo "UUID=46BA9DEABA9DD6B1       /mnt/storage	ntfs	defaults,noatime,rw,nofail 0 3" | sudo tee -a /etc/fstab
systemctl daemon-reload

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -Syu jetbrains-toolbox php composer spotify betterlockscreen plex-media-server visual-studio-code-bin zsh --nocleanmenu --nodiffmenu --noconfirm

sh -c "$(curl -fsSL raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now sddm.service
sudo systemctl enable --now plexmediaserver

echo "Script finished"
