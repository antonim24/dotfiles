#!/bin/bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))
#echo "Current working dir: ${SCRIPT_DIR}"

if [[ -z ${XDG_CONFIG_HOME} ]]; then
    printf "[ERROR] XDG_CONFIG_HOME environment variable is not set.\n"
    exit 1
fi

if [[ ! -d ${XDG_CONFIG_HOME}/tmux ]]; then
    mkdir -p "${XDG_CONFIG_HOME}/tmux"
fi

echo ">> Installing tmux.conf"
ln -vsf "${SCRIPT_DIR}/tmux.conf" "${XDG_CONFIG_HOME}/tmux/tmux.conf"
