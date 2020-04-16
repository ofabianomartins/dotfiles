
# Adding softwares

sudo apt-get install vim tmux zsh curl -y

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

# Generate SSH keys 

# Personal SSH keys

ssh-keygen -b 4096 -f "$HOME/.ssh/$(hostname)-key" -C "fabiano.paula.martins@gmail.com"

# JOB SSH keys 

ssh-keygen -b 4096 -f "$HOME/.ssh/$(hostname)-job-key" -C "fabiano@investtools.com.br"
