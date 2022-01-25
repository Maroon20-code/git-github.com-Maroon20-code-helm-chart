# Public helm chart using github action

## to generate the package use this command

*  helm package charts/nginx-app-chart/ -d  charts/nginx-app-chart/.
## to generate the index file for the specific chart

*  helm repo index charts/nginx-app-chart/.
## to install the chart just follow this command

* helm repo add chart-repo https://maroon20-code.github.io/helm-chart/charts/nginx-app-chart
*  helm install chart-repo nginx-app