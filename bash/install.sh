#!/bin/bash

# NOTE: Bash aliases do not get installed since bashrc will look for them in the dotfiles repo

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))

ln -vsf "${SCRIPT_DIR}/bash_profile" "${HOME}/.bash_profile"
ln -vsf "${SCRIPT_DIR}/bashrc" "${HOME}/.bashrc"
