ssh-keygen
sudo apt-get install -y openvpn python2 python2-dev \
        python3 python3-dev python3-pip htop irssi \
        vim build-essential gitk zsh curl
mkdir ~/projects/
cd $_
git clone git@github.com:VariableDeclared/DebianConfig.git
cd DebianConfig
cp projects/DebianConfig/.vimrc ~/
cp projects/DebianConfig/.zshrc ~/
touch .envs
touch .aliases
sudo pip3 install virtualenvwrapper
cd projects/DebianConfig
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
gcloud auth login
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\n    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone git@github.com:sjl/badwolf.git
cd badwolf
cp -r colors ~/.vim/
cd ~/

echo "Start vim and run :PlugInstall."

# https://www.vim.org/scripts/script.php?script_id=1218
