Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-22.04"
    config.vm.provision "file", source: "./files/git-config", destination: "~/.gitconfig"
    config.vm.provision "shell", path: "https://raw.githubusercontent.com/tanujparaste/wt-vagrant/04-multi-vm-lamp-stack/scripts/common.sh"
    
    # define vms for web and database servers
    config.vm.define "web" do |web|
        web.vm.hostname = "web-server"
        # port forwarding in web server only
        web.vm.network "forwarded_port", guest: 80, host: 8080
        web.vm.network "private_network", ip: "192.168.10.2"
        web.vm.provision "shell", path: "https://raw.githubusercontent.com/tanujparaste/wt-vagrant/04-multi-vm-lamp-stack/scripts/webserver.sh"
    end

    config.vm.define "db" do |db|
        db.vm.hostname = "database-server"
        db.vm.network "private_network", ip: "192.168.10.3"
        db.vm.provision "shell", path: "https://raw.githubusercontent.com/tanujparaste/wt-vagrant/04-multi-vm-lamp-stack/scripts/dbserver.sh"
    end

    config.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
  end