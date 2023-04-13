#!/bin/bash

sudo pacman -Sy neofetch --noconfirm
clear
neofetch


echo "#####################################"
echo "#Arch Linux Post-Installation Script#"
echo "Made by: /ᐠ｡ꞈ｡ᐟ\ Konoe "Kadarz" Seishu" 
echo "#####################################"
echo "Script installs 'yay, visual studio code, htop, discord, grub customizer, ntfs filesystem, networkmanager' and for laptop devices 'laptop mode tools'"
echo  ""


echo "1) PC install"
echo "2) LAPTOP install"
read a
case $a in

1) 
    clear
    echo "Starting PC install..."
    sudo pacman -S --needed base-devel git --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm

    #add more packages if you need
    yay -Sy visual-studio-code-bin brave htop discord grub-customizer-git NTFS-3G networkmanager --noconfirm


        yay -Sy laptop-mode-tools --noconfirm

    echo "SUCCES"
    exit
    ;;


2)
    clear
    echo "Starting LAPTOP install..."
    sudo pacman -S --needed base-devel git --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm

    #add more packages if you need
    yay -Sy visual-studio-code-bin brave htop discord grub-customizer-git NTFS-3G networkmanager laptop-mode-tools --noconfirm
    echo "SUCCES"
    ;;

*) 
    echo "Exiting..."
    exit 
    ;;

esac
