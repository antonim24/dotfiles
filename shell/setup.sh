#!/usr/bin/env bash

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))
echo "Current working dir: ${SCRIPT_DIR}"

echo ">> Installing profile"
ln -vsf "${SCRIPT_DIR}/profile" "${HOME}/.profile"
