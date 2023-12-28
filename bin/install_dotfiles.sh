#!/bin/bash

# This script is used the first time the dotfiles are being installed
# on a system. It will check that the bash and make packages are
# installed before cloning the full repo and running 'make all'.

set -e

# Get any new packages and install updates
echo -e "Checking and installing apt updates..."
#sudo apt-get update >/dev/null 2>&1
#sudo apt-get upgrade >/dev/null 2>&1
echo -e "Finished checking and installing apt updates."

# Check if make is intalled
if ! dpkg -s make >/dev/null 2>&1; then
    echo -e "Installing Make..."
    sudo apt-get install -y make >/dev/null 2>&1
    echo -e "Finished installing Make!"
fi

# Check if tmux is installed
if ! dpkg -s tmux >/dev/null 2>&1; then
    echo -e "Installing tmux..."
    sudo apt-get install -y tmux >/dev/null 2>&1
    echo -e "Finished installing tmux!"
fi

# Check if python3 and pip is installed
if ! dpkg -s python3 >/dev/null 2>&1; then
    echo -e "Installing python..."
    sudo apt-get install -y python3 2>&1 >/dev/null
    echo -e "Finished installing python!"
fi
if ! dpkg -s python3-pip >/dev/null 2>&1; then
    echo -e "Installing python3 pip..."
    sudo apt-get install -y python3-pip 2>&1 >/dev/null
    echo -e "Finished installing python3 pip!"
fi

# End of script
echo -e "All packages have been succesffully installed!"
