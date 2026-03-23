# installer-kernel-builder-image

Builds the container image used to compile the TruthDB installer kernel in CI.

## Overview

The kernel build can be resource-intensive and requires a set of build dependencies. This repo publishes a multi-arch image to GHCR that includes those dependencies on Ubuntu 24.04.

The `installer-kernel` release workflow uses this image to build the kernel in a consistent environment.

## Contents

See `docker/Dockerfile` for the exact dependency list (toolchain, ncurses, ssl, elf tooling, etc.).

## Local Development

To build the local builder image:

`./build_local.sh`

By default this creates the Docker image:

`truthdb-installer-kernel-builder:local`

Useful environment variables:

- `IMAGE_NAME`: local image tag to build
- `PLATFORM`: Docker target platform (defaults to `linux/amd64`)

## License

MIT. See LICENSE.
