#!/bin/bash

# Directory of this script
CONFIG_ROOT=$(cd `dirname $0` && pwd)

echo $CONFIG_ROOT

# Store location of config root
echo "CONFIG_ROOT='${CONFIG_ROOT}'" > ${HOME}/.config_root

# Link
ln -sfh ${CONFIG_ROOT}/psql/.psqlrc ${HOME}/.psqlrc
ln -sfh ${CONFIG_ROOT}/zsh/.zshrc ${HOME}/.zshrc
ln -sfh ${CONFIG_ROOT}/git/.gitconfig ${HOME}/.gitconfig
[[ ! -f ${CONFIG_ROOT}/secret/.local-db-hmmm ]] || ln -sfh ${CONFIG_ROOT}/secret/.local-db-hmmm ${HOME}/.local-db-hmmm
[[ ! -f ${CONFIG_ROOT}/secret/~/.hmm ]] || ln -sfh ${CONFIG_ROOT}/secret/~/.hmm ${HOME}/~/.hmm