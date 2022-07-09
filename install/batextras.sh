#!/bin/bash

sudo rm -rf ~/.bat-extras
git clone https://github.com/eth-p/bat-extras ~/.bat-extras
sudo ~/.bat-extras/build.sh --install
