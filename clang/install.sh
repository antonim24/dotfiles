#!/bin/bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))

if [[ -z ${XDG_CONFIG_HOME} ]]; then
    printf "[ERROR] XDG_CONFIG_HOME environment variable is not set.\n"
    exit 1
fi

readonly CLANG_CONFIG_DIR="${XDG_CONFIG_HOME}/clangd"
if [[ ! -d ${CLANG_CONFIG_DIR} ]]; then
    mkdir -p "${CLANG_CONFIG_DIR}"
fi


# Install the clangd user configuration file.
ln -vsf "${SCRIPT_DIR}/config.yaml" "${CLANG_CONFIG_DIR}/config.yaml"
