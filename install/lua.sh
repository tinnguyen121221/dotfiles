#!/bin/bash


# Usage: ./install/lua.sh 5.4.4
VERSION=${1:-5.4.4}

curl -R -O "http://www.lua.org/ftp/lua-${VERSION}.tar.gz"
tar zxf "lua-${VERSION}.tar.gz"
cd "lua-${VERSION}"
sudo make all test
