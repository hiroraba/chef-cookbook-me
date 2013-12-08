# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "opscode-ubuntu1204"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.10_chef-provisionerless.box"

  config.omnibus.chef_version = :latest
  config.vm.synced_folder "./","/home/vagrant"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["/Users/matsuohiroki/vagrant/docker/cookbooks"] 
    chef.run_list = ["recipe[ore::default]", 
      "recipe[ore::plenv]",
      "recipe[ore::zsh]"
    ]
  end

  config.vm.provider :virtualbox do |vb|
    vb.name = "docker1"
    vb.customize ["modifyvm", :id, "--memory", 1024]
  end

  config.vm.network :private_network, ip: "192.168.33.32"
end
