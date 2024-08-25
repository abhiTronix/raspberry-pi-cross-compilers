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

# <img alt="Banner" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc/build-script.png">

&nbsp;

> This project now provides user-friendly open-sourced bash build-scripts to automatically generate compressed cross and native GCC ARM/ARM64 toolchain binaries for Raspberry Pi 32-bit and 64-bit operating. If you need additional language support or want to compile other suitable GCC version toolchains for your Raspberry Pi, you can manually compile any GCC toolchains by running the appropriate build scripts through your system terminal.

### `RTBuilder_32b`: Raspberry Pi Toolchains 32-bit Builder Build Script

* This script auto-generates Compressed Cross & Native GCC ARM Toolchain binaries targeting Raspberry Pi 32-bit Buster(Debian 10), Bullseye(Debian 11), and Bookworm(Debian 12) OSes.

### `RTBuilder_64b`: Raspberry Pi Toolchains 64-bit Builder Build Script

* This script auto-generates Compressed Cross & Native GCC ARM Toolchain binaries targeting Raspberry Pi 64-bit Buster(Debian 10), Bullseye(Debian 11), and Bookworm(Debian 12) OSes.

&nbsp;

### Features

- Generates toolchains for Raspberry Pi OS Buster (Debian 10), Bullseye (Debian 11), and Bookworm (Debian 12)
- Supports both 32-bit and 64-bit architectures
- Customizable GCC versions and target Raspberry Pi models
- Option for verbose output for debugging

&nbsp;

## Usage

You can run these bash scripts to manually compile any GCC toolchains version through your system terminal:

### 0. Prerequisites :warning:

- [x] Linux-OS based machine
- [x] Active internet connection

### 1. Update environment & Install prerequisites 🔧

```sh
# update your system
sudo apt update && sudo apt dist-upgrade

# install prerequisites
sudo apt-get -y install gcc g++ gperf flex texinfo gawk gfortran texinfo bison \
    build-essential openssl unzip wget git pigz libgmp-dev \
    libncurses-dev autoconf automake tar figlet libmpfr-dev 
```

- **Optional:** Install `ccache` for speeding up build time: ⚡️
    
    ```sh
    # Install package
    sudo apt install -y ccache

    # Update symlinks
    sudo /usr/sbin/update-ccache-symlinks

    # Perpend ccache into the PATH
    echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc

    # Added related env variables
    export CCACHE_COMPRESS=1
    export CCACHE_DIR=$HOME/.ccache

    # Source .bashrc to test the new PATH
    source ~/.bashrc && echo $PATH

    ```

&emsp;

### 2. Clone this repository 📦️

```sh
# clone repository
git clone https://github.com/abhiTronix/raspberry-pi-cross-compilers.git

# call directory
cd raspberry-pi-cross-compilers/build-scripts
```

&emsp;

### 3. Run scripts 📝

#### [`RTBuilder_32b`](RTBuilder_32b): Raspberry Pi Toolchains 32-bit Builder Build Script


* **Usage parameters:** This script requires a few command-line parameters. To view them, simply run `./RTBuilder_32b` on terminal:

    ```sh
    Usage: ./RTBuilder_32b -g [GCC version] -r [Target Pi type] -o [Target Pi OS type] -V
            -g GCC version you want to compile?: (8.3.0|8.4.0|9.1.0|9.2.0|9.3.0|9.4.0|10.1.0|10.2.0|10.3.0|11.1.0|11.2.0|11.3.0|12.1.0|12.2.0|12.3.0|12.4.0|13.1.0|13.2.0|13.3.0|14.1.0|14.2.0)
            -r What's yours Target Raspberry Pi type?: (0-1|2-3|3+)
            -o What's yours Target Raspberry Pi OS type?: (buster|bullseye|bookworm)
            -V Verbose output for debugging?
    ```

* **Usage:** Just pass _targeted GCC version to `-g` parameter, targeted raspberry pi type to `-r` parameter, and targeted raspberry pi OS type to `-o` parameter of this script:


    ***:warning: You must NOT compile a GCC version other than the [Supported GCC Versions](5-supported-gcc-versions-), otherwise the script will exit with an error.***

    ```sh
    chmod +x RTBuilder_32b
    ./RTBuilder_32b -g "14.2.0" -r "3+" -o "bookworm"
    ```

    This process will take some time (approximately 55 minutes on 8 cores), so grab a coffee :coffee:. When you return, you will find `native-gcc-{GCC_VERSION}-pi_{PI_TYPE}.tar.gz` and `cross-gcc-{GCC_VERSION}-pi_{PI_TYPE}.tar.gz` in your $HOME directory.


