#!/bin/bash

PHP_VERSION=8.1
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get install "php${PHP_VERSION}-cli" -y
