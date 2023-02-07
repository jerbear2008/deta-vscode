#!/bin/bash
# Makes sure that code-web.js is ready to run directly by deta
yarn
yarn download-builtin-extensions
# bash scripts/code-web.sh --help
# jq 'del(.["dependencies","devDependencies"]) | del(.scripts.postinstall) | .scripts.preinstall |= "node installError.js"' package.json > packageNew.json
# mv packageNew.json package.json
# cat package.json # debug
wget https://nodejs.org/dist/v19.6.0/node-v19.6.0-linux-x64.tar.xz -O node.tar.xz
tar -xf node.tar.xz -C node