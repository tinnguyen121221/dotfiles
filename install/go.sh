#!/bin/bash


# Usage: ./install/go.sh 1.19
VERSION=${1:-1.19.1}

wget "https://go.dev/dl/go${VERSION}.linux-$(dpkg --print-architecture).tar.gz"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "go${VERSION}.linux-$(dpkg --print-architecture).tar.gz"
