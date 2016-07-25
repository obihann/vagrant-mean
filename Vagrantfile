# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.box = "obihann/nginx"

    config.vm.synced_folder "home", "/home/vagrant", create: true,
        :owner=> 'vagrant', :group=>'vagrant', :mount_options => ['dmode=755', 'fmode=755']

    config.vm.synced_folder "www", "/var/www", create: true,
        :owner=> 'vagrant', :group=>'www-data', :mount_options => ['dmode=775', 'fmode=775']

    config.vm.network "private_network", type: "dhcp" 
    config.vm.network :forwarded_port, guest: 80, host: 4567

    config.push.define "atlas" do |push|
        push.app = "obihann/mean"
    end

    config.vm.provision "shell", path: "https://gist.githubusercontent.com/obihann/cc92955cc198b0601bb9a0bebadf4851/raw/f1eed92f15168baeb021dac28eac781dc2f3b151/upgrade_puppet.sh"

    config.vm.provision "puppet" do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.module_path = "puppet/modules"
    end

    config.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.name = "mean"
    end
end
