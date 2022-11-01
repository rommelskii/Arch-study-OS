#! \bin\bash

sudo pacman -Syyu

sudo pacman -S install git

sudo pacman -S --needed base-devel

cd /home/$(whoami)

mkdir git

cd git

git clone https://aur.archlinux.org/libpamac-aur

git clone https://aur.archlinux.org/pamac-aur

cd libpamac-aur 

makepkg -si

cd /home/$(whoami)/git/pamac-aur

makepkg -si 

cd

pamac build notion-app cider teams prospect-mail-bin visual-studio-code-bin

clear

echo "Done"