&emsp;


### [`RTBuilder_64b`](RTBuilder_64b): Raspberry Pi Toolchains 64-bit Builder Build Script


* **Usage parameters:** This script requires a few command-line parameters. To view them, simply run `./RTBuilder_64b` on terminal:
    
    ```sh

    Usage: ./RTBuilder_64b -g [GCC version] -o [Target Pi OS type] -V
            -g GCC version you want to compile?: (8.3.0|8.4.0|9.1.0|9.2.0|9.3.0|9.4.0|10.1.0|10.2.0|10.3.0|11.1.0|11.2.0|11.3.0|12.1.0|12.2.0|12.3.0|12.4.0|13.1.0|13.2.0|13.3.0|14.1.0|14.2.0)
            -o What's yours Target Raspberry Pi OS type?: (buster|bullseye|bookworm)
            -V Verbose output for debugging?

    ``` 


* **Usage:** Just pass targeted GCC version to `-g` parameter and targeted raspberry pi OS type to `-o` parameter of this script:

    ***:warning: You must NOT compile a GCC version other than the [Supported GCC Versions](5-supported-gcc-versions-), otherwise the script will exit with an error.***

    ```sh
    chmod +x RTBuilder_64b
    ./RTBuilder_64b -g "14.2.0" -o "bookworm"
    ```

    This process will take some time (approximately 55 minutes on 8 cores), so grab a coffee :coffee:. When you return, you will find `native-gcc-{GCC_VERSION}-pi_64.tar.gz` and `cross-gcc-{GCC_VERSION}-pi_64.tar`.gz in your $HOME directory.

&emsp;

### 4. Additional Environment Variables 🚩

These scripts provide a few additional environment variables to tweak Toolchain Builds:

* `BUILDDIR`: To change build directory. By default it is set to temp(`/tmp`) directory. Its usage is as follows:

    ***:warning: Make sure assigned directory has read/write permission.***

    ```sh
    BUILDDIR="/home/foo/foo1"
    ``` 
* `LANGUAGES`: To change supported programming languages for your Toolchains. Its default value is `c,c++,fortran`. Its usage is as follows:
    
    ***:warning: Make sure to install additional dependency manually according to your assigned supported languages.*** 

    ```sh
    LANGUAGES="c,go,brig,d"
    ```

&emsp;

### 5. Supported GCC Versions 🔖

These scripts only support newer GCC versions, those are as follows:

| GCC Version | Buster OS build (32/64-bit) | Bullseye OS  (32/64-bit) | Bookworm OS build (32/64-bit)  |
| :-----------: | :----------: | :---------: | :---------: |
| 8.3.0 | supported _(not native)_ | x | x |
| 8.4.0 | supported | x | x |
| 9.1.0 | supported | x | x |
| 9.2.0 | supported | x | x |
| 9.3.0 | supported | x | x |
| 9.4.0 | supported | x | x |
| 10.1.0 | supported | x | x |
| 10.2.1 | supported | supported _(not native)_ |x |
| 10.3.0 | supported | supported |x |
| 11.1.0 | supported | supported |x |
| 11.2.0 | supported | supported |x |
| 11.3.0 | supported | supported |x |
| 12.1.0 | supported | supported |x |
| 12.2.0 | supported | supported | supported _(not native)_ |
| 12.3.0 | supported | supported | supported |
| 12.4.0 | supported | supported | supported |
| 13.1.0 | supported | supported | supported |
| 13.2.0 | supported | supported | supported |
| 13.3.0 | supported | supported | supported |
| 14.1.0 | supported | supported | supported |
| 14.2.0 | supported | supported | supported |

&nbsp;

## Supporting this Project 💚

**If these binaries helped you big time, please consider supporting it through any size donations.**

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?logo=paypal&style=for-the-badge)](https://paypal.me/AbhiTronix)

***You can also share your [thoughts](https://sourceforge.net/projects/raspberry-pi-cross-compilers/reviews) or just drop a [:star2:](https://github.com/abhiTronix/raspberry-pi-cross-compilers/stargazers).***

&nbsp;


## Citing 💬

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


## License 📄

**Copyright © 2020 abhiTronix**

This Project source-code and its precompiled binaries are released under the [**GPLv3**](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE) license.