Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "mmtk", "/var/mmtk"
  config.vm.provision "shell", path: "setup.sh"
end
