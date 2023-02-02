# Devbox Cloud Quickstart

This shell includes a basic `devbox.json` with a few useful packages installed, and an example init_hook and script

## Adding New Packages

Run `devbox add <package>` to add a new package. Remove it with `devbox rm <package>`.

For example: install Python 3.10 by running:

```bash
devbox add python310
```

Devbox can install over 80,000 packages via the Nix Package Manager. Search for packages at [https://search.nixos.org/packages](https://search.nixos.org/packages)

## Running Devbox Scripts

You can add new scripts by editing the `devbox.json` file

You can run scripts using `devbox run <script>`

For example: you can replay this help text with 

```bash
devbox run readme
```

## Further Reading

* Checkout our Docs at [https://jetpack.io/devbox/docs](https://jetpack.io/devbox/docs)
* Report Issues at [https://github.com/jetpack-io/devbox/issues/new/choose](https://github.com/jetpack-io/devbox/issues/new/choose)