#!/usr/bin/env bash

. ./scripts/install.sh
. ./scripts/links.sh

install_zsh
install_oh_my_zsh
install_oh_my_posh
install_fzf
install_rg
install_fd
install_neovim
install_neovim_config
install_gh_cli
install_nvm
install_package_list

link_dot_files
