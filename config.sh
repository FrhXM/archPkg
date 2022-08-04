#!/bin/bash
echo " ##################################################################"
echo " ########### Clone my Hotfiles From Github ########################"
echo " ##################################################################"
## Create .config File && aleardy existe after enter Fish Sheell
mkdir -p ~/.config

# Clone My Hotfiles
git clone https://github.com/frhxm/Hotfiles

echo " ################################################################## "
echo " ######## Move Every File Hotfiles To .Config ##################### "
echo " ################################################################## "
# In Hotfiles
cd Hotfiles/
ls -la
pwd

echo "### Move X11 File #####"
mv .xinitrc ~/
mv .Xresources ~/

echo "### Move .Config File ###"
cd .config
mv xmonad ~/.config/
mv xmobar ~/.config/
mv dunst/ ~/.config/
mv rofi/ ~/.config/
mv sxiv/ ~/.config/
mv kitty/ ~/.config/
mv picom/ ~/.config/
mv nvim/ ~/.config/
mv qutebrowser/ ~/.config/
xdg-user-dirs-update
cp -f user-dirs.dirs ~/.config/
cp -f fish/config.fish ~/.config/fish/
mv fish/functions/* ~/.config/fish/functions
mkdir -p ~/.local/share/fonts
mv ../.local/share/fonts/* ~/.local/share/fonts
mv ../pix/ ~/

echo " ########################### "
echo " ### Directory In Home ##### "
echo " ########################### "
mkdir ~/desk
mkdir ~/dl
mkdir ~/dox
mkdir ~/music
mkdir ~/prjcts
mkdir ~/vids
mkdir ~/pub

echo " ############################### "
echo " ##### Permision Files ######### " 
echo " ############################### "
# .xinitrc
chmod +x ~/.xinitrc
# Sxiv (image viewr Scripts)
chmod +x ~/.config/sxiv/exec/key-handler

echo " ########################################################### "
echo " ################ EveryThings Is Ready ##################### "
echo " ########################################################### "
sleep 5
exit
