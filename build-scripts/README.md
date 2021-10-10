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

This project now provides user-friendly open-sourced bash build-scripts that auto-generates Compressed Cross & Native GCC ARM/ARM64 Toolchain binaries targeting Raspberry Pi 32-bit & 64-bit OSes. If you need additional language support or need to compile another suitable GCC version toolchains for your Raspberry Pi, then you can manually compile any GCC toolchains by running suitable build-scripts yourself through your system terminal.

### RTBuilder_32b: Raspberry Pi Toolchains Builder 32-bit

* This script auto-generates Compressed Cross & Native GCC ARM Toolchain binaries targeting Raspberry Pi 32-bit Stretch(Debian 9) & Buster(Debian 10) OSes.

### RTBuilder_64b: Raspberry Pi Toolchains Builder 64-bit

* This script auto-generates Compressed Cross & Native GCC ARM64 Toolchain binaries targeting any Raspberry Pi 64-bit Stretch(Debian 9) & Buster(Debian 10) OSes.



&nbsp;

## Usage

You can run these bash scripts to manually compile any GCC toolchains version through your system terminal:


-----

**Important :warning:**

* For downloading artifacts these build-scripts requires an active Internet connection.

* These build-scripts supports Linux-machines only.

-----


1. **Update environment & Install prerequisites:**

    ```shellsession
    # update your system
    sudo apt update && sudo apt dist-upgrade

    # install prerequisites
    sudo apt-get -y install gcc g++ gperf flex texinfo gawk gfortran texinfo bison \
        build-essential openssl unzip wget git pigz \
        libncurses-dev autoconf automake tar figlet
    ```

    **Optional:** Install `ccache` for speeding up build time:
    
    ```shellsession
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

2. **Clone this repository:**

    ```shellsession
    # clone repository
    git clone https://github.com/abhiTronix/raspberry-pi-cross-compilers.git
   
    # call directory
    cd raspberry-pi-cross-compilers/build-scripts

    ```

3. **Run scripts:**

    ### [`RTBuilder_32b`](#): Raspberry Pi Toolchains Builder 32-bit


    * **Usage parameters:** This script requires a few command-line parameters, just run `./RTBuilder_32b` on terminal:
  
        ```shellsession

        Usage: ./RTBuilder_32b -g [GCC version] -r [Target Pi type] -o [Target Pi OS type] -V
            -g GCC version you want to compile?: (7.1.0|7.2.0|7.3.0|7.4.0|7.5.0|8.1.0|8.2.0|8.3.0|9.1.0|9.2.0|9.4.0|10.1.0|10.3.0)
            -r What's yours Target Raspberry Pi type?: (0-1|2-3|3+)
            -o What's yours Target Raspberry Pi OS type?: (stretch|buster)
            -V Verbose output for debugging?

        ```

    * **Usage:** Just pass _targeted [GCC version](#supported-gcc-versions)_ to `-g` parameter,  _targeted raspberry pi type_ to `-r` parameter, and _targeted raspberry pi OS type_ to `-o` parameter of this script:

        ***:warning: You must NOT compile GCC version [less than GCC 8.3.0 for Buster OS](#supported-gcc-versions), otherwise script will automatically switch to build for Stretch OS.***

        ```shellsession

        chmod +x RTBuilder_32b
        ./RTBuilder_32b -g "9.4.0" -r "2-3" -o "buster" -V

        ```

        This will take some time _(approximately 55mins on 8cores)_, so grab a coffee :coffee:. On returning you will find `native-gcc-{GCC_VERSION}-pi_{PI_TYPE}.tar.gz` and `cross-gcc-{GCC_VERSION}-pi_{PI_TYPE}.tar.gz` at your `$HOME` directory.


    &emsp;


    ### [`RTBuilder_64b`](#): Raspberry Pi Toolchains Builder 64-bit


    * **Usage parameters:** This script requires few command-line parameters, just run `./RTBuilder_64b`:
      
        ```shellsession

        Usage: ./RTBuilder_64b -g [GCC version] -o [Target Pi OS type] -V
            -g GCC version you want to compile?: (7.1.0|7.2.0|7.3.0|7.4.0|7.5.0|8.1.0|8.2.0|8.3.0|9.1.0|9.2.0|9.4.0|10.1.0|10.3.0)
            -o What's yours Target Raspberry Pi OS type?: (stretch|buster)
            -V Verbose output for debugging?

        ``` 


    * **Usage:** Just pass _targeted [GCC version](#supported-gcc-versions)_ to `-g` parameter of this script:

        ```shellsession

        chmod +x RTBuilder_64b
        ./RTBuilder_64b -g "9.4.0" -V

        ```

        This will take some time _(approximately 55mins on 8cores)_, so grab a coffee :coffee:. On returning you will find `native-gcc-{GCC_VERSION}-pi_64.tar.gz` and `cross-gcc-{GCC_VERSION}-pi_64.tar.gz` at your `$HOME` directory.

&nbsp;


## Additional Environment Variables:

These scripts provide a few additional environment variables to tweak Toolchain Builds:

* `BUILDDIR`: To change build directory. By default it is set to temp(`/tmp`) directory. Its usage is as follows:

    ***:warning: Make sure assigned directory has read/write permission.***

    ```shellsession
    BUILDDIR="/home/foo/foo1"
    ``` 
* `LANGUAGES`: To change supported programming languages for your Toolchains. Its default value is `c,c++,fortran`. Its usage is as follows:
    
    ***:warning: Make sure to install additional dependency manually according to your assigned supported languages.*** 

    ```shellsession
    LANGUAGES="c,go,brig,d"
    ```

&nbsp;

## Supported GCC Versions:

These scripts only support newer GCC versions, those are as follows:

| GCC Version | Stretch OS build (32/64-bit) | Buster OS build (32/64-bit) |
| :-----------: | :----------: | :---------: |
| 7.1.0 | supported | x |
| 7.2.0 | supported | x |
| 7.3.0 | supported | x |
| 7.4.0 | supported | x |
| 7.5.0 | supported | x |
| 8.1.0 | supported | x |
| 8.2.0 | supported | x |
| 8.3.0 | supported | supported |
| 8.4.0 | supported | supported |
| 9.1.0 | supported | supported |
| 9.2.0 | supported | supported |
| 9.4.0 | supported | supported |
| 10.1.0 | supported | supported |
| 10.3.0 | supported | supported |

&nbsp;

## Supporting this Project

**If these binaries helped you big time, please consider supporting it through any size donations.**

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?logo=paypal&style=for-the-badge)](https://paypal.me/AbhiTronix)

***You can also share your [**thoughts**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/reviews) or just drop a [star](https://github.com/abhiTronix/raspberry-pi-cross-compilers/stargazers).***

&nbsp;


## Citing

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


## License

**Copyright © 2020 abhiTronix**

This Project source-code and its precompiled binaries are licensed under the [**GPLv3**](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE) license.
