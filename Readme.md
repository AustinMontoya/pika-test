# pika-test

This repo is primarily for regression-testing a change to `@pika/pack` affecting yarn2 support.

## Usage

1. Clone the builders fork
2. Modify the `file:/` references to `@pika/plugin-build-types` to point to your fork
3. Run `bin/test.sh` to test each use case (yarn 1, yarn 2 w/ pnp support, npm)

If the script succeeds, congrats! The plugin-build-types works in all environments.