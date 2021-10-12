#!/data/data/com.termux/files/usr/bin/bash

pkg install -y git fish
clear

if [ -d "$HOME/.termux" ]; then
 mv $HOME/.termux $HOME/.termux.bak
fi

curl -fsLo $HOME/.termux/colors.properties --create-dirs https://cdn.jsdelivr.net/gh/termux/termux-styling@master/app/src/main/assets/colors/base16-one-dark.properties
curl -fsLo $HOME/.termux/font.ttf --create-dirs https://cdn.jsdelivr.net/gh/4679/oh-my-termux@fish/.termux/font.ttf
curl -fsLo $HOME/.termux/termux.properties --create-dirs https://cdn.jsdelivr.net/gh/4679/oh-my-termux@fish/.termux/termux.properties

curl -fsLo $HOME/.config/fish/config.fish --create-dirs https://cdn.jsdelivr.net/gh/4679/oh-my-termux@fish/fish/config.fish

chsh -s fish

termux-setup-storage

echo "Done! Please restart Termux."

exit
