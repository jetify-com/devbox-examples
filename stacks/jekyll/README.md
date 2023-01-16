# Jekyll Example

Inspired by https://litchipi.github.io/nix/2023/01/12/build-jekyll-blog-with-nix.html 

## How to Use

1. Install [Devbox](https://www.jetpack.io/devbox/docs/installing_devbox/)
2. Run `devbox shell` to install your packages and run the init hook
3. In the root directory, run `devbox run generate` to install and package the project with bundler
4. In the root directory, run `devbox run server` to start the server. You can access the Jekyll example at `localhost:4000`