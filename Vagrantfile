# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "public_network"

  config.vm.provision "shell" do |s|
    s.path = "provision.sh"
  end

  config.vm.provider "virtualbox" do |v|
    v.name = "ubuntu_dev"
    v.memory = 2048
    v.gui = true
  end
end