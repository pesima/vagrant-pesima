# -*- mode: ruby -*-
# vi: set ft=ruby :

# Server Configuration
server_ip             = "192.168.33.10"
server_memory         = "1024" # MB
server_timezone       = "Asia/Kuala_Lumpur"

# Database Configuration
mysql_root_password   = "root"
mysql_version         = "5.5"

# Languages and Packages
ruby_version          = "latest"
ruby_gems             = [
  "jekyll",
  "sass",
  #"compass",
]
php_version           = "latest"
composer_packages     = [
  "phpunit/phpunit:4.0.*",
  #"codeception/codeception=*",
  #"phpspec/phpspec:2.0.*@dev",
]
public_folder         = "/vagrant"
laravel_root_folder   = "/vagrant/laravel"
nodejs_version        = "latest"
nodejs_packages       = [
  "grunt-cli",
  "gulp",
  "bower",
  "yo",
]

Vagrant.configure("2") do |config|

  # Set server to Ubuntu 12.04 64bit
  config.vm.box = "hashicorp/precise64"
  config.vm.hostname = "pesima.dev"
  config.vm.network :private_network, ip: server_ip
  config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777","fmode=777"]

  config.vm.provider :virtualbox do |vb|

    vb.customize ["modifyvm", :id, "--memory", server_memory]
    vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]

    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]

  end

  config.vm.provision "shell", path: "scripts/base.sh"
  config.vm.provision "shell", path: "scripts/php.sh", args: [php_version, server_timezone]
  config.vm.provision "shell", path: "scripts/apache.sh", args: [server_ip, public_folder]
  config.vm.provision "shell", path: "scripts/mysql.sh", args: [mysql_root_password, mysql_version]
  config.vm.provision "shell", path: "scripts/sqlite.sh"
  config.vm.provision "shell", path: "scripts/memcached.sh"
  config.vm.provision "shell", path: "scripts/nodejs.sh", privileged: false, args: nodejs_packages.unshift(nodejs_version)
  config.vm.provision "shell", path: "scripts/rvm.sh", privileged: false, args: ruby_gems.unshift(ruby_version)
  config.vm.provision "shell", path: "scripts/composer.sh", privileged: false, args: composer_packages.join(" ")
  config.vm.provision "shell", path: "scripts/laravel.sh", args: [server_ip, laravel_root_folder, public_folder]
  config.vm.provision "shell", path: "scripts/screen.sh"
  config.vm.provision "shell", path: "scripts/mailcatcher.sh"
  config.vm.provision "shell", path: "scripts/git-ftp.sh", privileged: false

end
