#!/bin/bash

RIPGREP_VERSION="13.0.0"
mkdir -p /tmp && wget https://github.com/BurntSushi/ripgrep/releases/download/${RIPGREP_VERSION}/ripgrep_${RIPGREP_VERSION}_amd64.deb -O /tmp/ripgrep.deb
sudo dpkg -i /tmp/ripgrep.deb
rm -f /tmp/ripgrep.deb
