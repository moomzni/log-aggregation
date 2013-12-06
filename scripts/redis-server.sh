#!/bin/bash

apt-get install -y redis-server
cp ../config/redis.conf /etc/redis
chown root:root /etc/redis/redis.conf && chmod 644 /etc/redis/redis.conf
service redis-server restart
