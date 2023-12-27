################################################################################
#
# Purpose: Makefile to use to "install" dotfiles in their correct locations
#
# Usage: make <target>
#
################################################################################

LN = ln -vsf

.PHONY: all init

# Target to install bash related dotfiles
bash:
	$(LN) $(PWD)/bash_aliases $(HOME)/.bash_aliases

# This target will create all symlinks between home dir and dotfiles dir
symlinks:
	$(LN) $(PWD)/vimrc $(HOME)/.vimrc    
	$(LN) $(PWD)/tmux.conf $(HOME)/.tmux.conf    

all: bash symlinks
