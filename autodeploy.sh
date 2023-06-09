#!/bin/bash
apt-get update
apt-get install docker.io -y
systemctl start docker 
systemctl enable docker
docker pull tooba29/static-website:latest
docker run --name web-container -d -p 80:80 thanwar/test