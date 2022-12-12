# Temporal

Example devbox for testing temporal workflows using Temporalite and the Python temporal SDK.

## Starting Temporal

```bash
devbox run start-temporal
```
This will start the temporalite server for testing. You can view the WebUI at `localhost:8233`

## Starting a Devbox Shell

```bash
devbox shell
```

This will activate a virtual environment and install the Temporal Python SDK. The python `grpc` implementation is pre-installed via Nix, to speed up installations and improve cacheability.

## Testing the Temporal Workflows

From inside your `devbox shell`

```bash
cd temporal_example/hello
python run hello_activity.py
```

This should start the workflow using temporalite.