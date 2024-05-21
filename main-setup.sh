#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

# install Docker
sudo apt install docker.io -y

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install AWS CLI V2
cd /
sudo apt install unzip -y
sudo curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install

# create 'docker' group to ubuntu user 
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# install git
sudo apt install git -y

# install vscode
sudo snap install --classic code

# install nodejs
sudo apt install nodejs -y
sudo apt install npm -y

# install python3
sudo apt install python3 -y

# install pip3
sudo apt install python3-pip -y

# install awscli
sudo apt install awscli -y

# install terraform (for configuring AWS infrastructure)
sudo apt install unzip -y
sudo curl "https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip" -o "terraform.zip"
sudo unzip terraform.zip
sudo mv terraform /usr/local/bin/
