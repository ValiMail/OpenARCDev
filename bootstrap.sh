#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
echo "Updating Packages & Installing Dependencies"
apt-get update
apt-get install -y git-core automake pkg-config libtool m4 libbsd-dev libssl-dev libmilter-dev emacs python3-pip libyaml-dev

sudo pip3 install pyyaml ddt dnslib

echo "Cloning OpenARC Repo"
mkdir -p ~/.ssh
touch /home/vagrant/.ssh/config
chown vagrant:vagrant /home/vagrant/.ssh/config
chmod 600 /home/vagrant/.ssh/config

cat << 'EOF' >> /home/vagrant/.ssh/config

StrictHostKeyChecking no

EOF

ssh-keyscan -H github.com >> ~/.ssh/known_hosts
git clone git@github.com:ValiMail/OpenARC.git

echo "Cloning Test Suite"


echo "Building OpenARC"
cd OpenARC
aclocal && autoconf && autoreconf --install && automake --add-missing && ./configure && make all
