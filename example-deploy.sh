#!/bin/bash

echo -e "\e[34m flink-in-k8s-kind Installation \e[39m"
git clone https://github.com/Wall404/k8s-local-deployment.git
sh k8s-local-deployment/deploy.sh

# echo -e "\e[34m Kubernetes Dashboard test \e[39m"
# kubectl apply -f https://raw.githubusercontent.com/jmdacruz/flink-in-k8s-kind/master/kubernetes-dashboard.yml