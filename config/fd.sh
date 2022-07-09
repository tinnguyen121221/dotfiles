#!/bin/bash


mkdir -p ~/.local/bin
if command -v fdfind; then
				ln -sf $(which fdfind) ~/.local/bin/fd
fi
