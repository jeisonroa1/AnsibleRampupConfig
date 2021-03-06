#!/usr/bin/env bash
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python3
sudo apt install python3-pip -y
sudo apt-get install ansible -y
sudo apt-get install mysql-client -y
sudo python3 -m pip install PyMySQL;
sudo python3 -m pip install boto3;
sudo python3 -m pip install botocore;
cd /home/vagrant/
sudo runuser -l  vagrant -c 'ansible-galaxy collection install community.mysql'
sudo chmod 400 /home/vagrant/.ssh/Roam.pem
sudo echo "[bastion]
18.144.14.198 ansible_ssh_private_key_file=/home/vagrant/.ssh/Roam.pem ansible_user=ubuntu" > /etc/ansible/hosts
