#!/usr/bin/env bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))
echo "Current working dir: ${SCRIPT_DIR}"

if [[ -z ${XDG_CONFIG_HOME} ]]; then
    printf "[ERROR] XDG_CONFIG_HOME environment variable is not set.\n"
    exit 1
fi

echo ">> Installing git config"
if [[ ! -d ${XDG_CONFIG_HOME}/git ]]; then
   mkdir -p "${XDG_CONFIG_HOME}/git"
fi
ln -vsf "${SCRIPT_DIR}/config" "${XDG_CONFIG_HOME}/git/config"
