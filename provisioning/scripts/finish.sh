echo "###################################################################################"
echo "Ensuring that all items in the vagrant directory belong to the vagrant user."
echo "###################################################################################"
sudo chown -R vagrant:vagrant /home/vagrant/

echo "###################################################################################"
echo "Provisioning Complete!"
echo "###################################################################################"