#!/bin/bash

# install docker
curl -fsSL https://get.docker.com | sudo sh -

# install kubectl
curl -sSL -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl 
chmod +x /usr/local/bin/kubectl 

# install helm
curl -s https://raw.githubusercontent.com/helm/helm/master/scripts/get | sudo bash -

# install doctl
curl -sL https://github.com/digitalocean/doctl/releases/download/v1.38.0/doctl-1.38.0-linux-amd64.tar.gz | tar -xzv
mv doctl /usr/local/bin/doctl
chmod +x /usr/local/bin/doctl
