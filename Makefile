################################################################################
#
# Purpose: Makefile to use to "install" dotfiles in their correct locations
#
# Usage: make <target>
#
################################################################################

LN = ln -vsf

.PHONY: all clean bash bash_clean symlinks

# Target to install bash related dotfiles
bash:
	$(LN) $(PWD)/bash/profile $(HOME)/.profile
	$(LN) $(PWD)/bash/bashrc $(HOME)/.bashrc
	$(LN) $(PWD)/bash/bash_aliases $(HOME)/.bash_aliases

# Target to remove bash related dotfiles
bash_clean:
	$(RM) $(HOME)/.profile
	$(RM) $(HOME)/.bashrc
	$(RM) $(HOME)/.bash_aliases

# This target will create all symlinks between home dir and dotfiles dir
symlinks:
	$(LN) $(PWD)/vimrc $(HOME)/.vimrc    
	$(LN) $(PWD)/tmux.conf $(HOME)/.tmux.conf    

all: bash symlinks

clean: bash_clean
