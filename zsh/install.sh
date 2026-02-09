#!/usr/bin/env bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))

ln -vsf "${SCRIPT_DIR}/zprofile" "${HOME}/.zprofile"
ln -vsf "${SCRIPT_DIR}/zshrc" "${HOME}/.zshrc"
