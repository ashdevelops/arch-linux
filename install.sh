sudo pacman -Syu --noconfirm - < pkglist

mkdir ~/scripts ~/work ~/dev ~/screenshots

cp -a config/. /home/ash/.config/
cp -a scripts/. /home/ash/scripts/
cp -R wallpapers/ /home/ash/wallpapers

sudo chmod +x /home/ash/scripts/*

sudo mkdir /mnt/storage

echo "UUID=46BA9DEABA9DD6B1       /mnt/storage	ntfs	defaults,noatime,rw,nofail 0 3" | sudo tee -a /etc/fstab
systemctl daemon-reload

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -Syu jetbrains-toolbox php composer spotify plex-media-server visual-studio-code-bin zsh vlc waybar-git swaylock-effects --nocleanmenu --nodiffmenu --noconfirm

sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now plexmediaserver
sudo systemctl enable sddm.service

timedatectl set-timezone Europe/London
sudo usermod -a -G input $USER
chsh -s $(which zsh)
echo "neofetch" >> ~/.zshrc

sh -c "$(curl -fsSL raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Script finished - suggesting you reboot..."
