#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  helm template \
    cert-manager \
    cert-manager \
    --repo https://charts.jetstack.io \
    --version "1.17.1" \
    --namespace cert-manager \
    --values src/values.yml

  cat src/k8s/*.yml
} > rendered.yml
