log-aggregation
=================

Very very basic example of how logstash, redis, elasticsearch and kibana can be knitted together...

* /config  - Config files for logstash, kibana and redis
* /scripts - Scripts used to download/install logstash, redis etc

Requirements
=================
* Vagrant
* Virtualbox
* Internet Connection

Instructions
=================
1. vagrant up
2. vagrant ssh
3. sudo -s
4. cd /vagrant/scripts
5. ./logstash.sh install
6. ./redis.sh
7. ./logstash.sh shipper
8. ./elasticsearch.sh
9. ./logstash.sh indexer
10. ./kibana
11. browse to http://localhost:8080
