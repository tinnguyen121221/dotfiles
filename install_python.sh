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
SOURCEPACKAGE="deb-src http://archive.ubuntu.com/ubuntu/ bionic main"
DOWNLOAD_URL="https://www.python.org/ftp/python/$VERSION/Python-$VERSION.tgz"
DOWNLOADED_FILE=$(basename "$DOWNLOAD_URL")
EXTRACTED_FOLDER=$(basename "$DOWNLOADED_FILE" .tgz)

if ! grep -q "$SOURCEPACKAGE" "$FILE"; then
  echo "deb-src http://archive.ubuntu.com/ubuntu/ bionic main" | sudo tee -a /etc/apt/sources.list 
fi

sudo apt-get update
sudo apt-get -y build-dep python3.6


# Download, extract Python
mkdir -p ~/tmp && cd ~/tmp
wget $DOWNLOAD_URL
tar -xzf "$DOWNLOADED_FILE"

# Install Python
cd "$EXTRACTED_FOLDER"
# ./configure --help for usage
./configure
make
sudo make altinstall

# which python3.#
# update-alternative --install /usr/bin/python python $(which python3.#) <priority>
