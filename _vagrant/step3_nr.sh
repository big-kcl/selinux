#!/bin/sh
# Step 3: nr

sudo make -C /srv/arch-selinux/_vagrant/policies/nr
sudo semodule -i /srv/arch-selinux/_vagrant/policies/nr/nr.pp
mkdir /home/vagrant/store
sudo chcon -t nr_t /home/vagrant/store
sudo chown -R vagrant:vagrant /home/vagrant/store
touch /home/vagrant/store/tokens
sudo echo /srv/arch-selinux/_vagrant/keys/vagrant.pub >> /home/vagrant/.ssh/authorized_keys
