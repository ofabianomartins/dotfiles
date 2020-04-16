
# Adding softwares

sudo apt-get install vim tmux zsh curl -y


# Setup Vim Plugins

rm -rf   ~/.vim
mkdir -p ~/.vim/bundle

cd ~/.vim

git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim


