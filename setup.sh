#!/bin/bash

sgdotfiles="$HOME/.sgdotfiles" #dot files location
# gitthings="$HOME/Downloads/gitthings"
# scripts="$HOME/Downloads/gitthings/scripts"

# #Installing Dependencies (arch only)
# echo "Installing Dependencies"
# sudo pacman -S i3-gaps rofi kdenlive alacritty ranger dunst neofetch zsh git polybar picom nitrogen arandr udisk2 thunar blueman flameshot

#Download Dots
# echo "Downloading Dotfiles"
# cd && git clone https://gitlab.com/shason/dotfiles.git

cd $sgdotfiles
ln -sfn $HOME/.sgdotfiles/.zshenv ~/
ln -sfn $HOME/.sgdotfiles/.config/alacritty ~/.config
ln -sfn $HOME/.sgdotfiles/.config/dunst ~/.config
ln -sfn $HOME/.sgdotfiles/.config/fastfetch ~/.config
ln -sfn $HOME/.sgdotfiles/.config/zsh ~/.config
ln -sfn $HOME/.sgdotfiles/.config/wofi ~/.config
ln -sfn $HOME/.sgdotfiles/.config/sway ~/.config
ln -sfn $HOME/.sgdotfiles/.config/wlogout ~/.config
ln -sfn $HOME/.sgdotfiles/.config/waybar ~/.config


# configs for i3
# ln -sfn $HOME/.sgdotfiles/.config/i3 ~/.config
# ln -sfn $HOME/.sgdotfiles/.config/nitrogen ~/.config
# ln -sfn $HOME/.sgdotfiles/.config/picom ~/.config
# ln -sfn $HOME/.sgdotfiles/.config/polybar ~/.config
# ln -sfn $HOME/.sgdotfiles/.config/rofi ~/.config
# ln -sfn $HOME/.sgdotfiles/.config/sddm ~/.config
