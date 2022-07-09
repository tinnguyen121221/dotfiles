#!/bin/bash


if [[ -x "$(command -v poetry)" ]]; then
				poetry self update
else
        curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -

fi
