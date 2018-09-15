## About

These are the configurations I use in vim.

## Plugins

I use the following plugins:

* ack.vim
* jellybeans
* ctrlp
* nerdtree
* vim-bundle
* vim-commentary
* vim-rails
* vim-ruby
* vim-signify
* vim-surround
* vim-windowswap
* vim-go
* vim-javascript
* vim-jsx

## Installation

Clone the repository

    git clone https://github.com/chamun/dot-vim.git ~/.vim

Make a symlink to the vimrc file

    ln -s ~/.vim/vimrc ~/.vimrc

Initialize the plugins

    cd ~/.vim
    git submodule update --init

Update the plugins

    git submodule update --recursive --remote

Set a global .gitignore

    git config --global core.excludesfile ~/.vim/.gitignore
