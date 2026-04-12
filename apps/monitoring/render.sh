#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  helm template \
    k8s-monitoring \
    k8s-monitoring \
    --repo https://grafana.github.io/helm-charts \
    --version "4.0.1" \
    --namespace monitoring \
    --values src/values.yml \
    --no-hooks \
  | vals ksdecode -f -

  cat src/k8s/*.yml
} > rendered.yml
