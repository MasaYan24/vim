#!/bin/sh

mkdir -p $HOME/.config/nvim
ln -s $HOME/.vim/vimrc.vim $HOME/.config/nvim/init.vim

sudo apt install -y neovim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh)" \
  -- $HOME/.vim/bundles/dein

pip install autopep8 black flake8 isort mypy pynvim
