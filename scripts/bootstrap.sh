#!/bin/bash

apt-get update && apt-get install -y zip unzip openjdk-7-jre curl wget ruby1.9.1 ruby1.9.1-dev libruby1.9.1 git build-essential

echo "gem: --no-ri --no-rdoc" > /etc/gemrc
