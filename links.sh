#!/bin/bash

backup_and_link() {

	if [ -f "$2" ] || [ -d "$2" ]; then
		mv -bf "$2" ~/.backup/
	fi

	ln -svf "$1" "$2"
}

mkdir -p ~/.backup
backup_and_link "${PWD}/.zshrc" ~/.zshrc
backup_and_link "${PWD}/.zsh_aliases" ~/.zsh_aliases
backup_and_link "${PWD}/.zfunc/" ~/.zfunc
