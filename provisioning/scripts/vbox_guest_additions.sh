echo "###################################################################################"
echo "Installing the VirtualBox guest additions"
echo "###################################################################################"
sudo apt-get install -y --force-yes dkms build-essential linux-headers-generic #for vbox guest additions
sudo apt-get install -y --force-yes virtualbox-guest-x11
