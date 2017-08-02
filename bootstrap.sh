#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
echo "Updating Packages & Installing Dependencies"
apt-get update
apt-get install -y git-core automake pkg-config libtool m4 libbsd-dev libssl-dev libmilter-dev python3-pip libyaml-dev

sudo pip3 install pyyaml ddt dnslib

mkdir -p ~/.ssh
touch /home/vagrant/.ssh/config
chown vagrant:vagrant /home/vagrant/.ssh/config
chmod 600 /home/vagrant/.ssh/config

cat << 'EOF' >> /home/vagrant/.ssh/config

StrictHostKeyChecking no

EOF

ssh-keyscan -H github.com >> ~/.ssh/known_hosts

echo "Building OpenARC"
cd OpenARC
aclocal && autoconf && autoreconf --install && automake --add-missing && ./configure && make all

echo "Finalizing"
chmod og-r /home/vagrant/misc/key.pem
chmod og-r /home/vagrant/misc/openarc.conf
mkdir -p /home/vagrant/tmp
mkdir -p /home/vagrant/pids
