# pokertool-chart

Helm chart for deploying a pokertool.

## Install

```shell
helm repo add pokertool-repo https://alliander-opensource.github.io/pokertool-chart
helm install my-pokertool pokertool-repo/pokertool --set ingress.domain=mypokertool.com
```

## Relevant repositories

- [Frontend](https://github.com/alliander-opensource/pokertool-frontend)
- [Backend](https://github.com/alliander-opensource/pokertool-backend)
