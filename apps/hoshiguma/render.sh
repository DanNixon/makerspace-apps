#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  cat src/k8s/*.yml
  # cat src/k8s/dashboards/*.yml
} > rendered.yml
