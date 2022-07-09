#!/bin/bash

commons=(
		autoconf
		bat
		bison
		build-essential
		ca-certificates
		cmake
		curl
		fd-find
		file
		fzf
		gcc
		gdb
		gnupg
		lcov
		libbz2-dev
		libffi-dev
		libgdbm-compat-dev
		libgdbm-dev
		liblzma-dev
		libncurses5-dev
		libreadline-dev
		libsqlite3-dev
		libssl-dev
		libxml2-dev
		lsb-release
		lzma
		lzma-dev
		pkg-config
		procps
		python3
		python3-pip
		re2c
		software-properties-common
		sqlite3
		tk-dev
		tree
		unzip
		uuid-dev
		wget
		zip
		zlib1g-dev
		zsh
	)

	sudo apt-get update
	# sudo apt-get install -y "${commons[@]}"
	for pkg in ${commons[@]}; do
					sudo apt-get install $pkg -y
	done
	sudo apt-get autoremove -y
	sudo apt-get autoclean
