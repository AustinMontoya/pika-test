# pika-test

This repo is primarily for regression-testing a change to `@pika/pack` affecting yarn2 support.

## Usage

1. Clone this repo
2. Run `bin/test.sh`, confirm the `yarn-2-pnp` case breaks
3. Clone the [builders fork](https://github.com/grrizzly/builders/tree/master) and run `git checkout build-types-pnp`
4. Modify the `"@pika/plugin-build-types": "0.9.2",` in each package.json to `file:/local/path/to/fork/packages/plugin-build-types/pkg` to point to the locally forked package dist folder (`npm link` and yarn 2 pnp is problematic)
5. Run `bin/test.sh` to test each use case (yarn 1, yarn 2 w/ pnp support, npm)

If the script succeeds, congrats! The plugin-build-types works in all environments.