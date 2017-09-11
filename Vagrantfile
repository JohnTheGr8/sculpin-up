Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "Sculpin-Up"
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.vm.provider "virtualbox"

  config.vm.network "private_network", ip: "192.168.56.100", adapter: 2

  config.vm.synced_folder "www/", "/home/vagrant/www", create: true
end
