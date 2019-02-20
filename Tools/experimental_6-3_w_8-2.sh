#!/bin/sh

echo 'Replace Script Version-0.1'

cd /usr/bin

echo 'Generating Validate File'

file=./check628_OK

if [ -e "$file" ]; then
  echo "File already exists!"
  echo "Do not run this script multiple times!"
  exit 1
else
  sudo echo "VALID" >> $file
fi

echo 'Making necessary backups...'

sudo mv arm-linux-gnueabihf-c++ arm-linux-gnueabihf-c++.backup
sudo mv arm-linux-gnueabihf-g++ arm-linux-gnueabihf-g++.backup
sudo mv arm-linux-gnueabihf-gcc arm-linux-gnueabihf-gcc.backup
sudo mv arm-linux-gnueabihf-gcc-ar arm-linux-gnueabihf-gcc-ar.backup
sudo mv arm-linux-gnueabihf-gcc-nm arm-linux-gnueabihf-gcc-nm.backup
sudo mv arm-linux-gnueabihf-gcc-ranlib arm-linux-gnueabihf-gcc-ranlib.backup
sudo mv arm-linux-gnueabihf-gfortran arm-linux-gnueabihf-gfortran.backup
sudo mv c++ c++.backup
sudo mv cpp cpp.backup
sudo mv g++ g++.backup
sudo mv gcc gcc.backup
sudo mv gcc-ar gcc-ar.backup
sudo mv gcc-nm gcc-nm.backup
sudo mv gcc-ranlib gcc-ranlib.backup
sudo mv gcov gcov.backup
sudo mv gcov-dump gcov-dump.backup
sudo mv gcov-tool gcov-tool.backup
sudo mv gfortran gfortran.backup

echo 'Generating Symbolic links...'

sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-arm-linux-gnueabihf-c++ /usr/bin/arm-linux-gnueabihf-c++
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-arm-linux-gnueabihf-g++ /usr/bin/arm-linux-gnueabihf-g++
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-arm-linux-gnueabihf-gcc /usr/bin/arm-linux-gnueabihf-gcc
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-arm-linux-gnueabihf-gcc-ar /usr/bin/arm-linux-gnueabihf-gcc-ar
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-arm-linux-gnueabihf-gcc-nm /usr/bin/arm-linux-gnueabihf-gcc-nm
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-arm-linux-gnueabihf-gcc-ranlib /usr/bin/arm-linux-gnueabihf-gcc-ranlib
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-arm-linux-gnueabihf-gfortran /usr/bin/arm-linux-gnueabihf-gfortran
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-c++ /usr/bin/c++
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-cpp /usr/bin/cpp
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-g++ /usr/bin/g++
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gcc /usr/bin/gcc
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gcc-8.2.0 /usr/bin/gcc-8.2.0
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gcc-ar /usr/bin/gcc-ar
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gcc-nm /usr/bin/gcc-nm
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gcc-ranlib /usr/bin/gcc-ranlib
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gcov /usr/bin/gcov
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gcov-dump /usr/bin/gcov-dump
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gcov-tool /usr/bin/gcov-tool
sudo ln -s /opt/gcc-8.2.0/bin/arm-linux-gnueabihf-gfortran /usr/bin/gfortran

echo 'Done!'
