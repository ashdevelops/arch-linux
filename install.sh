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
yay -Syu jetbrains-toolbox php composer spotify plex-media-server visual-studio-code-bin zsh vlc waybar-git swaylock-effects hyprpaper --nocleanmenu --nodiffmenu --noconfirm

timedatectl set-timezone Europe/London
sudo usermod -a -G input $USER

sh -c "$(curl -fsSL raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "neofetch" >> ~/.zshrc
echo "export PATH=\$PATH:\"\$HOME/.local/share/JetBrains/Toolbox/scripts\"" >> ~/.zshrc
echo "export PATH=\$PATH:\"\$HOME/scripts\"" >> ~/.zshrc

echo 'deny = 5' | sudo tee -a /etc/security/faillock.conf

wget https://raw.githubusercontent.com/tremby/imgur.sh/main/imgur.sh -O ~/scripts/imgur

sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now plexmediaserver
sudo systemctl enable --now sddm.service
