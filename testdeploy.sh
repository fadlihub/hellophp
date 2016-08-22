#!/bin/bash

docker login -u fadlihub+otomatis -p VPQ23A35RY5LRFZS63IQ7E0PUTVF4C1SRI7DK5QOCXBP5D0WC3UV8KGS22J1IG5W quay.io;
docker pull quay.io/fadlihub/hellophp:dev;
docker run -d -p 8080:80 --name test-hellophp quay.io/fadlihub/hellophp:dev;
