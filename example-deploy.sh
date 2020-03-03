#!/bin/bash

echo -e "\e[34m flink-in-k8s-kind Installation \e[39m"
git clone https://github.com/jmdacruz/flink-in-k8s-kind.git
cd flink-in-k8s-kind
sh deploy.sh