# OpenARC Vagrant Development environment

## Setup

1. Clone `git clone git@github.com:ValiMail/OpenARCDev.git`
2. Pull in submodules
```
git submodule init
git submodule update
```

3. Install Vagrant `brew cask install vagrant`
4. Start the environment
```bash
cd OpenARCDev
vagrant up
```
5. SSH in `vagrant ssh`

6. OpenARC should compile, and the test suite should be setup as well!

## Developing

Once you finish provisioning you can run `vagrant ssh` and you should end up in the root dir of the vagrant user. In there, you should see two important shared folders: `OpenARC/` and `arc_test_suite/`. These are shared folders with your local machine.

## Other Notes

* To entirely reconfigure & rebuild OpenARC
```
cd OpenARC
aclocal && autoconf && autoreconf --install && automake --add-missing && ./configure && make all
```

* To run openarc (ex.)
```
sudo /home/vagrant/OpenARC/openarc/openarc -c /home/vagrant/misc/openarc.conf -f -l -t /home/vagrant/misc/test1.msg
```
* To run the test validation suite
```
sudo ./testarc.py -p 53 validate runners/validateopenarc.py
```
* To run the signing suite
```
sudo ./testarc.py -p 53 sign runners/signopenarc.py
```
