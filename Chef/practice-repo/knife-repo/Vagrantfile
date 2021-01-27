$tokenscript = <<-SCRIPT
cat > data-collector-token.toml <<EOF
[auth_n.v1.sys.service]
a1_data_collector_token = "KGN0YhXlXhQwhFxTnXLTPhfObKs="
EOF
./chef-automate config patch data-collector-token.toml
SCRIPT

$mlsascript = <<-SCRIPT
  if [ "$RESPONSE" == "YES" ]
  then
    ARGS='--accept-terms-and-mlsa'
  else
    echo 'You must say YES to continue'
    exit 1
  fi
  sudo ./chef-automate deploy --product automate --product chef-server $ARGS
SCRIPT

class MLSA
    def to_s
        print "I agree to the Terms of Service and the Master License and Services Agreement (YES/NO): \n"
        STDIN.gets.chomp
    end
end

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end

  config.vm.box = "bento/ubuntu-16.04"
  config.vm.synced_folder ".", "/opt/a2-testing", create: true
  config.vm.hostname = 'learn-chef.automate'
  config.vm.network 'private_network', ip: '192.168.33.199'
  config.vm.provision "shell", inline: "apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip"
  config.vm.provision "shell", inline: "sysctl -w vm.max_map_count=262144"
  config.vm.provision "shell", inline: "sysctl -w vm.dirty_expire_centisecs=20000"
  config.vm.provision "shell", inline: "echo 192.168.33.199 learn-chef.automate | sudo tee -a /etc/hosts"
  config.vm.provision "shell", inline: "curl -s https://packages.chef.io/files/current/automate/latest/chef-automate_linux_amd64.zip | gunzip - > chef-automate && chmod +x chef-automate"
  config.vm.provision "shell", env: {"RESPONSE" => MLSA.new}, inline: $mlsascript
  config.vm.provision "shell", inline: "sudo chef-server-ctl org-create chef_foundations 'Chef Foundations'"
  config.vm.provision "shell", inline: "sudo chef-server-ctl user-create user1 Chef1 User example1@test.com PASSWD1 -f /home/vagrant/user1.pem"
  config.vm.provision "shell", inline: "sudo chef-server-ctl org-user-add chef_foundations user1 -a"
  config.vm.provision "shell", inline: $tokenscript
  config.vm.provision "shell", inline: "apt-get clean"
  config.vm.provision "shell", inline: "echo 'Server is up. Please log in at https://learn-chef.automate/'"
  config.vm.provision "shell", inline: "echo 'credentials are in the automate-credentials.toml file. log in using vagrant ssh'"

end