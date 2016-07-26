Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 80, host: 1001 

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update && apt-get install -y ghc ghc-prof ghc-doc
  SHELL
end
