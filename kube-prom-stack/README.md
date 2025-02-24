# Helm Chart

## Cluster1
```sh
helm repo add grafana https://grafana.github.io/helm-charts
helm install kube-prometheus-stack . --namespace kube-prometheus-stack --create-namespace --values=values-cluster1.yaml --dependency-update

OR
helm dependency build
helm upgrade --install kube-prometheus-stack . --namespace kube-prometheus-stack --create-namespace  --values=values-cluster1.yaml
```

## Cluster2
```sh
helm upgrade --install kube-prometheus-stack . --namespace kube-prometheus-stack --create-namespace  --values=values-cluster2.yaml
```
