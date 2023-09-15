#!/usr/bin/env bash

clear
echo
echo "Welcome!"
echo 
sleep 2
echo "Please enter your DCU username when prompted..."
sleep 1
echo
read -ep "Enter your DCU username:" dcu_username

sleep 2
echo "Your DCU username: " $dcu_username

echo
echo "Checking some things first..."
echo
if command -v apt &> /dev/null
then
    echo "Installing ZSH..."
    echo "This will ask for your Linux password"
    sudo apt update
    sudo apt install zsh
else
    echo "APT package manager could not be found"
    echo "you may need to install zsh seperately if einstein fails to run"
    echo "Continuing anyway..."
    echo "(This is normal for MacOS)"
    sleep 5
fi

echo
echo "Downloading Einstein..."
sleep 2
wget "https://einstein.computing.dcu.ie/res/einstein"

echo
sleep 2
echo "Installing Einstein (may need your Linux password)..."
sleep 2
sudo install -v -m 0755 einstein /usr/local/bin

echo
echo "Setting your Einstein username..."
[[ -f "$HOME/.bashrc" ]] && echo "export EINSTEIN_USERNAME='$dcu_username'" >> $HOME/.bashrc
[[ -f "$HOME/.zshrc" ]] && echo "export EINSTEIN_USERNAME='$dcu_username'" >> $HOME/.zshrc

echo "Done."
echo "Restart your shell (terminal) to use Einstein"
[[ -f "$HOME/.bashrc" ]] && source $HOME/.bashrc
[[ -f "$HOME/.zshrc" ]] && source $HOME/.zshrc
sleep 2
exit
