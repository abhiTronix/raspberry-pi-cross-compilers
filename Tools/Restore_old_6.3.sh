#!/bin/sh

echo 'Restore Script Version-0.1'

cd /usr/bin

file=./check628_OK

echo 'Checking for Validity:'
if [ -e "$file" ]; then
    echo "PASSED"
    sudo rm $file
else 
    echo "FAILED"
    exit 1
fi 

echo 'Removing Symbolic links...'

sudo rm /usr/bin/arm-linux-gnueabihf-c++
sudo rm /usr/bin/arm-linux-gnueabihf-g++
sudo rm /usr/bin/arm-linux-gnueabihf-gcc
sudo rm /usr/bin/arm-linux-gnueabihf-gcc-ar
sudo rm /usr/bin/arm-linux-gnueabihf-gcc-nm
sudo rm /usr/bin/arm-linux-gnueabihf-gcc-ranlib
sudo rm /usr/bin/arm-linux-gnueabihf-gfortran
sudo rm /usr/bin/c++
sudo rm /usr/bin/cpp
sudo rm /usr/bin/g++
sudo rm /usr/bin/gcc
sudo rm /usr/bin/gcc-8.2.0
sudo rm /usr/bin/gcc-ar
sudo rm /usr/bin/gcc-nm
sudo rm /usr/bin/gcc-ranlib
sudo rm /usr/bin/gcov
sudo rm /usr/bin/gcov-dump
sudo rm /usr/bin/gcov-tool
sudo rm /usr/bin/gfortran

echo 'Restoring old configuration...'

sudo mv arm-linux-gnueabihf-c++.backup arm-linux-gnueabihf-c++
sudo mv arm-linux-gnueabihf-g++.backup arm-linux-gnueabihf-g++
sudo mv arm-linux-gnueabihf-gcc.backup arm-linux-gnueabihf-gcc
sudo mv arm-linux-gnueabihf-gcc-ar.backup arm-linux-gnueabihf-gcc-ar
sudo mv arm-linux-gnueabihf-gcc-nm.backup arm-linux-gnueabihf-gcc-nm
sudo mv arm-linux-gnueabihf-gcc-ranlib.backup arm-linux-gnueabihf-gcc-ranlib
sudo mv arm-linux-gnueabihf-gfortran.backup arm-linux-gnueabihf-gfortran
sudo mv c++.backup c++
sudo mv cpp.backup cpp
sudo mv g++.backup g++
sudo mv gcc.backup gcc
sudo mv gcc-ar.backup gcc-ar
sudo mv gcc-nm.backup gcc-nm
sudo mv gcc-ranlib.backup gcc-ranlib
sudo mv gcov.backup  gcov
sudo mv gcov-dump.backup gcov-dump
sudo mv gcov-tool.backup gcov-tool
sudo mv gfortran.backup gfortran

echo 'Done!'
