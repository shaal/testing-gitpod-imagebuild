#!/bin/bash
set -x

docker login
docker build -t drupalpod/gitpod-with-ddev:download .
docker push dupalpod/gitpod-with-ddev:download