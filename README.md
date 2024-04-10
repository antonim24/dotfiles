# Overview
This repository is to keep a central location for all of my dotfiles. I use these mainly for personal projects as work is kept separate. 
Feel free to install this as a starting point. It is by new means fantastic but it is a work in progress.
**NOTE:** The repository is only editable by me. It can only be cloned but not pushed to.

# Installation
Clone the repository with the following command:
```bash
git clone https://github.com/theanto24/dotfiles.git ~/.dotfiles
```
After the repository has been cloned, run the following command in the terminal to install the requried packages:
```bash
~/.dotfiles/bin/install_dotfiles.sh
```
And then finally run the `setup` script in the dotfiles directory where you cloned to and watch it all symlink in the right places.

# Current Implemented Items
* Bash
  * .profile
  * .bash_profile
  * .bashrc
  * .bash_aliases
* tmux
  * .tmux.conf
* vim
  * .vimrc
* VsCode
  * User settings.json
  * User keybindings.json

