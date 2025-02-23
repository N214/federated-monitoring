# Helm Chart

```sh
helm repo add grafana https://grafana.github.io/helm-charts
helm upgrade --install promtail --namespace promtail --create-namespace grafana/promtail --version 6.16.6 --values=values.yaml
```
