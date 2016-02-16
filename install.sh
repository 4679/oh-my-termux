#!/data/data/com.termux/files/usr/bin/bash

termux-setup-storage
apt update
apt install -y git zsh
git clone git://github.com/4679/oh-my-termux.git oh-my-termux
clear

if [ -d "$HOME/.termux" ]; then
 mv $HOME/.termux $HOME/.termux.bak
fi
mv /data/data/com.termux/files/usr/etc/apt/sources.list /data/data/com.termux/files/usr/etc/apt/sources.list.bak

mv oh-my-termux/.termux $HOME/.termux
mv oh-my-termux/sources.list /data/data/com.termux/files/usr/etc/apt/sources.list

termux-reload-settings

apt update
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
chsh -s /data/data/com.termux/files/usr/bin/zsh
zsh

echo Done!
