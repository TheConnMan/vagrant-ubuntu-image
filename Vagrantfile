require 'yaml'

settings = YAML.load_file 'vagrant.yml'

Vagrant.configure(2) do |config|
  #config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
	ubuntu.vm.provision :shell, path: "update.sh"
	ubuntu.vm.provision :shell, path: "node.sh"
	ubuntu.vm.provision :shell, path: "git.sh"
	ubuntu.vm.provision :shell, path: "ssh.sh"
	#ubuntu.vm.provision :shell, path: "python.sh"
	#ubuntu.vm.provision :shell, path: "google-python-app-engine.sh"
	#ubuntu.vm.provision :shell, path: "docker.sh"
	ubuntu.vm.provision :shell, path: "extra.sh"
  end
  config.vm.synced_folder settings['git']['path'], "/home/vagrant/git"
end
