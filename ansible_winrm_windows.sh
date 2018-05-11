#!/bin/bash

HOST="192.168.121.208"

ansible-playbook --connection=winrm --extra-vars="ansible_user=vagrant ansible_ssh_pass=vagrant ansible_port=5986 ansible_winrm_server_cert_validation=ignore" -i "$HOST," win.yml
ansible --connection=winrm --extra-vars="ansible_user=vagrant ansible_ssh_pass=vagrant ansible_port=5986 ansible_winrm_server_cert_validation=ignore" -i "$HOST," -m setup $HOST
