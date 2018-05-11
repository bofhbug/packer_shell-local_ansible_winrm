#!/bin/bash -x

PACKER_VERSION="1.2.3"

sudo dnf install -y ansible qemu-img qemu-kvm unzip wget

mkdir test

cp Autounattend.xml fixnetwork.ps1 win.yml windows-enterprise-eval.json test/

cd test

test -f packer || ( wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && unzip packer_${PACKER_VERSION}_linux_amd64.zip && rm packer_${PACKER_VERSION}_linux_amd64.zip )

TMPDIR="/var/tmp/" PACKER_LOG=1 ./packer build ./windows-enterprise-eval.json
