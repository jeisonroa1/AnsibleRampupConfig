
Vagrant.configure("2") do |config|
  config.vm.network "public_network"

  config.vm.define "ansible" do |api|
    api.vm.box = "ubuntu/xenial64"
    api.vm.hostname = "ansible"
    api.vm.network :private_network, ip: "10.0.0.16"
    api.vm.provider :virtualbox do |v|
      v.memory = 512
      v.cpus = 1
    end
    config.vm.provision "file", source: "./Roam.pem", destination: "~/.ssh/Roam.pem"
    config.vm.provision "file", source: "./playbook.yaml", destination: "~/playbook.yaml"
    config.vm.provision "file", source: "./table_creation_and_inserts.sql", destination: "~/table_creation_and_inserts.sql" 
    api.vm.provision "shell" do |script|
      script.path = "./provision.sh"
    end
  end
end
