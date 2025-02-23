# Instruction

This repo contains a demo setup for federated monitoring using the LGTM stack with two local clusters `cluster1` and `cluster2`. The architecture should be the following:

```mermaid
flowchart TD
    C{fas:fa-desktop cluster1<br/>Main cluster}
    C <-->|logs/metics| D[fas:fa-desktop cluster2]
    C <-->|logs/metics| E[fas:fa-desktop cluster3]
    C <-->|logs/metics| F[fas:fa-desktop cluster4]
  
```

Prerequisite:
  - docker
  - helm
  - kubectl
  - kind
  - kubectx
  - kubens

## Deploy two kind cluster
https://submariner.io/getting-started/quickstart/kind/#deploy-kind-with-submariner-locally
