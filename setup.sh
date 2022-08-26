#!/bin/bash
chmod 600 .vagrant/machines/box_1/virtualbox/private_key
cat secrets/ssh_keys/prometheus-server.pub | ssh -i .vagrant/machines/box_1/virtualbox/private_key vagrant@192.168.51.101 "cat - >> /home/vagrant/.ssh/authorized_keys"
chmod 600 .vagrant/machines/box_2/virtualbox/private_key
cat secrets/ssh_keys/grafana-server.pub | ssh -i .vagrant/machines/box_2/virtualbox/private_key vagrant@192.168.51.102 "cat - >> /home/vagrant/.ssh/authorized_keys"
chmod 600 .vagrant/machines/box_3/virtualbox/private_key
cat secrets/ssh_keys/target.pub | ssh -i .vagrant/machines/box_3/virtualbox/private_key vagrant@192.168.51.103 "cat - >> /home/vagrant/.ssh/authorized_keys"
