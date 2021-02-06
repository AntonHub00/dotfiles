#!/usr/bin/env bash

set -o nounset # Error when referencing undefined variable.
set -o errexit # Exit when command fails.

# Create extensions configuration directory and file if doesn't exist.
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi

# List all the required extensions (NodeJS and npm must be install and in
# PATH).
npm install coc-css coc-emmet coc-html coc-json coc-marketplace coc-python \
    coc-sh coc-snippets coc-sql coc-texlab coc-vimlsp coc-yaml coc-tsserver \
    --global-style --ignore-scripts --no-bin-links --no-package-lock \
    --only=prod
