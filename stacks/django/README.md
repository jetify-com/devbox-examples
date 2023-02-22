# Django Example

[![Built with Devbox](https://jetpack.io/devbox/img/shield_moon.svg)](https://jetpack.io/devbox/docs/contributor-quickstart/)

[![Open In Devbox.sh](https://jetpack.io/img/devbox/open-in-devbox.svg)](https://devbox.sh/github.com/jetpack-io/devbox-examples?folder=stacks/django)

## How to Use

1. Install [Devbox](https://www.jetpack.io/devbox/docs/installing_devbox/)
2. Run `devbox shell` to install your packages and run the init_hook. This will activate your virtual environment and install Django.
3. Initialize PostgreSQL with `devbox run initdb`.
4. In the root directory, run `devbox run create_db` to create the database and run your Django migrations
5. In the root directory, run `devbox run runserver` to start the server. You can access the Django example at `localhost:8000`

## How to Create this Example from Scratch

1. Install [Devbox](https://www.jetpack.io/devbox/docs/installing_devbox/)
