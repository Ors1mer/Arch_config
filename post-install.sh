#!/usr/bin/bash
# This script installs packages

# The file should be prior created this way:
# pacman -Qe | awk '{print $1}' > packages.dat
pacman -S $(awk '{print $1}' packages.dat) --noconfirm 
pacman -Sc

# Install wal
pacman -S python-pywal --noconfirm

# Install modules using pip
pip install pipenv black cookiecutter

