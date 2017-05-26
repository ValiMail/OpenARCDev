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
