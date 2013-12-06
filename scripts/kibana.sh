#!/bin/bash
cd ..
git clone --branch=kibana-ruby https://github.com/rashidkpc/Kibana.git
cp -f config/KibanaConfig.rb kibana/
cd Kibana
gem install bundler && bundle install

ruby kibana.rb
