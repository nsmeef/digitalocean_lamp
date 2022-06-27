#/bin/bash

set -eux

# Allow system time to init
sleep 20

# Install Ansible
sudo apt-get update
sudo apt-get install -y ansible

# Bootstrap w/ Python3
ansible-playbook /tmp/ansible/playbook.yml -e 'ansible_python_interpreter=/usr/bin/python3'
