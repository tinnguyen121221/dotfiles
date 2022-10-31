#!/bin/bash

backup_and_link() {
    SOURCE=$1
    DEST=$2

	if [ -f "$DEST" ] || [ -d "$DEST" ]; then
		mv -bf "$DEST" ~/.backup/
	fi

	ln -svf "$SOURCE" "$DEST"
}

mkdir -p ~/.backup
backup_and_link "$PWD/.profile" ~/.profile
backup_and_link "$PWD/.profile" ~/.zprofile
backup_and_link "$PWD/.zshrc" ~/.zshrc
backup_and_link "$PWD/.bash_aliases" ~/.bash_aliases
