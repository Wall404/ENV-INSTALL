#!/bin/bash

echo -e "\e[34m Enviroment Installation \e[39m"

echo -e "\e[34m Install Docker \e[39m"
apt install docker.io -y
systemctl enable docker -y

echo -e "\e[34m Install GO \e[39m"
wget https://dl.google.com/go/go1.14.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.14.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

echo -e "\e[34m Install Kind \e[39m"
curl -Lo ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.7.0/kind-$(uname)-amd64
chmod +x ./kind
mv ./kind /some-dir-in-your-PATH/kind

echo -e "\e[34m Install Kubernetes \e[39m"
apt install curl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main" -y
apt install kubeadm

echo -e "\e[34m Check kubeadm version \e[39m"
kubeadm version

echo -e "\e[34m Disable swap memory \e[39m"
swapoff -a

echo -e "\e[34m Run deploy example \e[39m"
sh example-deploy.sh