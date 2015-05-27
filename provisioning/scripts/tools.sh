echo "###################################################################################"
echo "Installing the Tools: terminator, curl, vim, tree, subversion, jre/jdk, curl"
echo "###################################################################################"
sudo apt-get install -y --force-yes terminator
sudo apt-get install -y --force-yes curl
sudo apt-get install -y --force-yes vim
sudo apt-get install -y --force-yes tree
sudo apt-get install -y --force-yes subversion
sudo apt-get install -y --force-yes default-jre default-jdk
sudo apt-get install -y --force-yes python-paramiko
sudo apt-get install -y --force-yes xvfb
sudo apt-get install -y --force-yes meld
sudo apt-get install -y --force-yes pylint
sudo apt-get install -y --force-yes python-mock
sudo apt-get install imagemagick --fix-missing
sudo apt-get install -y --force-yes python-pip
sudo apt-get install -y --force-yes gedit

if [ -e /home/vagrant/Desktop/meld.desktop ]
then
    sudo chmod 777 /home/vagrant/Desktop/meld.desktop
else
    echo 'Unable to find expected meld.desktop file.'
fi

if [ -e /home/vagrant/Desktop/terminator.desktop ]
then
    sudo chmod 777 /home/vagrant/Desktop/terminator.desktop
else
    echo 'Unable to find expected terminator.desktop file.'
fi


