#!/bin/bash

docker run -i -t \
-v /storage/fog/database:/var/lib/mysql \
-v /storage/fog/images:/images \
-p 80:80 \
-p 21:21 \
-p 2049:2049 \
-p 8083:8083 \
-p 44383:44383 \
-p 69:69/udp \
-e LC_ALL=C.UTF-8 \
--name fog_test \
fog:latest
