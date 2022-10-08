#!/user/bin/env sh

echo "Welcome!"
echo "Enter your DCU username:"
read username

echo "Installing ZSH..."
sudo apt update && sudo apt-get install zsh

echo "Downloading and installing Einstein"
wget "https://einstein.computing.dcu.ie/res/einstein" && sudo install -v -m 0755 einstein /usr/local/bin

echo "Setting your Einstein username..."
echo "EINSTEIN_USERNAME='"$username"'" >> $HOME/.bashrc

echo "Done."
echo "Restart your shell (terminal) to use Einstein"
exit
