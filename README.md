# buildpack-nodejs

Wrapper around [heroku's node.js buildpack](https://github.com/heroku/heroku-buildpack-nodejs) for simple deployments.

The compile script downloads the latest buildpack and executes the compile command.

Run script is a simple wrapper for executing node/npm/yarn installed by the buildpack.

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
buildpack-nodejs-compile
buildpack-nodejs-run npm run test
buildpack-nodejs-run yarn run build
```

## License

MIT © Stipe Kotarac (https://github.com/kotarac)
