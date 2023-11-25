#!/bin/sh

curl -L https://github.com/tkuchiki/alp/releases/download/v1.0.21/alp_linux_amd64.tar.gz > alp.tar.gz
tar zxvf alp.tar.gz
sudo cp alp /usr/local/bin/alp

rm alp alp.tar.gz
