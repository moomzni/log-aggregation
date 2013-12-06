# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.hostname = 'logtest'
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provider :virtualbox do |vb|
    modifyvm_args = ['modifyvm', :id]
    modifyvm_args << "--memory" << "1024"
    modifyvm_args << "--name" << "build"
    modifyvm_args << "--natdnsproxy1" << "on"
    modifyvm_args << "--natdnshostresolver1" << "on"
    vb.customize(modifyvm_args)
  end
  config.vm.provision :shell, :path => "scripts/bootstrap.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8080
end
