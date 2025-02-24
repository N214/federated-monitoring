# Helm Chart

```sh
helm repo add grafana https://grafana.github.io/helm-charts
helm upgrade --install mimir grafana/mimir-distributed --version 3.3.0 --values=values.yaml
```
