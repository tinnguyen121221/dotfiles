#!/bin/bash

command_exists() {
  command -v "$@" >/dev/null 2>&1
}


if command_exists nvm || ! command_exists node; then
				\. ~/.nvm/nvm.sh
				nvm install node
fi


if command_exists npm; then
				npm install --location=global prettier pyright eslint
fi
