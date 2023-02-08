#!/bin/bash
# Makes sure that code-web.js is ready to run directly by deta
yarn
yarn download-builtin-extensions
# bash scripts/code-web.sh --help
# jq 'del(.["dependencies","devDependencies"]) | del(.scripts.postinstall) | .scripts.preinstall |= "node installError.js"' package.json > packageNew.json
# mv packageNew.json package.json
# cat package.json # debug