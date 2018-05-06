#!/bin/bash

docker-compose up -d postgres
sleep 3
docker-compose up
curl -sL https://github.com/arminc/clair-scanner/releases/download/v8/clair-scanner_linux_amd64 -o clair-scanner
chmod +x clair-scanner
clair-scanner --clair="http://127.0.0.1:6060" --ip $(hostname -i) redirector

