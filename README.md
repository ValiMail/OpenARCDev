# OpenARC Vagrant Development environment

## How

* Clone me
* Install Vagrant
* Setup local SSH Agent forwarding
```
key_file=~/.ssh/id_rsa
[[ -z $(ssh-add -L | grep $key_file) ]] && ssh-add $key_file
```
* Start the box
```
cd OpenARCDev
vagrant up
```
* SSH in
```
vagrant ssh
```
* OpenARC should compile, and the test suite should be setup as well!

## Things

* To run openarc (ex.)
```
sudo /home/vagrant/OpenARC/openarc/openarc -c /home/vagrant/misc/openarc.conf -f -l -t /home/vagrant/misc/test1.msg
```
* To run the test suite
```
cd arc_test_suite
./testarc.py validate runners/validateopenarc.py
```
* To entirely reconfigure & rebuild OpenARC
```
cd OpenARC
aclocal && autoconf && autoreconf --install && automake --add-missing && ./configure && make all
```
