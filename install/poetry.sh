#!/bin/bash


if [[ -x "$(command -v poetry)" ]]; then
				poetry self update
else
        curl -sSL https://install.python-poetry.org | python3 -

fi
