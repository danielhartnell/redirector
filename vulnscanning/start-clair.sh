#!/bin/bash

docker-compose up -d
curl -sL https://github.com/arminc/clair-scanner/releases/download/v8/clair-scanner_linux_amd64 -o clair-scanner
chmod +x clair-scanner
sleep 10
./clair-scanner --clair="http://${CLAIR}" --ip $(hostname -i) redirector

