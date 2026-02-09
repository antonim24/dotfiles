#!/usr/bin/env bash

# This script will install the different configurations to their correct location
#
set -eou pipefail

readonly SCRIPT_DIR=$(dirname $(realpath "$0"))

if [[ -f "${SCRIPT_DIR}/shell/profile" ]]; then
    source "${SCRIPT_DIR}/shell/profile"
else
    echo "ERROR: Can't read profile for environment configuration." >&2
    exit 1
fi

# Verify that the XDG config location exists
if [[ ! -d "$XDG_CONFIG_HOME" ]]; then
    echo "\Creating XDG_CONFIG_HOME directory"
    mkdir "${HOME}/.config"
fi

mapfile -t setup_files < <(find . -mindepth 2 -type f -name "install.sh")

echo "Installing dotfiles"
for install_prog in ${setup_files[@]}; do
    "${install_prog}"
done
