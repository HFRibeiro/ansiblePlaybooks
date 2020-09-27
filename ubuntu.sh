#!/bin/bash
sudo apt-get -y install git make ansible xclip open-vm-tools-desktop
git config --global user.name "HFRibeiro"
git config --global user.email "ribeirh02@gmail.com"
cd ubuntu18_04 && ansible-playbook -K playbook.yml
ssh-keygen -t rsa -b 4096 -C "ribeirh02@gmail.com"
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "\n\n\n\nShould restart after this\n\n\n"
echo ~/.ssh/id_rsa.pub
