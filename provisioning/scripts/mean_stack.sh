sudo apt-key -y --force-yes adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes install mongodb-org git build-essential openssl libssl-dev pkg-config
wget http://nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz -P /home/vagrant/
tar xzvf /home/vagrant/node-v*
sh -c 'cd /home/vagrant/node-v*; ./configure; make'
sudo sh -c 'cd /home/vagrant/node-v*; make install'
rm -rf /home/vagrant/node-v*

sudo apt-get install -y --force-yes git 

sudo npm install -g bower grunt-cli
sudo git clone https://github.com/meanjs/mean.git /opt/mean

sh -c 'cd /opt/mean; sudo npm install'

sudo bower --allow-root --config.interactive=false install
sudo bower install --allow-root

sudo chown -R vagrant:vagrant /opt/mean
