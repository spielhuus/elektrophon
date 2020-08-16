#!/bin/bash

~/.local/bin/py.test --nbval-lax README.ipynb
jupyter nbconvert README.ipynb --execute --to markdown --debug --no-input
