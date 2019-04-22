Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 23, host: 2323
  config.vm.provision "shell",
    inline: "sudo apt install -y python"
end
