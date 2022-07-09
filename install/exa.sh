#!/bin/bash

EXA_VERION="v0.10.1"
mkdir -p /tmp && wget https://github.com/ogham/exa/releases/download/${EXA_VERION}/exa-linux-x86_64-${EXA_VERION}.zip -O /tmp/exa.zip
unzip /tmp/exa.zip -d /tmp/exa
sudo mv /tmp/exa/bin/exa /usr/local/bin/
rm -rf /tmp/exa.zip /tmp/exa
