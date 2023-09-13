Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision "file", source: "./files/git-config", destination: "~/.gitconfig"
  config.vm.provision "shell", path: "https://raw.githubusercontent.com/tanujparaste/wt-vagrant/03-lamp-stack/scripts/provision.sh"
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
end
