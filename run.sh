#!/bin/bash

docker run -i -t \
-v /storage/fog/database:/var/lib/mysql \
-v /storage/fog/images:/images \
--net host \
-e LC_ALL=C.UTF-8 \
--name fog_test \
fog:latest
