Repository for testing the building process: Windows + Ansible + shell-local provisioner + WinRM + QEMU

Using the files in this repository you can reproduce the issuw described here: https://github.com/hashicorp/packer/issues/6264

You just need to run the script [packer_qemu_windows_ansible_winrm.sh](packer_qemu_windows_ansible_winrm.sh) written for Fedora 27 (but slightly modified will work on any Linux distro).
