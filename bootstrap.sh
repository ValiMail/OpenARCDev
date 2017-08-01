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

git clone git@github.com:ValiMail/OpenARC.git temp
mv temp/.git* OpenARC
mv temp/* OpenARC
rm -rf temp

echo "Cloning Test Suite"
git clone git@github.com:ValiMail/arc_test_suite.git temp
mv temp/.git* arc_test_suite
mv temp/* arc_test_suite
rm -rf temp

echo "Building OpenARC"
cd OpenARC
aclocal && autoconf && autoreconf --install && automake --add-missing && ./configure && make all

echo "Finalizing"
chmod og-r /home/vagrant/misc/key.pem
chmod og-r /home/vagrant/misc/openarc.conf
mkdir /home/vagrant/tmp
mkdir /home/vagrant/pids

echo "Adding local DNS resolver"
sudo su
echo 'nameserver 127.0.0.1' >> /etc/resolv.conf
exit
