#!/usr/bin/env bash
set -x

ddev version | awk '/(drud|phpmyadmin)/ {print $2;}' >/tmp/images.txt
while IFS= read -r item
do
  docker pull "$item"
done < <(cat /tmp/images.txt)