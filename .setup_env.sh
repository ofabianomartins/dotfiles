# Adding softwares

sudo apt-get install vim tmux zsh curl build-essential gitk -y

# Set Zsh as default 

chsh -s $(which zsh)

# Install Oh My Zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup Vim Plugins

rm -rf   ~/.vim
mkdir -p ~/.vim/bundle

cd ~/.vim

git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

# Adding config alias

echo "alias config='/usr/bin/git --git-dir=/home/fabiano/.cfg/ --work-tree=/home/fabiano'" >> ~/.zshrc
# alias to push 
echo "alias config-update='/usr/bin/git --git-dir=/home/fabiano/.cfg/ --work-tree=/home/fabiano push origin'" >> ~/.zshrc

# Generate SSH keys 

# Personal SSH keys
ssh-keygen -b 4096 -f "$HOME/.ssh/$(hostname)-key" -C "fabiano.paula.martins@gmail.com"
# JOB SSH keys 
ssh-keygen -b 4096 -f "$HOME/.ssh/$(hostname)-job-key" -C "fabiano@investtools.com.br"

# Installing Asdf Language Version Manager

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc

# append completions to fpath
echo -e "\nfpath=(${ASDF_DIR}/completions $fpath)" >> ~/.zshrc
# initialise completions with ZSH's compinit
echo -e "\nautoload -Uz compinit && compinit" >> ~/.zshrc

sudo apt install \
  automake autoconf libreadline-dev \
  libncurses-dev libssl-dev libyaml-dev \
  libxslt-dev libffi-dev libtool unixodbc-dev \
  unzip

# Install Asdf plugins 

#NodeJs
~/.asdf/bin/asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

#Python
~/.asdf/bin/asdf plugin-add python

#Ruby
~/.asdf/bin/asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

