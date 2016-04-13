# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.provision "shell", path: "https://gist.githubusercontent.com/obihann/cc92955cc198b0601bb9a0bebadf4851/raw/f1eed92f15168baeb021dac28eac781dc2f3b151/upgrade_puppet.sh"

  config.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.module_path = "puppet/modules"
  end
end
