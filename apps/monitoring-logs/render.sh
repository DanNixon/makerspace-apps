#!/bin/sh

{
  echo "#"
  echo "# This is a generated file!"
  echo "#"
  echo

  echo "---"
  helm template \
    loki \
    loki \
    --repo https://grafana.github.io/helm-charts \
    --version "6.29.0" \
    --namespace monitoring-logs \
    --values src/values/loki.yml \
  | vals ksdecode -f -

  echo "---"
  helm template \
    promtail \
    promtail \
    --repo https://grafana.github.io/helm-charts \
    --version "6.16.6" \
    --namespace monitoring-logs \
    --values src/values/promtail.yml \
  | vals ksdecode -f -

  cat src/k8s/*.yml
} > rendered.yml
