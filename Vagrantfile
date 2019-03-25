# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
   if Vagrant.has_plugin?("vagrant-proxyconf")
     config.proxy.http     = "http://cache.esiee.fr:3128/"
     config.proxy.https    = "http://cache.esiee.fr:3128/"
     config.proxy.no_proxy = "localhost,127.0.0.1"
   end

   config.vm.define :terraform, autostart: true do |terraform|
     terraform.vm.box = "centos/7"
     terraform.vm.hostname = "terraform"
     terraform.vm.network "private_network", ip: "192.168.201.30"

     terraform.vm.provider "virtualbox" do |v|
       v.memory = 2048
       v.cpus = 2
     end
   end
end
