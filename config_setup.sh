#!/usr/bin/env bash
# Setups all of the configs into the system

echo "Copying BSPWM & SXHKD configs..." 
# bspwm
[ ! -d $HOME/.config/bspwm] && mkdir $HOME/.config/bspwm
cp -r $PWD/configs/bspwmrc $HOME/.config/bspwm/bspwmrc
# sxhkd
[ ! -d $HOME/.config/sxhkd] && mkdir $HOME/.config/sxhkd
cp -r $PWD/configs/sxhkdrc $HOME/.config/sxhkd/sxhkdrc

# polybar
echo "Copying Polybar config..."
[ ! -d $HOME/.config/polybar] && mkdir $HOME/.config/polybar
cp -r $PWD/configs/polybar/* $HOME/.config/polybar/*

# alacritty
echo "Copying Alacritty config..."
[ ! -d $HOME/.config/alacritty] && mkdir $HOME/.config/alacritty
cp -r $PWD/configs/alacritty/* $HOME/.config/alacritty/*

# vim
echo "Copying vim setup and addons..."
[ ! -d $HOME/.vim] && mkdir $HOME/.vim
cp -r $PWD/configs/.vim/* $HOME/.vim/*
cp $PWD/configs/.vimrc $HOME/.vimrc

# pywal and wallpaper
echo "Setting up wallpaper & terminal colorscheme..."
[ ! -d $HOME/pictures/wallpapers] && mkdir $HOME/pictures/wallpapers
cp -r $PWD/images/* $HOME/pictures/wallpapers
#cat ~/.cache/wal/sequences &

bspc wm -r
wal -i $HOME/pictures/wallpapers/cp3.jpg
