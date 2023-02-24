# Maelstrom

[![Open In Devbox.sh](https://jetpack.io/img/devbox/open-in-devbox.svg)](https://devbox.sh/github.com/jetpack-io/devbox-examples?folder=cloud_development/maelstrom)

A Devbox for running [Maelstrom](https://github.com/jepsen-io/maelstrom) Tests. Maelstrom is a testing library for toy distributed systems built by @aphyr, useful for learning the basics and principals of building distributed systems

You should also check out the [Fly.io Distributed Systems Challenge](https://fly.io/dist-sys/)

## Usage

1. Install [Devbox](https://www.jetpack.io/devbox/docs/installing_devbox/):

    ```bash
    curl -s https://www.jetpack.io/install.sh | bash
    ```

2. Install Maelstrom by running `devbox run install`. This should install Maelstrom 0.2.2 in a `maelstrom` subdirectory
3. cd into the `maelstrom` directory and run `./maelstrom` to verify everything is working
4. You can now follow the docs and run the tests in the Maelstrom Docs + Readme.

This shell includes Ruby 3.10 for running the Ruby Demos. To run demos in other languages, install the appropriate runtimes using `devbox add`. For example, to run the Python demos, use `devbox add python3.10`.