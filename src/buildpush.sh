#!/bin/bash
set -x

docker login
docker build -t drupalpod/gitpod-with-ddev:latest .
docker push dupalpod/gitpod-with-ddev:latest