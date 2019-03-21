#!/bin/bash

mkdir -p /storage/fog/database
mkdir -p /storage/fog/images

rm -rf /storage/fog/database/*
rm -rf /storage/fog/images/*
chmod 777 /storage/fog/database
chmod 777 /storage/fog/images
chown root.root /storage/fog/database
chown root.root /storage/fog/images
