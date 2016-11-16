# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  #ip = "172.17.8.99"
  #config.vm.network :private_network, ip: ip

  # Uncomment below to enable NFS for sharing the host machine into the coreos-vagrant VM.
  #config.vm.synced_folder ".", "/vagrant", id: "core", :nfs => true, :mount_options => ['nolock,vers=3,udp']

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision :shell, :path => 'bootstrap.sh'

  ## For masterless, mount your salt file root
  #config.vm.synced_folder "salt/roots/", "/srv/salt/",  :nfs => true, :mount_options => ['nolock,vers=3,udp']

  #config.vm.provision :salt do |salt|
  #  salt.masterless = true
  #  salt.run_highstate = true
  #end
end
