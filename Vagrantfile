# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.define :ubuntu_xenial

  config.vm.provision "shell" do |s|
    s.path = "provision.sh"
  end

  config.vm.provider "virtualbox" do |v|
    v.name = "ubuntu_16.04"
    v.memory = 2048
    # v.gui = true
  end
end