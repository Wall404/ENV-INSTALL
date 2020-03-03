#!/bin/bash

echo -e "\e[34m flink-in-k8s-kind Installation \e[39m"
git clone https://github.com/jmdacruz/flink-in-k8s-kind.git
sh flink-in-k8s-kind/deploy.sh