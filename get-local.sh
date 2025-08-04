#!/bin/bash 

rm -R waybar
cp -R ~/.config/waybar waybar

rm -R hypr
cp -R ~/.config/hypr hypr

rm -R wofi
cp -R ~/.config/wofi wofi

rm -R wlogout
cp -R ~/.config/wlogout wlogout

rm -R nvim
cp -R ~/.config/nvim nvim
rm -R ./nvim/.git
rm -R ./nvim/.github
rm ./nvim/.gitignore

rm -R swaylock
cp -R ~/.config/swaylock swaylock
