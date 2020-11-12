# pika-test

This repo is primarily for regression-testing a change to `@pika/pack` affecting yarn2 support.

## Usage

1. Clone the builders fork
2. Run `bin/test.sh`, confirm the `yarn-2-pnp` case breaks
3. Modify the `"@pika/plugin-build-types": "0.9.2",` in each package.json to `file:/local/path/to/fork` to point to your fork (`npm link` and yarn 2 pnp is problematic)
4. Run `bin/test.sh` to test each use case (yarn 1, yarn 2 w/ pnp support, npm)

If the script succeeds, congrats! The plugin-build-types works in all environments.