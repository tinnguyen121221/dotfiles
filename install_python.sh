#!/usr/bin/sh
# Script install Python from source
#
# Usage: install_python.sh <python_version>
#
# python_version: the full version is shown on the FTP page
# https://www.python.org/ftp/python/

if [ $# -eq 0 ] ; then
    echo 'Missing Python version'
    exit 0
fi

VERSION="$1"
FILE="/etc/apt/sources.list"
DOWNLOAD_URL="https://www.python.org/ftp/python/$VERSION/Python-$VERSION.tgz"
DOWNLOADED_FILE=$(basename "$DOWNLOAD_URL")
EXTRACTED_FOLDER=$(basename "$DOWNLOADED_FILE" .tgz)

sudo apt-get update
sudo apt-get install build-essential gdb lcov pkg-config \
      libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev \
      libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev \
      lzma lzma-dev tk-dev uuid-dev zlib1g-dev


# Download, extract Python
mkdir -p ~/tmp && cd ~/tmp
wget $DOWNLOAD_URL -O $DOWNLOADED_FILE
tar -xzf "$DOWNLOADED_FILE"

# Install Python
cd "$EXTRACTED_FOLDER"
# ./configure --help for usage
./configure
make
sudo make altinstall

print "Python $VERSION installed, run `use-python 3.X` to use it"