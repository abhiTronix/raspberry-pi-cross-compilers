<!--
===============================================
Raspberry Pi Toolchains(raspberry-pi-cross-compilers): This project 
provides latest automated GCC Cross Compiler & Native (ARM & ARM64) 
build-scripts and precompiled standalone toolchains for Raspberry Pi.


Copyright (C) 2020 Abhishek Thakur(@abhiTronix) <abhi.una12@gmail.com>


This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
===============================================
-->


<table align="center"><tr><td align="center">

<img alt="QT" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc/qt.png">

</td></tr></table>

Since many finding it difficult to cross-compile QT library for their Raspberry Pi with this project binaries, I decided to make this document. **This guide documents the every steps to follow to cross-compile Latest available [Qt-5.15.2](https://doc.qt.io/qt-5/whatsnew515.html) for any Raspberry Pi variant/model available, using the Raspberry Pi Toolchains available with this project only.**

&nbsp;

### Table of Contents

- [**Prerequites**](#prerequites)
  - [Hardware](#a-hardware)
  - [Software](#b-software)
  - [Others](#c-others)
- [**Steps/Settings for Target Machine (Raspberry Pi)**](#stepssettings-for-target-machine-raspberry-pi)
  - [Start from Scratch (Optional)](#1-start-from-scratch-optional)
    - [Download Softwares & Prepare the SD card](#11-download-softwares--prepare-the-sd-card)
    - [Set up Network](#12-set-up-network)
  - [Set up SSH](#2-set-up-ssh)
  - [Open Terminal](#3-open-terminal)
  - [Enable GL (FAKE KMS)](#4-enable-gl-fake-kms)
  - [Enable Development Sources](#5-enable-development-sources)
  - [Update the system](#6-update-the-system)
  - [Enable rsync with elevated rights](#7-enable-rsync-with-elevated-rights)
  - [Install the important Development Packages](#8-install-the-important-development-packages)
  - [Additional packages (Optional)](#9-additional-packages-optional)
  - [Create directory for QT Deployment](#10-create-directory-for-qt-deployment)
- [**Steps/Settings for Host Machine (PC/Laptop)**](#stepssettings-for-host-machine-pclaptop)
  - [Update the Host Machine](#1-update-the-host-machine)
  - [Setting up the directory structure](#2-setting-up-the-directory-structure)
  - [Download & Extract QT Source](#3-download--extract-qt-source)
    - [Download Binary](#a-download-binary)
    - [Extract Binary](#b-extract-binary)
  - [Patching QT Source](#4-patching-qt-source)
  - [Download & Extract the Precompiled Cross-Compiler](#5-download--extract-the-precompiled-cross-compiler)
    - [Copy Binary URL](#a-copy-binary-url)
    - [Download Binary](#b-download-binary)
    - [Extract Binary](#c-extract-binary)
  - [Sync Raspberry Pi sysroot (Most Important)](#6-sync-raspberry-pi-sysroot-most-important)
  - [Fix symbolic links](#7-fix-symbolic-links)
  - [Configure QT Build](#8-configure-qt-build)
    - [Check Configure Output](#81-check-configure-output)
    - [Check if EGLFS enabled](#82-check-if-eglfs-enabled)
  - [Build QT Source](#9-build-qt-source)
  - [Install QT Source](#10-install-qt-source)
  - [Deploy QT to Raspberry Pi](#11-deploy-qt-to-raspberry-pi)
- [**Final Step for Target Machine (Raspberry Pi)**](#final-step-for-target-machine-raspberry-pi)
  - [Update linker on Raspberry Pi](#update-linker-on-raspberry-pi)
- [**Supporting this Project**](#citing)
- [**Citing**](#supporting-this-project)
- [**Copyright License**](#copyright-license)
- [**Acknowledgments**](#acknowledgments)

&nbsp;

&nbsp;

## Prerequites:

### A. Hardware:
- **Host [PC/Laptop]:** Any x86/x86_64 AMD/Intel machine
- **Target [Raspberry Pi]:** Raspberry Pi any variant/module

### B. Software:
- **Host:** Any Linux machine _(Linux Mint Tested)_

  | 💡  **Note:** Our Cross-Compiler toolchains also works out-of-the-box on any Linux distro via [WSL2](https://docs.microsoft.com/en-in/windows/wsl/) on Windows 10 Machines.| 
  | ----------- |

- **Target:** [Any Raspberry Pi Linux 32-bit OS](https://www.raspberrypi.org/software/operating-systems/) _(Raspbian Buster Tested)_

### C. Others:
- **Storage and Time Requirements:** The build directory takes around ~10GB space and about 2-5 hours to complete _(based on dependencies & Host Machine Specifications)_.
- **Networking:** Your Target Machine _(Raspberry Pi)_ and Host Machine _(where you cross-compiling)_ both MUST have Internet Access, and MUST be on SAME Network to follow these instructions.

&nbsp;

&nbsp;

## Steps/Settings for Target Machine (Raspberry Pi):

### 1. Start from Scratch _(Optional)_

**Important:** If you just brought a new Raspberry Pi or wanted to start from scratch just follow along. Otherwise, if you already has your Raspberry Pi setup, running, and Network Ready, then just skip to [step 2](#2-set-up-ssh).

**Note:** This section assume you have atleast 10GB SDcard for installing Raspbian Buster OS and a Laptop/PC for uploading it.  

#### 1.1. Download Softwares & Prepare the SD card

- Download the latest version of Raspbian (Buster) from [here](https://www.raspberrypi.org/software/operating-systems/) on your laptop/pc.
- You will be needing an image writer to write the downloaded OS into the SD card _(micro SD card in our case)_. So download the open-source **"win32 disk imager"** from [here](https://sourceforge.net/projects/win32diskimager/files/Archive/), OR you can also use [Balena Etcher](https://www.balena.io/etcher/) instead.
- Insert the SD card into the laptop/pc and run the image writer. Once open, browse and select the downloaded Raspbian image file. Select the correct device, that is the drive representing the SD card. _**Note:** If the drive (or device) selected is different from the SD card then the other selected drive will become corrupted. **SO BE CAREFUL!**_
- Once the write is complete, eject the SD card and insert it into the Raspberry Pi and turn it on. It should start booting up.
- Please remember that after booting the Pi, there might be situations when the user credentials like the "username" and password will be asked. Raspberry Pi comes with a default username `pi` and password `raspberry` and so use it whenever it is being asked.


#### 1.2 Set up Network

Now the you have your Raspberry Pi up and Running, its time to connect it your network with one of following ways:

- **If you have Monitor:** Connect it to your raspberry pi along with a keyboard and mouse to navigate, and [follow this guide](https://www.raspberrypi.org/documentation/configuration/wireless/desktop.md).
- **If you don't have Monitor:** [Follow this guide](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)
- [**Any other way**](https://www.raspberrypi.org/documentation/configuration/wireless/)


### 2. Set up SSH

- **If you have Monitor:** On the Raspberry Pi terminal, type: `sudo raspi-config` and menu should pop up on your terminal. To enable SSH, go to: `Interfacing Options` -> `SSH` -> `Yes`, and Click `OK` to enable it. Choose `Finish` finally and exit.

- **If you don't have Monitor:** After setting up the network, if you don't have monitor or you operating it remotely. Then, enable SSH by just taking out your SD card, and hook it your computer, and simply create an empty file called `ssh` in the `/boot/parition` path inside SD card. Now insert back SD card into the Raspberry Pi.


### 3. Open Terminal

- **From another Laptop/PC using SSH:** To connect to your Pi from a different computer, copy and paste the following command into the terminal window but replace `192.160.1.47` with the IP address of the Raspberry Pi. Use `Ctrl + Shift + V` to paste in the terminal.

  ```sh
  ssh pi@192.168.1.47 
  ```

  It will ask for password, and if not changed, it is default (`raspberry`), and so use it whenever it is being asked.

  **Note:** It is possible to configure your Raspberry Pi to allow access from another computer without needing to provide a password each time you connect. _For more details, [see here](https://www.raspberrypi.org/documentation/remote-access/ssh/passwordless.md)_.

- **On Raspberry Pi directly with a Monitor:** Just search "Terminal" and click on it.

### 4. Enable GL (FAKE KMS)

To enable Fake KMS, type `sudo raspi-config` on your terminal to open a menu, then go to: `Advanced Options` -> `A8 GL Driver` -> `G2 GL (Fake KMS)` That should enable KMS. Choose `Finish` finally and exit.

**Note:** If you are using a minimal build, you may be prompted to download some updates before this option becomes available. If asked, do so.

### 5. Enable Development Sources

You need to edit your sources list to enable development sources. To do this, enter the following command into pi terminal:

```sh
sudo nano /etc/apt/sources.list
```

In the nano text editor, uncomment the following line by removing the `#` character from following line:

```sh
deb-src http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi
```
When done, press `Ctrl+O` and then `ENTER` to quit.

### 6. Update the system

Run the following commands in terminal to update the system

```sh
sudo apt update
sudo apt dist-upgrade
```

### 7. Enable rsync with elevated rights

Later in this guide, we will be using the `rsync` command to sync files between the Host PC/Laptop and the Raspberry Pi. For some of these files, root rights (i.e. sudo) is required internally. 

You can do this with a single terminal command as follows:

```sh
echo "$USER ALL=NOPASSWD:$(which rsync)" | sudo tee --append /etc/sudoers
```

That's it. Now `rsync` should be setup to run with `sudo` if needed.


### 8. Install the important Development Packages

Run the following commands in Raspberry Pi terminal to install the required packages:

```sh
sudo apt install build-essential cmake unzip pkg-config gfortran
sudo apt build-dep qt5-qmake libqt5gui5 libqt5webengine-data libqt5webkit5 libudev-dev libinput-dev libts-dev libxcb-xinerama0-dev libxcb-xinerama0 gdbserver
sudo apt install libxcb-randr0-dev libxcb-xtest0-dev libxcb-shape0-dev libxcb-xkb-dev
```

### 9. Additional packages (Optional)

You can install these packages if you want additional multimedia and bluetooth capability with your QT binaries:

```sh
# additional (multimedia) packages
sudo apt install libjpeg-dev libpng-dev libtiff-dev
sudo apt install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt install libxvidcore-dev libx264-dev openjdk-8-jre-headless
# audio packages
sudo apt install libopenal-data libsndio7.0 libopenal1 libopenal-dev pulseaudio
# bluetooth packages
sudo apt install bluez-tools
sudo apt install libbluetooth-dev
# gstreamer (multimedia) packages
sudo apt install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
sudo apt install libgstreamer1.0-dev  libgstreamer-plugins-base1.0-dev
```

### 10. Create directory for QT Deployment

Now we create directories where the built QT Binaries will be deployed to your the Rasberry Pi, with following commands: 

```sh
sudo mkdir /usr/local/qt5.15
sudo chown -R pi:pi /usr/local/qt5.15
```

Also don't forget to setup Important Symlinks as follows: **(Important)**
  
 ```sh
 sudo ln -sf -r /usr/include/arm-linux-gnueabihf/asm /usr/include
 sudo ln -sf -r /usr/include/arm-linux-gnueabihf/gnu /usr/include
 sudo ln -sf -r /usr/include/arm-linux-gnueabihf/bits /usr/include
 sudo ln -sf -r /usr/include/arm-linux-gnueabihf/sys /usr/include
 sudo ln -sf -r /usr/include/arm-linux-gnueabihf/openssl /usr/include
 sudo ln -sf /usr/lib/arm-linux-gnueabihf/crtn.o /usr/lib/crtn.o
 sudo ln -sf /usr/lib/arm-linux-gnueabihf/crt1.o /usr/lib/crt1.o
 sudo ln -sf /usr/lib/arm-linux-gnueabihf/crti.o /usr/lib/crti.o
```

That's it for Raspberry Pi setup.

&nbsp;

&nbsp;

## Steps/Settings for Host Machine (PC/Laptop)

Now Raspberry Pi Side all setup, Let's focus on commands for our Host Machine, i.e. PC/Laptop, where you going to cross-compile the QT Binaries for your Raspberry Pi.

**Important:** Make sure your Raspberry Pi and this Host machine _(where you cross-compiling)_ MUST be on the SAME Network.

### 1. Update the Host Machine

First of all, Run the following commands to update your system and install important dependancies:

```sh
sudo apt update
sudo apt dist-upgrade
sudo apt install build-essential cmake unzip gfortran
sudo apt install gcc git bison python gperf pkg-config gdb-multiarch wget
sudo apt-get -y install gcc g++ gperf flex texinfo gawk bison openssl pigz libncurses-dev autoconf automake tar figlet
```

### 2. Setting up the directory structure

You can use these following commands to create "rpi-qt" to use as workspace for building QT Binaries:

```sh
sudo mkdir ~/rpi-qt
sudo mkdir ~/rpi-qt/build
sudo mkdir ~/rpi-qt/tools
sudo mkdir ~/rpi-qt/sysroot
sudo mkdir ~/rpi-qt/sysroot/usr
sudo mkdir ~/rpi-qt/sysroot/opt
sudo chown -R 1000:1000 ~/rpi-qt
cd ~/rpi-qt
```

**Note:** Ensure the last command should have changed your current directory to `~/rpi-qt`. If not, run the last line again to make sure you are inside it, as the next steps assume you're running your commands from this directory.

### 3. Download & Extract QT Source

#### A. Download Binary:

Now, we can download the Latest source files for QT LTS (i.e. `v5.15.2`) by running following Terminal command to download the source files:

```sh
sudo wget http://download.qt.io/archive/qt/5.15/5.15.2/single/qt-everywhere-src-5.15.2.tar.xz
```

**Note:** You can also [manually download file](http://download.qt.io/archive/qt/5.15/5.15.2/single/qt-everywhere-src-5.15.2.tar.xz) through browser, and place it in the `~/rpi-qt` directory.

#### B. Extract Binary:

Extract the downloaded `tar` file with the following command:

```sh
sudo tar xfv qt-everywhere-src-5.15.2.tar.xz 
```

### 4. Patching QT Source

We need to slightly modify the a mkspec file within the source files to allow us to use our cross compiler. We will copy an existing directory within the source files, and modify the name of the directory and the contents of the `qmake.conf` file within that directory to follow the name of our compiler. To do this, run the following two command:

```sh
cp -R qt-everywhere-src-5.15.2/qtbase/mkspecs/linux-arm-gnueabi-g++ qt-everywhere-src-5.15.2/qtbase/mkspecs/linux-arm-gnueabihf-g++

sed -i -e 's/arm-linux-gnueabi-/arm-linux-gnueabihf-/g' qt-everywhere-src-5.15.2/qtbase/mkspecs/linux-arm-gnueabihf-g++/qmake.conf
```

### 5. Download & Extract the Precompiled Cross-Compiler


Let's first change into `tools` directory for downloading our Precompiled Cross-compiler with the following command:

```sh
cd ~/rpi-qt/tools
```
**Note:** Ensure the last command should have changed your current directory to `~/rpi-qt/tools` now. If not, run it again.

#### A. Copy Binary URL:

Copy URL from one of following Precompiled Compressed Base-Toolchain _(for maximum compatability)_ based on your Raspberry Pi Variant and OS you installed on it, from below:

| Raspberry Pi Board | Stretch(32-bit) OS | Buster(32-bit) OS |
| ---------- | :--------: | :------: |
| Raspberry Pi - *Zero/W/WH & 1 Model A/B/A+/B+* | [6.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Stretch/GCC%206.3.0/Raspberry%20Pi%201%2C%20Zero/cross-gcc-6.3.0-pi_0-1.tar.gz) | [8.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%208.3.0/Raspberry%20Pi%201%2C%20Zero/cross-gcc-8.3.0-pi_0-1.tar.gz) |
| Raspberry Pi - *2 & 3 Model A/B* | [6.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Stretch/GCC%206.3.0/Raspberry%20Pi%202%2C%203/cross-gcc-6.3.0-pi_2-3.tar.gz) | [8.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%208.3.0/Raspberry%20Pi%202%2C%203/cross-gcc-8.3.0-pi_2-3.tar.gz) |
| Raspberry Pi - *3 & 4 Model A+/B+ & Compute 3/3-lite/3+* | [6.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Stretch/GCC%206.3.0/Raspberry%20Pi%203A%2B%2C%203B%2B%2C%204/cross-gcc-6.3.0-pi_3%2B.tar.gz) | [8.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%208.3.0/Raspberry%20Pi%203A%2B%2C%203B%2B%2C%204/cross-gcc-8.3.0-pi_3%2B.tar.gz) |

**Note:** You can also use the [latest cross-compiler binaries](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/) instead. But they are not tested.

#### B. Download Binary

After that, paste your copied URL and run the following command to download the Cross-compiler:

```sh
wget <Copied Binary URL goes here> #for e.g. => wget https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%208.3.0/Raspberry%20Pi%202%2C%203/cross-gcc-8.3.0-pi_2-3.tar.gz 
```

#### C. Extract Binary:

Once it is downloaded, we can extract it using the following command:

```sh
tar xf cross-gcc-*.tar.gz
```

### 6. Sync Raspberry Pi sysroot (Most Important)

First, let's move back into the rpi folder as needed for the next sections:

```sh
cd ~/rpi-qt
```

Now, we need to sync up our sysroot folder with the system files from the Raspberry Pi. We will be using `rsync` that let us sync _(i.e. copy)_ files from the Raspberry Pi with appropriate permission onto your Host Machine, potentially saving you alot of time.

To do this, enter the following commands one by one into your terminal _(change `192.168.1.47` with the IP address of your Raspberry Pi present on the same network)_:

- **Command 1:** `rsync -avz --rsync-path="sudo rsync" --delete pi@192.168.1.47:/lib sysroot`
- **Command 2:** `rsync -avz --rsync-path="sudo rsync" --delete pi@192.168.1.47:/usr/include sysroot/usr`
- **Command 3:** `rsync -avz --rsync-path="sudo rsync" --delete pi@192.168.1.47:/usr/lib sysroot/usr`
- **Command 4:** `rsync -avz --rsync-path="sudo rsync" --delete pi@192.168.1.47:/opt/vc sysroot/opt`

**Note:** Double check after each of the above commands that all the files have been copied to `~/rpi-qt/sysroot` folder. There will be an information message if there were any issues.

### 7. Fix symbolic links

The files we copied in the previous step still have symbolic links pointing to the file system on the Raspberry Pi. We need to alter this so that they become relative links from the new sysroot directory on the host machine. We can do this with a python script, which we can download as follows:

```sh
wget https://raw.githubusercontent.com/abhiTronix/rpi_rootfs/master/scripts/sysroot-relativelinks.py
```

Once it is downloaded, you just need to make it executable and run it, using the following commands:

```sh
sudo chmod +x sysroot-relativelinks.py
./sysroot-relativelinks.py sysroot
```

### 8. Configure QT Build

Let's move into the `build` directory for further steps, as we don't want to build within that source directory as its crowded, so we will access it from within this this directory:

```sh
cd ~/rpi-qt/build
```

Finally, Now we can configure our QT build. We need to run the `configure` script inside QT source to configure our build. Run following command to configure the build, including all the necessary options:

```sh
CROSS_COMPILER_LOCATION=$HOME/rpi-qt/tools/cross-pi-gcc-*

../qt-everywhere-src-5.15.2/configure -release -opengl es2  -eglfs -device linux-rasp-pi4-v3d-g++ -device-option CROSS_COMPILE=$(echo $CROSS_COMPILER_LOCATION)/bin/arm-linux-gnueabihf- -sysroot ~/rpi-qt/sysroot/ -prefix /usr/local/qt5.15 -extprefix ~/rpi-qt/qt5.15 -opensource -confirm-license -skip qtscript -skip qtwayland -skip qtwebengine -nomake tests -make libs -pkg-config -no-use-gold-linker -v -recheck -L$HOME/rpi-qt/sysroot/usr/lib/arm-linux-gnueabihf -I$HOME/rpi-qt/sysroot/usr/include/arm-linux-gnueabihf
```

The configure script may take a few minutes to complete.

#### 8.1 Check Configure Output: 

Once it is completed you should get a summary of what has been configured. Make sure the following options appear:

```sh
Configure summary:

Building on: linux-g++ (x86_64, CPU features: mmx sse sse2)
Building for: devices/linux-rasp-pi4-v3d-g++ (arm, CPU features: neon)
Target compiler: gcc 8.3.0
Configuration: cross_compile compile_examples enable_new_dtags largefile neon precompile_header shared shared rpath release c++11 c++14 c++17 c++1z concurrent dbus reduce_exports stl
```
<details>
  <summary><b>CLICK TO SEE FULL OUTPUT </b><i>(<b>Note:</b> These configure output value may differ based on dependencies you install)</i></summary>

```sh
Build options:
  Mode ................................... release
  Optimize release build for size ........ no
  Building shared libraries .............. yes
  Using C standard ....................... C11
  Using C++ standard ..................... C++17
  Using ccache ........................... no
  Using new DTAGS ........................ yes
  Relocatable ............................ yes
  Using precompiled headers .............. yes
  Using LTCG ............................. no
  Target compiler supports:
    NEON ................................. yes
  Build parts ............................ libs
Qt modules and options:
  Qt Concurrent .......................... yes
  Qt D-Bus ............................... yes
  Qt D-Bus directly linked to libdbus .... yes
  Qt Gui ................................. yes
  Qt Network ............................. yes
  Qt Sql ................................. yes
  Qt Testlib ............................. yes
  Qt Widgets ............................. yes
  Qt Xml ................................. yes
Support enabled for:
  Using pkg-config ....................... yes
  udev ................................... yes
  Using system zlib ...................... yes
  Zstandard support ...................... no
Qt Core:
  DoubleConversion ....................... yes
    Using system DoubleConversion ........ yes
  GLib ................................... yes
  iconv .................................. no
  ICU .................................... yes
  Built-in copy of the MIME database ..... yes
  Tracing backend ........................ <none>
  Logging backends:
    journald ............................. no
    syslog ............................... no
    slog2 ................................ no
  PCRE2 .................................. yes
    Using system PCRE2 ................... yes
Qt Network:
  getifaddrs() ........................... yes
  IPv6 ifname ............................ yes
  libproxy ............................... no
  Linux AF_NETLINK ....................... yes
  OpenSSL ................................ yes
    Qt directly linked to OpenSSL ........ no
  OpenSSL 1.1 ............................ yes
  DTLS ................................... yes
  OCSP-stapling .......................... yes
  SCTP ................................... no
  Use system proxies ..................... yes
  GSSAPI ................................. no
Qt Gui:
  Accessibility .......................... yes
  FreeType ............................... yes
    Using system FreeType ................ yes
  HarfBuzz ............................... yes
    Using system HarfBuzz ................ yes
  Fontconfig ............................. yes
  Image formats:
    GIF .................................. yes
    ICO .................................. yes
    JPEG ................................. yes
      Using system libjpeg ............... yes
    PNG .................................. yes
      Using system libpng ................ yes
  Text formats:
    HtmlParser ........................... yes
    CssParser ............................ yes
    OdfWriter ............................ yes
    MarkdownReader ....................... yes
      Using system libmd4c ............... no
    MarkdownWriter ....................... yes
  EGL .................................... yes
  OpenVG ................................. no
  OpenGL:
    Desktop OpenGL ....................... no
    OpenGL ES 2.0 ........................ yes
    OpenGL ES 3.0 ........................ yes
    OpenGL ES 3.1 ........................ yes
    OpenGL ES 3.2 ........................ yes
  Vulkan ................................. yes
  Session Management ..................... yes
Features used by QPA backends:
  evdev .................................. yes
  libinput ............................... yes
  INTEGRITY HID .......................... no
  mtdev .................................. yes
  tslib .................................. yes
  xkbcommon .............................. yes
  X11 specific:
    XLib ................................. yes
    XCB Xlib ............................. yes
    EGL on X11 ........................... yes
    xkbcommon-x11 ........................ yes
QPA backends:
  DirectFB ............................... no
  EGLFS .................................. yes
  EGLFS details:
    EGLFS OpenWFD ........................ no
    EGLFS i.Mx6 .......................... no
    EGLFS i.Mx6 Wayland .................. no
    EGLFS RCAR ........................... no
    EGLFS EGLDevice ...................... yes
    EGLFS GBM ............................ yes
    EGLFS VSP2 ........................... no
    EGLFS Mali ........................... no
    EGLFS Raspberry Pi ................... no
    EGLFS X11 ............................ yes
  LinuxFB ................................ yes
  VNC .................................... yes
Qt Sql:
  SQL item models ........................ yes
Qt Widgets:
  GTK+ ................................... no
  Styles ................................. Fusion Windows
Qt PrintSupport:
  CUPS ................................... yes
Qt Sql Drivers:
  DB2 (IBM) .............................. no
  InterBase .............................. no
  MySql .................................. no
  OCI (Oracle) ........................... no
  ODBC ................................... yes
  PostgreSQL ............................. yes
  SQLite2 ................................ no
  SQLite ................................. yes
    Using system provided SQLite ......... no
  TDS (Sybase) ........................... yes
Qt Testlib:
  Tester for item models ................. yes
Serial Port:
  ntddmodm ............................... no
Qt SerialBus:
  Socket CAN ............................. yes
  Socket CAN FD .......................... yes
  SerialPort Support ..................... yes
Further Image Formats:
  JasPer ................................. no
  MNG .................................... no
  TIFF ................................... yes
    Using system libtiff ................. yes
  WEBP ................................... yes
    Using system libwebp ................. yes
Qt QML:
  QML network support .................... yes
  QML debugging and profiling support .... yes
  QML just-in-time compiler .............. yes
  QML sequence object .................... yes
  QML XML http request ................... yes
  QML Locale ............................. yes
Qt QML Models:
  QML list model ......................... yes
  QML delegate model ..................... yes
Qt Quick:
  Direct3D 12 ............................ no
  AnimatedImage item ..................... yes
  Canvas item ............................ yes
  Support for Qt Quick Designer .......... yes
  Flipable item .......................... yes
  GridView item .......................... yes
  ListView item .......................... yes
  TableView item ......................... yes
  Path support ........................... yes
  PathView item .......................... yes
  Positioner items ....................... yes
  Repeater item .......................... yes
  ShaderEffect item ...................... yes
  Sprite item ............................ yes
QtQuick3D:
  Assimp ................................. yes
  System Assimp .......................... no
Qt Scxml:
  ECMAScript data model for QtScxml ...... yes
Qt Gamepad:
  SDL2 ................................... no
Qt 3D:
  Assimp ................................. yes
  System Assimp .......................... no
  Output Qt3D GL traces .................. no
  Use SSE2 instructions .................. no
  Use AVX2 instructions .................. no
  Aspects:
    Render aspect ........................ yes
    Input aspect ......................... yes
    Logic aspect ......................... yes
    Animation aspect ..................... yes
    Extras aspect ........................ yes
Qt 3D Renderers:
  OpenGL Renderer ........................ yes
  RHI Renderer ........................... no
Qt 3D GeometryLoaders:
  Autodesk FBX ........................... no
Qt Bluetooth:
  BlueZ .................................. yes
  BlueZ Low Energy ....................... yes
  Linux Crypto API ....................... yes
  Native Win32 Bluetooth ................. no
  WinRT Bluetooth API (desktop & UWP) .... no
  WinRT advanced bluetooth low energy API (desktop & UWP) . no
Qt Sensors:
  sensorfw ............................... no
Qt Quick Controls 2:
  Styles ................................. Default Fusion Imagine Material Universal
Qt Quick Templates 2:
  Hover support .......................... yes
  Multi-touch support .................... yes
Qt Positioning:
  Gypsy GPS Daemon ....................... no
  WinRT Geolocation API .................. no
Qt Location:
  Qt.labs.location experimental QML plugin . yes
  Geoservice plugins:
    OpenStreetMap ........................ yes
    HERE ................................. yes
    Esri ................................. yes
    Mapbox ............................... yes
    MapboxGL ............................. yes
    Itemsoverlay ......................... yes
QtXmlPatterns:
  XML schema support ..................... yes
Qt Multimedia:
  ALSA ................................... yes
  GStreamer 1.0 .......................... yes
  GStreamer 0.10 ......................... no
  Video for Linux ........................ yes
  OpenAL ................................. yes
  PulseAudio ............................. no
  Resource Policy (libresourceqt5) ....... no
  Windows Audio Services ................. no
  DirectShow ............................. no
  Windows Media Foundation ............... no
Qt TextToSpeech:
  Flite .................................. no
  Flite with ALSA ........................ no
  Speech Dispatcher ...................... no
Qt Tools:
  Qt Assistant ........................... yes
  Qt Designer ............................ yes
  Qt Distance Field Generator ............ yes
  kmap2qmap .............................. yes
  Qt Linguist ............................ yes
  Mac Deployment Tool .................... no
  makeqpf ................................ yes
  pixeltool .............................. yes
  qdbus .................................. yes
  qev .................................... yes
  Qt Attributions Scanner ................ yes
  qtdiag ................................. yes
  qtpaths ................................ yes
  qtplugininfo ........................... yes
  Windows deployment tool ................ no
  WinRT Runner Tool ...................... no
Qt Tools:
  QDoc ................................... no
```
</details>


#### 8.2 Check if EGLFS enabled: 

```sh
QPA backends:
  EGLFS .................................. yes	[SHOULD BE YES]
  EGLFS details:
    EGLFS OpenWFD ........................ no
    EGLFS i.Mx6 .......................... no
    EGLFS i.Mx6 Wayland .................. no
    EGLFS RCAR ........................... no
    EGLFS EGLDevice ...................... yes	[SHOULD BE YES]
    EGLFS GBM ............................ yes
    EGLFS VSP2 ........................... no
    EGLFS Mali ........................... no
    EGLFS Raspberry Pi ................... no	[SHOULD BE NO]
    EGLFS X11 ............................ yes
```

If the your configuration summary doesn't have the EGLFS features set to what's shown above, something has probably gone wrong. You can look at the config.log file in the build directory to try and diagnose what the issue might be.

<details>
  <summary><b>How to Reconfigure? </b><i>If something went wrong!</i></summary>

If you have any issues, before running above `configure` command again, delete the current contents with the following command _(save a copy of config.log first if you need to)_:

```sh
sudo rm -rf *
```
</details>

<br>

If all looks good and all libraries you need have been installed we can continue to the next section


### 9. Build QT Source

Our build has been configured now, and it is time to actually build the source files, and run the following command:

**Important:** Ensure you are still in the `~/rpi-qt/build` directory

```sh
make -j$(nproc)
```

**Note:** `-j$(nproc)` option indicates that the job should be spread into mutliple threads and run in parallel on available cores.

☕️ This process will take some time!

### 10. Install QT Source

Once it is completed, we can install the built package using the following command:

```sh
make install
```

This should install the files in the correct directories


### 11. Deploy QT to Raspberry Pi

First move back into the rpi folder using the following command:

```sh
cd ~/rpi-qt
```

Now, We can now deploy built QT Binaries _(contained in `qt5.15` folder in `~/rpi-qt` directory)_ back to our Raspberry Pi, again using `rsync` command. Just run the following command _(change `192.168.1.47` with the IP address of your Raspberry Pi present on the same network)_:

```sh
rsync -avz --rsync-path="sudo rsync" qt5.15 pi@192.168.1.47:/usr/local
```

&nbsp;

&nbsp;


## Final Step for Target Machine (Raspberry Pi):

#### Update linker on Raspberry Pi

Enter the following command to update the device letting the linker to find the new QT binary files:

```sh
echo /usr/local/qt5.15/lib | sudo tee /etc/ld.so.conf.d/qt5.15.conf
sudo ldconfig
```

**For Raspberry Pi 2:** If you're facing issues with running the example, try to use `00-qt5pi.conf` instead of `qt5pi.conf`, in the above command.



🍻 _That should be it! You have now succesfully installed latest QT 5.15.2 on the Raspberry Pi._


&nbsp; 

&nbsp;

# Supporting this Project

**If these binaries helped you big time, please consider supporting it through any size donations.:heart:.**

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?logo=paypal&style=for-the-badge)](https://paypal.me/AbhiTronix)

[![ko-fi][kofi-badge]][kofi]

***Also please share your [**thoughts**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/reviews) or just drop a [star :star:](https://github.com/abhiTronix/raspberry-pi-cross-compilers/stargazers).***

&nbsp;

&nbsp;

# Citing

**Here is a Bibtex entry you can use to cite this project in a publication:**

```BibTeX
@misc{raspberry-pi-cross-compilers,
    Title = {Raspberry Pi Toolchains},
    Author = {Abhishek Thakur},
    howpublished = {\url{https://github.com/abhiTronix/raspberry-pi-cross-compilers}},
    year = {2020}  
  }
```

&nbsp;

&nbsp;


# Copyright License

**Copyright © 2020 abhiTronix**

This Project source-code and its precompiled binaries are licensed under the [**GPL-3.0**][license] license.


&nbsp; 

&nbsp;

# Acknowledgments

- This document is insipired by [Qt-Instructions for Raspberry Pi 4](https://github.com/UvinduW/Cross-Compiling-Qt-for-Raspberry-Pi-4). Huge thanks to @UvinduW.
- Thank you [QT framework](https://www.qt.io/), for providing the source files

[downloads]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files
[license]:https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE
[kofi]:https://ko-fi.com/W7W8WTYO
[gnu]:https://gcc.gnu.org/
[pi-project]:https://www.raspberrypi.org/
[sf-project]:https://sourceforge.net
[git-action]:https://github.com/features/actions
[tar]:https://www.gnu.org/software/tar/
[pigz]:https://zlib.net/pigz/
[license-badge]:https://img.shields.io/github/license/abhiTronix/raspberry-pi-cross-compilers.svg?style=flat&logo=gnu
[kofi-badge]:https://www.ko-fi.com/img/githubbutton_sm.svg
