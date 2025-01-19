#!/bin/bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))
#echo "Current working dir: ${SCRIPT_DIR}"

echo ">> Installing clangd files."

# Install the clangd user configuration file.
ln -vsf "${SCRIPT_DIR}/config.yaml" "${XDG_CONFIG_HOME}/clangd/config.yaml"
