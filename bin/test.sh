#!/bin/bash

clear
set -e

echo "Testing npm..."
cd plugin-build-types/npm
npm install
npm run build

echo "


Testing yarn classic"
cd ../yarn-1
yarn
yarn build

echo "


Testing yarn 2 w/ PnP"
cd ../yarn-2-pnp
yarn
yarn build