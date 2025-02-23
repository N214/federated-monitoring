# Helm Chart

```sh
helm repo add grafana https://grafana.github.io/helm-charts
helm upgrade --install loki grafana/loki --namespace loki --create-namespace --version 6.27.0 --values=values.yaml
```
