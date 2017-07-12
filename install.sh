#! /bin/bash

# Determine OS and install ZSH

# yum
if [[ `command -v yum | grep -o yum` == 'yum' ]]; then
    sudo yum upgrade -y && sudo yum install -y zsh git wget

# mac
elif [[ `command -v brew | grep -o brew` == 'brew' ]]; then
    brew install -y zsh zsh-completions git wget

# apt-get
elif [[ `command -v apt-get | grep -o apt-get` == 'apt-get' ]]; then
    sudo apt-get update && sudo apt-get -y install zsh git wget

else
    echo "unsupported os"
    exit 1
fi


# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Install Theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# install plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# update .zshrc file
wget https://github.com/yossij/dotfiles/raw/master/zsh/.zshrc -O ~/.zshrc

# VIM
mkdir -p ~/.vim/colors/
wget https://github.com/tomasr/molokai/raw/master/colors/molokai.vim -O ~/.vim/colors/molokai.vim
wget https://github.com/yossij/dotfiles/raw/master/vim/.vimrc -O ~/.vimrc

echo "type 'zsh' to switch the shell"