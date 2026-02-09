#!/bin/bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))

ln -vsf "${SCRIPT_DIR}/vimrc" "${HOME}/.vimrc"
