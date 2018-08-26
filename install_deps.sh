#!/bin/bash


echo $GCP_NET_PULL | base64 --decode > ${HOME}/gcp-net-pull-key.json

curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-213.0.0-darwin-x86_64.tar.gz -o ${HOME}/gcloud.tar.gz
cd ${HOME}
tar zxvf gcloud.tar.gz
${HOME}/google-cloud-sdk/bin/gcloud auth activate-service-account --key-file ${HOME}/gcp-net-pull-key.json

brew install wget --with-libressl
wget https://www.python.org/ftp/python/3.6.5/python-3.6.5-macosx10.9.pkg
sudo installer -pkg ${HOME}/python-3.6.5-macosx10.9.pkg -target /

sudo pip3 install numpy
