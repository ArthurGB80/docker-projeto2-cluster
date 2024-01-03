Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/bionic64"
    master.vm.network "private_network", ip: ENV['MASTER_IP'] || "192.168.50.10"
    master.vm.provision "shell", inline: <<-SHELL
      curl -fsSL https://get.docker.com -o get-docker.sh
      sudo sh get-docker.sh || exit 1
      sudo usermod -aG docker $USER
    SHELL
  end
  
  (1..3).each do |i|
    config.vm.define "node0#{i}" do |node|
      node.vm.box = "ubuntu/bionic64"
      node.vm.network "private_network", ip: "192.168.50.#{10 + i}"
      node.vm.provision "shell", inline: <<-SHELL
        curl -fsSL https://get.docker.com -o get-docker.sh
        sudo sh get-docker.sh || exit 1
        sudo usermod -aG docker $USER
      SHELL
    end
  end
 end