#!/bin/bash
echo " ##################################################################"
echo " ########### Clone my Hotfiles From Github ########################"
echo " ##################################################################"
# Clone My Hotfiles
git clone https://github.com/frhxm/Hotfiles

# active Audio & crate directory ~/.config (~/.config aleardy exsite because enter in fish Shell)
pulseaudio --start

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
mv nvim/ ~/.config/
mv fish/functions/* ~/.config/fish/functions
mv --suffix=.old fish/config.fish ~/.config/fish/
xdg-user-dirs-update
mv --suffix=.old user-dirs.dirs ~/.config/

echo " ########################### "
echo " ### Directory In Home ##### "
echo " ########################### "
mkdir -p ~/.local/share/fonts
mv ../.local/share/fonts/* ~/.local/share/fonts
mv ../pix/ ~/
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

echo " ############################################################ "
echo " ############### Install Vim Plug ########################### "
echo " ############################################################ "
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo " ########################################################### "
echo " ################ EveryThings Is Ready ##################### "
echo " ########################################################### "
sleep 5
exit
