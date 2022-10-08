#!/user/bin/env sh

echo
echo "Welcome!"
echo 
read -p "Enter your DCU username:" username
echo "Your DCU username:"$username

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
echo "EINSTEIN_USERNAME='"$username"'" >> $HOME/.bashrc

echo "Done."
echo "Restart your shell (terminal) to use Einstein"
sleep 20
exit
