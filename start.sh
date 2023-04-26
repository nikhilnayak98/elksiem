#!/bin/sh
# filebeat requires only owner to have write perms on config file
chmod go-w beats/filebeat/filebeat.yml

# build
docker-compose build

# run
docker-compose up -d
