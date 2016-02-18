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

1. `apt-get install puppet git-core`  
2. `cd /etc/puppet/`  
3. `git clone https://github.com/anthann/dev_env.git`  
4. `sudo puppet apply /etc/puppet/manifests/site.pp`  

### 对于`vagrant`，使用如下方式安装:  

1. `git clone --recursive https://github.com/anthann/vagrant.git`
2. `vagrant up`

具体参见`anthann/vagrant`
