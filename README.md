# Dotfiles

## Overview
This repository is to keep a central location for all of my dotfiles. I use these mainly for personal projects as work is kept separate. 
Feel free to install this as a starting point. It is by new means fantastic but it is a work in progress.
**NOTE:** The repository is only editable by me. It can only be cloned but not pushed to.

## Installation

1. On a new machine, create an ssh key, add it to your agent, and then add the public key to github.
```sh
ssh-keygen -t ed25519 -f <file> -C "<email>"
```
2. Clone the repository with the following command:
```sh
git clone https://github.com/antonim24/dotfiles.git ~/.dotfiles
```
3. Run the setup script to install the files
```sh
~/.dotfiles/setup
```

## Reference Documentation
* [Generate Key and Add to Agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
