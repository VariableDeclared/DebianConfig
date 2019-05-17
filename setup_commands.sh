ssh-keygen
sudo apt-get install -y openvpn python-pip htop irssi
mkdir ~/projects/
cd $_
git clone git@github.com:VariableDeclared/DebianConfig.git
cd DebianConfig
cp projects/DebianConfig/.vimrc ~/
cp projects/DebianConfig/.zshrc ~/
touch .envs
touch .aliases
sudo pip install virtualenvwrapper
cd projects/DebianConfig
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
gcloud auth login

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\n    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone git@github.com:sjl/badwolf.git
cd badwolf
cp -r colors ~/.vim/
cd ~/
