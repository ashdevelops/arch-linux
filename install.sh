echo "KEYMAP=gb" | sudo tee -a /etc/vconsole.conf
localectl --no-convert set-x11-keymap gb pc104

sudo pacman -Syu --noconfirm - < pkglist

sudo modprobe vboxdrv
sudo adduser $USER vboxusers

mkdir ~/scripts ~/work ~/dev ~/recordings

cp -a config/. /home/ash/.config/
cp -a scripts/. /home/ash/scripts/
wget https://raw.githubusercontent.com/tremby/imgur.sh/main/imgur.sh -O ~/scripts/imgur
cp -R wallpapers/ /home/ash/wallpapers

sudo chmod +x /home/ash/scripts/*

sudo mkdir /mnt/storage

echo "UUID=46BA9DEABA9DD6B1       /mnt/storage	ntfs	defaults,noatime,rw,nofail 0 3" | sudo tee -a /etc/fstab
systemctl daemon-reload
sudo mount -a

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -Syu jetbrains-toolbox php composer spotify plex-media-server zsh vlc waybar-git swaylock-effects swww cava-git wlogout google-chrome --nocleanmenu --nodiffmenu --noconfirm

timedatectl set-timezone Europe/London

sh -c "$(curl -fsSL raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "neofetch" >> ~/.zshrc
echo "export PATH=\$PATH:\"\$HOME/.local/share/JetBrains/Toolbox/scripts\"" >> ~/.zshrc
echo "export PATH=\$PATH:\"\$HOME/scripts\"" >> ~/.zshrc

echo 'deny = 5' | sudo tee -a /etc/security/faillock.conf

cp other/.zshrc /home/ash/.zshrc

cp -R /mnt/storage/ssh-backup ~/.ssh
sudo chmod -R 600 ~/.ssh/work*  ~/.ssh/personal* 

git config --global user.name "ashdevelops"
git config --global user.email "ash.smith.dev@gmail.com"

sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now plexmediaserver
sudo systemctl enable --now sddm.service
