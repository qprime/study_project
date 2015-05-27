echo "###################################################################################"
echo "Installing the QtCreator development environment."
echo "###################################################################################"

if [ ! -d /opt/Qt5.4.1/ ]
then
    wget --directory-prefix=/home/vagrant http://download.qt.io/archive/qt/5.4/5.4.1/qt-opensource-linux-x64-5.4.1.run
    sudo chmod 777 /home/vagrant/qt-opensource-linux-x64-5.4.1.run
    sudo mkdir /opt/Qt5.4.1
    sudo chmod 777 /opt/Qt5.4.1/
    sudo apt-get install -y --force-yes mesa-common-dev libgl1-mesa-dev libglu1-mesa-dev
fi

if [ -e /home/vagrant/Desktop/qt.desktop ]
then
    sudo chmod 777 /home/vagrant/Desktop/qt.desktop
else
    echo 'Unable to find expected qt.desktop file.'
fi

echo "###################################################################################"
echo "Adding default build direcotries."
echo "###################################################################################"
sudo sh -c "mkdir -p /home/vagrant/build/release; true"
sudo sh -c "mkdir /home/vagrant/build/debug; true"
sudo sh -c "mkdir /home/vagrant/build/unit_test; true"

