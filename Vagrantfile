Vagrant.configure(2) do |config|
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
	ubuntu.vm.provision :shell, path: "update.sh"
	ubuntu.vm.provision :shell, path: "node.sh"
  end
end
