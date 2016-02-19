# Readme

使用`puppet`搭建个人开发环境(Back end)，包括:  

* nginx  
* mysql  
* python  
* flask  
* node.js(*)   
* mongodb  
* redis(*)   

### 对于`Ubuntu`，使用如下方式安装:  

0. login as root  
1. `apt-get install puppet git-core`  
2. `cd /etc`  
3. `mv puppet/ puppet-bak`  
4. `git clone --recursive https://github.com/anthann/dev_env.git /etc/puppet`  
5. `puppet apply /etc/puppet/manifests/init.pp`    

当使用digitalocean新配置的服务器时，直接`puppet apply`可能会出现`warning: Could not retrieve fact fqdn`。  
解决办法: `vim /etc/hosts`  
将`127.0.1.1`这一行的内容修改为`127.0.1.1 ubuntu-512mb-sfo1-01.example.com ubuntu-512mb-sfo1-01`。其中`ubuntu-512mb-sfo1-01`是我的主机名。  

### 对于`vagrant`，使用如下方式安装:  

1. `git clone --recursive https://github.com/anthann/vagrant.git`
2. `vagrant up`

具体参见`anthann/vagrant`
