#!/bin/bash

# install docker
apt-get update
apt-get install -y git \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io

# install kubectl
curl -sSL -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl 
chmod +x /usr/local/bin/kubectl 

# install helm
curl -s https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash -

# install doctl
curl -sL https://github.com/digitalocean/doctl/releases/download/v1.38.0/doctl-1.38.0-linux-amd64.tar.gz | tar -xzv
mv doctl /usr/local/bin/doctl
chmod +x /usr/local/bin/doctl
