#!/user/bin/env sh

echo -n "Enter your DCU username:"
read username

echo -n "Installing ZSH..."
sudo apt update && sudo apt-get install zsh

echo -n "Downloading and installing Einstein"
wget "https://einstein.computing.dcu.ie/res/einstein" && sudo install -v -m 0755 einstein /usr/local/bin

echo -n "Setting your Einstein username..."
echo "EINSTEIN_USERNAME='"$username"'" >> $HOME/.bashrc

echo -n "Done."
echo -n "Restart your shell (terminal) to use Einstein"
