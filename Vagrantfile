require 'yaml'

settings = YAML.load_file 'vagrant.yml'

Vagrant.configure(2) do |config|
    #config.vm.network "forwarded_port", guest: 8080, host: 8080
    config.vm.define "ubuntu" do |ubuntu|
        ubuntu.vm.box = "ubuntu/trusty64"
        ubuntu.vm.provision :shell, path: "shell/update.sh"
        ubuntu.vm.provision :shell, path: "shell/node.sh"
        ubuntu.vm.provision :shell, path: "shell/git.sh"
        ubuntu.vm.provision :shell, path: "shell/ssh.sh"
        #ubuntu.vm.provision :shell, path: "shell/java.sh"
        #ubuntu.vm.provision :shell, path: "shell/python.sh"
        #ubuntu.vm.provision :shell, path: "shell/google-python-app-engine.sh"
        #ubuntu.vm.provision :shell, path: "shell/docker.sh"
        ubuntu.vm.provision :shell, path: "shell/aws.sh", args: [settings['aws']['key'], settings['aws']['secret']]
        ubuntu.vm.provision :shell, path: "shell/extra.sh"
    end
    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
    end
    config.vm.synced_folder settings['git']['path'], "/home/vagrant/git"
end
