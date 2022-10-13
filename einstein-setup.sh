#!/user/bin/env bash

echo
echo "Welcome!"
echo 
sleep 5
read -p "Enter your DCU username:" dcu_username
sleep 2
echo "Your DCU username:" $dcu_username

echo
echo "Installing ZSH..."
sudo apt update && sudo apt-get install zsh

echo "Downloading Einstein..."
wget "https://einstein.computing.dcu.ie/res/einstein"

echo
echo "Installing Einstein (may need your Linux password)..."
sudo install -v -m 0755 einstein /usr/local/bin

echo
echo "Setting your Einstein username..."
echo "EINSTEIN_USERNAME='"$dcu_username"'" >> $HOME/.bashrc

echo "Done."
echo "Restart your shell (terminal) to use Einstein"
source $HOME/.bashrc
sleep 5
exit
