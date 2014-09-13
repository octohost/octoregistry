# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "darron/octohost"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #
  # IMPORTANT NOTE:
  #
  # registry.octodev.io points to 192.168.62.100 - you can use it for your own
  #   local use.
  #
  config.vm.network :private_network, ip: "192.168.62.100"
  config.vm.provision "shell", path: "install-registry.sh"
end
