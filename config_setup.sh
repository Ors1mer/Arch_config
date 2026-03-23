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

# pywal and wallpaper
echo "Setting up wallpaper & terminal colorscheme..."
[ ! -d $HOME/Pictures/wallpapers] && mkdir $HOME/Pictures/wallpapers
cp -r $PWD/images/* $HOME/Pictures/wallpapers
#cat ~/.cache/wal/sequences &

bspc wm -r
wal -i $HOME/Pictures/wallpapers/earth.jpg
