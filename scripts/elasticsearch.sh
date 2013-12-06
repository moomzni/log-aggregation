#!/bin/bash

cd ..
wget -nc https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.20.6.deb
dpkg -i elasticsearch-0.20.6.deb
