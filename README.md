# Vagrant MEAN

## Useful Info

A Vagrant box based containing Ubuntu linux Nginx, Node and Mongo. Provisioned with puppet and ready to deploy. 

Fork us:   
[https://github.com/obihann/vagrant-mean/](https://github.com/obihann/vagrant-mean/)

Download the latest box:   
[https://atlas.hashicorp.com/obihann/boxes/mean/](https://atlas.hashicorp.com/obihann/boxes/mean/)

Install the latest box:   
```$ vagrant init obihann/mean; vagrant up --provider virtualbox```

###Software Versions

- Ubuntu 12.04 LTS
- puppet 3.8.7
- git 1.7.9.5
- python 2.7.3
- perl 5.14.2
- ruby 1.8.7
- Nginx 1.1.19
- Node 5.11.1
- MongoDB 2.0.4

### Base Image

- [obihann/lamp](https://atlas.hashicorp.com/obihann/boxes/nginx/)

### Puppet Modules

- [puppetlabs/puppetlabs-apt](https://github.com/puppetlabs/puppetlabs-apt)
- [puppetlabs/puppetlabs-stdlib](https://github.com/puppetlabs/puppetlabs-stdlib/)
- [obihann/node](https://bitbucket.org/obihann/node)

### Node Modules

- gulp-cli
- express

##License

This tool is protected by the [GNU General Public License v2](http://www.gnu.org/licenses/gpl-2.0.html).

Copyright [Jeffrey Hann](http://jeffreyhann.ca/) 2016