# Vagrant Pesima

> Vagrant Provisioning for PESIMA Developer

## Requirements

* Vagrant `1.4.3`+
    * Use `vagrant -v` to check your version
* Virtualbox
* Git

## Instructions

**First**, clone this repository.

```bash
git clone http://github.com/pesima/vagrant-pesima.git
```

**Second** and run:

```bash
$ vagrant up
```

**Optional**, see `Vagrant.default` for available options and edit the `Vagrantfile` which scripts you'd like to run.


## Virtual Machine Specifications

* Base Packages
	* Base Items (Git and more!)
	* Oh-My-ZSH
	* PHP (php-fpm)
	* Vim
	* PHP MsSQL (ability to connect to SQL Server)
	* Screen
* Web Servers
	* Apache
	* HHVM
	* Nginx
* Databases
	* Couchbase
	* CouchDB
	* MariaDB
	* MongoDB
	* MySQL
	* PostgreSQL
	* SQLite
* In-Memory Stores
	* Memcached
	* Redis
* Search
	* ElasticSearch and ElasticHQ
* Utility
	* Beanstalkd
	* Supervisord
* Additional Languages
	* NodeJS via NVM
	* Ruby via RVM
* Frameworks / Tooling
	* Composer
	* Laravel
	* Symfony
	* PHPUnit
	* MailCatcher

## 