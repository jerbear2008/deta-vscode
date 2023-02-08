#!/bin/bash
# Download node binaries for usage on Deta
wget https://nodejs.org/dist/v19.6.0/node-v19.6.0-linux-x64.tar.xz -O node.tar.xz
mkdir node
tar -xf node.tar.xz -C node