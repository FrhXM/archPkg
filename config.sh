#!/bin/bash
echo "
#########################################################################################
####################### Clone my Hotfiles From Github ###################################
#########################################################################################
"
git clone https://github.com/frhxm/Hotfiles

echo " 
########################################################################################
####################### Move Every File Hotfiles To .Config ############################# 
#########################################################################################
"
cd Hotfiles/
ls -la
pwd

echo "### Move X11 File #####"
mv .xinitrc ~/
mv .Xresources ~/

echo "### Move .Config File ###"
cd .config
pwd
mv xmonad ~/.config/
mv xmobar ~/.config/
mv dunst/ ~/.config/
mv rofi/ ~/.config/
mv sxiv/ ~/.config/
mv kitty/* ~/.config/kitty/
mv fish/functions/* ~/.config/fish/functions/
mv --suffix=.bak fish/config.fish ~/.config/fish/

echo " 
###########################
### Directory In Home #####
###########################
"
mv ../pix/ ~/
xdg-user-dirs-update
mkdir ~/desk
mkdir ~/dl
mkdir ~/dox
mkdir ~/music
mkdir ~/prjcts
mkdir ~/vids
mkdir ~/pub

echo " 
############################################################
########### Now Welcome in My workflow #####################
############################################################
"
cd 
exit
