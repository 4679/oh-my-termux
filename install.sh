#!/data/data/com.termux/files/usr/bin/bash

apt update
apt install -y git zsh
clear

if [ -d "$HOME/.termux" ]; then
 mv $HOME/.termux $HOME/.termux.bak
fi

curl -fsLo $HOME/.termux/colors.properties --create-dirs https://cdn.rawgit.com/4679/oh-my-termux/master/.termux/colors.properties
curl -fsLo $HOME/.termux/font.ttf --create-dirs https://cdn.rawgit.com/4679/oh-my-termux/master/.termux/font.ttf

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh --depth 1
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
chsh -s zsh

termux-setup-storage

echo Done!

exit
