#!/bin/bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))
#echo "Current working dir: ${SCRIPT_DIR}"

echo ">> Installing git cofig"
ln -vsf "${SCRIPT_DIR}/config" "${XDG_CONFIG_HOME}/git/config"
