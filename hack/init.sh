#!/bin/bash

VERSION=0.3.0

helm -n fleet-system install --create-namespace --wait \
    fleet-crd https://github.com/rancher/fleet/releases/download/v${VERSION}/fleet-crd-${VERSION}.tgz

helm -n fleet-system install --create-namespace --wait \
    fleet https://github.com/rancher/fleet/releases/download/v${VERSION}/fleet-${VERSION}.tgz
