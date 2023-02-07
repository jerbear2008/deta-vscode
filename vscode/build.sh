#!/bin/bash
# Makes sure that code-web.js is ready to run directly by deta
yarn
yarn download-builtin-extensions
# bash scripts/code-web.sh --help
echo "{}" > package.json