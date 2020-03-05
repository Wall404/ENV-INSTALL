#!/bin/bash

echo -e "\e[34m Enviroment Installation \e[39m"

apt-get update
apt-get upgrade -y

echo -e "\e[34m Install Docker \e[39m"
apt install docker.io -y
systemctl enable docker
groupadd docker
usermod -aG docker ${USER}
su -s ${USER}

echo -e "\e[34m Install Kind \e[39m"
git clone https://github.com/kubernetes-sigs/kind.git
apt install make -y
make -C ./kind build
export PATH=$PATH:./kind/bin/


echo -e "\e[34m Install Kubernetes \e[39m"
apt install curl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main" 
apt install kubeadm -y

echo -e "\e[34m Check kubeadm version \e[39m"
kubeadm version

echo -e "\e[34m Disable swap memory \e[39m"
swapoff -a

echo -e "\e[34m Run deploy example \e[39m"
sh example-deploy.sh


# En caso de error con VirtualBox
# correr este comando en PowerShell
#  bcdedit /set hypervisorlaunchtype off