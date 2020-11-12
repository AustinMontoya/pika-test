set -x

cd plugin-build-types/npm
npm install && npm run build

cd ../yarn-1
yarn --frozen-lockfile && yarn build

cd ../yarn-2-pnp
yarn rebuild && yarn build