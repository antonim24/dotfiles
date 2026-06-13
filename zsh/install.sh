#!/usr/bin/env bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))
readonly ROOT_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"

readonly ZSH_CONFIG_DIR="${ROOT_CONFIG_DIR}/zsh"
if [[ ! -d ${ZSH_CONFIG_DIR} ]]; then
   mkdir -p "${ZSH_CONFIG_DIR}"
fi
ln -vsf "${SCRIPT_DIR}/zshenv" "${HOME}/.zshenv"
ln -vsf "${SCRIPT_DIR}/zprofile" "${ZSH_CONFIG_DIR}/.zprofile"
ln -vsf "${SCRIPT_DIR}/zshrc" "${ZSH_CONFIG_DIR}/.zshrc"
