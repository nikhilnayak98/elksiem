#!/bin/sh

rm -rf beats/filebeat/zeek_logs/*
rm -rf finished_pcaps/*

echo "[*] removed logs and finished pcaps"

if [ "$1" = "-v" ]
then
    docker-compose down -v
    echo "[*] stopped containers and removed volumes"
else
    docker-compose down
    echo "[*] stopped containers"
fi