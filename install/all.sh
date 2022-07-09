#!/bin/bash

backup_and_link() {

    if [ -f $2 ] || [ -d $2 ]; then
        mv -f $2 ~/.backup
    fi

    ln -svf $1 $2
}

./install/commons.sh
./install/ohmyzsh.sh
./install/ohmyposh.sh
./install/exa.sh
./install/ripgrep.sh
./install/batextras.sh
./install/nvm.sh
./install/poetry.sh
./install/git.sh
./install/neovim.sh
./install/php.sh
./install/composer.sh
./install/python.sh 3.10.5
./install/mysql.sh
./install/psql.sh


mkdir -p ~/.backup
mkdir -p ~/.config/nvim
backup_and_link "${PWD}/.zshrc" ~/.zshrc
backup_and_link "${PWD}/.zsh_aliases" ~/.zsh_aliases
backup_and_link "${PWD}/.vimrc" ~/.config/nvim/init.vim
backup_and_link "${PWD}/.mytheme.omp.json" ~/.mytheme.omp.json
backup_and_link "${PWD}/.zfunc/" ~/.zfunc
