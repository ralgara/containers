# Kubernetes client

Lightweight Alpine-based container with configurable versions of `kubectl` and `helm`

## Usage

Build an image with the desired client versions by specifying `K8S_VERSION` and `HELM_VERSION` as build arguments.

For example:

```
docker build . --build-arg K8S_VERSION=1.14.3 --build-arg HELM_VERSION=2.12.3
```
