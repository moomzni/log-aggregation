#!/bin/bash

cd ..

MODE=$1

if [ $MODE == 'install' ]; then
  wget -nc https://download.elasticsearch.org/logstash/logstash/logstash-1.1.13-flatjar.jar
  chown root:root *.jar && chmod 770 logstash*.jar
  touch /var/log/caoimhin.log
elif [ $MODE == 'shipper' ]; then
  java -jar logstash-1.1.13-flatjar.jar agent -f config/shipper.conf
elif [ $MODE == 'indexer' ]; then
  java -jar logstash-1.1.13-flatjar.jar agent -f config/indexer.conf
else
  echo 'Caoimhin - Stop trying to do stuff you cant'
  exit 1
fi
