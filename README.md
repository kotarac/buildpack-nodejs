# buildpack-nodejs

Simple buildpack for node.js.

Reads `engines` from `package.json` and installs appropriate versions of node and npm.

Run script is a simple wrapper for executing node/npm installed by the buildpack.

## Install

```sh
make install
```

## Uninstall

```sh
make uninstall
```

## Usage
While inside a node.js project directory:
```sh
buildpack-nodejs-build
buildpack-nodejs-run npm i
buildpack-nodejs-run -e .env npm run test
```

## License

MIT © Stipe Kotarac (https://github.com/kotarac)
