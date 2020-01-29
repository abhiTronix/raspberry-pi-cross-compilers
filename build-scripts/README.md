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


<table align="center"><tr><td align="center" width="100%">
<img alt="GCC Pi Logo" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/logo/GCCz2.jpg">

[![Build Status](https://img.shields.io/travis/abhiTronix/raspberry-pi-cross-compilers.svg?style=for-the-badge&logo=travis)](https://travis-ci.org/abhiTronix/raspberry-pi-cross-compilers)
[![License](https://img.shields.io/github/license/abhiTronix/raspberry-pi-cross-compilers.svg?style=for-the-badge)](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE)
[![Downloads](https://img.shields.io/sourceforge/dt/raspberry-pi-cross-compilers?style=for-the-badge&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAMAAAAKE/YAAAAAYFBMVEVHcEz/OwDzfCD0fCDzfCDzfR/zfCD9fiHzfCD0fCDzfCD0fSDzeyDzfB/zfCDzfCDzfCD/WgPzfCDxfx7wfCH0fCDzfCDzfCDzfB/zfCDzfCD0fCDzfCDyfCD1fCDzfCAr6LXeAAAAH3RSTlMAAXuI/oNpCPhIlYq2oYC37wN2IRDO5sI926lfUycyJgWG0gAABKZJREFUeAHt3P9Os0gUxvEzOhZobUvL71r73P9dbkzfJcW3wPCcnRzN8v1b48cjhWEmUdbW1tbW1tbWPrr8WVUrP7cXjJSXv88MZL/Q7IvfZ8aL/MzOGG+3mlfzal7N/0vzpq43Yt5hkfkN8Dj8OvNXh19mJtTmZnM1YTZXE2ZzNWE2VxNmczVhNlcTZls1YT4Tr2HWZpfDUk2Yp9E4/FDz9De8/FCzuK2BmjBbqgmzvZow26t5M6+2N9ur3wgzobYw82p7860g1MbmA9JMvneaVJubpUKvNpr1tPlVntQBSFti1kbmHo2cuK4NzVIDgK+Sv9X7KbWpucS9vRBqI7Nrcc9fCbWFeXBAV5eE2sbsKvzJb4VQW5jlhj7fEmoLszyYfOUItYH50+Ohq8RX683yjscqF1+tN18xLBOlOr75VNYY1ohOHd8s7h3fu8nTTryaN4ceLPqtqNTxzZnHX+WJRh3fXOR40lV4dXxzUuFZF6HV8c1ywbN8mtDq+OYzRroKqY5vbj1G2gqrjm0uaozVCa2Oa3ZHjPfJq2Oa5YyJNsKrI875M8V4fi/R1LxZXIOpOtGoI5nlA5P5sv/COluq9i9xzGWO6Vr50wbdiZs1b57eMwj4JLbAh3Cz5s3EoAePl9Kjc/rrWm+WM2byzePe5FXUs9abXYe5avm3I9Do7yF6c4vZfPKwKeILRn2WQa+0uXfMVjz+sIOo1TvludUpx3yt3HMbAJ3Tqs8YrzrJfDcE1N/nNv2voFFPzelN5nMvmM+fB8/OnSjVuXY52yCgtwG6EqX6gPEaJ/PVCGg7QPtSRnMharenFsJ9JUK6DK5pZKKc9dQ5mZ9XtwjpOFymHGQiF1/9gZCa4Q32ImI66/MitLvcDwhkMne6YLyNXv2GkHpl169FJitrjPehVbvdInTi8VUqc+0Cll+8eo+Qum8f25PmvSIVQs2je0spMx0nb/qEmkDncq8JnPQV470nolXvMN3gL1p4fOVTmS5LQ8y8+oCgisHVUevMjJp4uPhMRFxS416jN6vULYLaDd6R9nqzSl16hFSXj8dIZ71Zp64QVJMdeg1atXnYUrXbYnFpojPrZ33F4t6VZv2skxxL+9Ca9bPeY2FpqTXrZ33DwrZ6s37WDRblP/Vm/awzLOoSwUzM+ogFpZ+sWT/ribOt6XZRzMSsXxBcl0QxE7M+NQgsvfHmoF7D1UWNsDaMOZb6lvMXNG/WqtsQ9dYRZmP1jjHHVRdVwM46YY6qduUeE3UtY46o7gk1RvK7hDTHVyebp2x/4Z7d0dU9u8K36h27rouv7vvcvPfzzqvXNhHSHF89rLxl12vWFk793s33NqkmIswGasJspObNdmrebKfmzXZq3myn5s02at58JM282tbMq+3NvJo326l5s52aN9upebOdmjdbqlmzrZozG6uvjNla3RFmc3XqCLO1emttJv7JUZMQZiM1b7ZT82Z7dVMSZiM1b7ZR25uJzuirCLOVmjdbqlmzrZozW6tTHI3NRGUp1mYi5+zNfKt5Na9m+/g9c8tcmVubiTJzM1HhKbP9QuRZfm9vnqgsnvUfk9fW1tbW1tb+AZhQydEXZaX4AAAAAElFTkSuQmCC)](https://sourceforge.net/projects/raspberry-pi-cross-compilers)

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/W7W8WTYO)

<a align="center"> **Latest automated GCC Cross Compiler & Native (ARM & ARM64) build-scripts and precompiled standalone toolchains for Raspberry Pi**</a>
</td></tr></table>

&nbsp;

## Build Scripts

_These are user-friendly scripts that auto-generates Compressed Cross & Native GCC ARM/ARM64 Toolchain binaries targeting Raspberry Pi 32-bit Stretch(Debian 9) & Buster(Debian 10) and any Raspberry Pi 64-bit(like Pi64) OSes. These build-scripts are used by Automated CLI environments to generate various precompiled GCC ARM/ARM64 toolchains. But you can also use these scripts to manually compile any latest GCC toolchains yourself through your terminal._

### `RTBuilder_32b`: Raspberry Pi Toolchains Builder 32-bit

* _This script auto-generates Compressed Cross & Native GCC ARM Toolchain binaries targeting Raspberry Pi 32-bit Stretch(Debian 9) & Buster(Debian 10) OSes._

### `RTBuilder_64b`: Raspberry Pi Toolchains Builder 64-bit

* _This script auto-generates Compressed Cross & Native GCC ARM64 Toolchain binaries targeting any Raspberry Pi 64-bit (like Pi64) OSes._



&nbsp;

## Usage

***:warning: These scripts are Linux specific only.***

1. **Update environment & Install prerequisites:**

    ```sh
    # update your system
    sudo apt update && sudo apt dist-upgrade

    # install prerequisites
    sudo apt-get -y install gcc g++ gperf flex texinfo gawk gfortran texinfo bison \
		build-essential openssl unzip wget git \
		libncurses-dev autoconf automake tar figlet
	```	

	**Optional:** Install `ccache` for speeding up build time:
	
	```sh
	# Install package
	sudo apt install -y ccache

	# Update symlinks
	sudo /usr/sbin/update-ccache-symlinks

	# Perpend ccache into the PATH
	echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc

	# Source .bashrc to test the new PATH
	source ~/.bashrc && echo $PATH

	```

2. **Clone this repository:**

   ```bash
   git clone https://github.com/abhiTronix/raspberry-pi-cross-compilers.git
   cd raspberry-pi-cross-compilers/build-scripts

   ```

3. **Run scripts:**

	* ### `RTBuilder_32b`: Raspberry Pi Toolchains Builder 32-bit


	  	* **Usage parameters:** This script requires a few command-line parameters, just run `./RTBuilder_32b` on terminal:
	  
		    ```bash
			Usage: ./RTBuilder_32b -g [GCC version] -r [Target Pi type] -o [Target Pi OS type]
				-g GCC version you want to compile?: (7.1.0|7.2.0|7.3.0|7.4.0|7.5.0|8.1.0|8.2.0|8.3.0|9.1.0|9.2.0)
				-r What's yours Raspberry Pi type?: (0-1|2-3|3+)
				-o What's yours Raspberry Pi OS type?: (stretch|buster)

		    ``` 


	  	* **Usage:** Just pass _targeted [GCC version](#supported-gcc-versions)_ to `-g` parameter,  _targeted raspberry pi type_ to `-r` parameter, and _targeted raspberry pi OS type_ to `-o` parameter of this script:

	  		***:warning: You cannot compile GCC version less than GCC 8.3.0 for Buster OS, otherwise script will automatically switch for Stretch OS.***

	        ```bash
	        chmod +x RTBuilder_32b
	        ./RTBuilder_32b -g "9.2.0" -r "2-3" -o "buster"

	        ```

	    	*This will take some time _(approximately 55mins)_, so grab a coffee :coffee:. On returning you will find `native-gcc-{GCC_VERSION}-pi_64.tar.gz` and `cross-gcc-{GCC_VERSION}-pi_{}.tar.gz` at your `$HOME` directory.*



	* ### `RTBuilder_64b`: Raspberry Pi Toolchains Builder 64-bit


		* **Usage parameters:** This script requires few command-line parameters, just run `./RTBuilder_64b`:
		  
		    ```bash
			Usage: ./RTBuilder_64b -g [GCC version] -t [OS Type]
				-g GCC version you want to compile?: (7.1.0|7.2.0|7.3.0|7.4.0|7.5.0|8.1.0|8.2.0|8.3.0|9.1.0|9.2.0)
				-t What's yours Raspberry Pi OS type?: (1|2) [default:1]

		    ``` 


		* **Usage:** Just pass _targeted [GCC version](#supported-gcc-versions)_ to `-g` parameter of this script:

	        ```bash
	        chmod +x RTBuilder_64b
	        ./RTBuilder_64b -g "9.2.0"

	        ```

		    *This will take some time _(approximately 55mins)_, so grab a coffee :coffee:. On returning you will find `native-gcc-{GCC_VERSION}-pi_64.tar.gz` and `cross-gcc-{GCC_VERSION}-pi_64.tar.gz` at your `$HOME` directory.*

&nbsp;


## Custom Builds:

These scripts provide a few additional environment variables to tweak Toolchain Builds:

* `BUILDDIR`: To change build directory. By default it is set to temp(`/tmp`) directory. Its usage is as follows:

	***:warning: Make sure assigned directory has read/write permission.***

	```bash
	BUILDDIR="/home/foo/foo1"
	``` 
* `LANGUAGES`: To change supported programming languages for your Toolchains. Its default value is `c,c++,fortran`. Its usage is as follows:
	
	***:warning: Make sure to install additional dependency manually according to your assigned supported languages.*** 

	```bash
	LANGUAGES="c,go,brig,d"
	```

&nbsp;

### Supported GCC Versions:

These scripts only support specific GCC versions, those are as follows:

***:warning: You cannot compile GCC version less than GCC 8.3.0 for Buster OS, otherwise script will automatically switch for Stretch OS.***

- 7.1.0
- 7.2.0
- 7.3.0
- 7.4.0
- 7.5.0
- 8.1.0
- 8.2.0
- 8.3.0
- 9.1.0
- 9.2.0


&nbsp;

## Support this Project
***If these binaries helped you big time, please consider supporting it through any size donations. Thank you :heart:.***

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?logo=paypal&style=for-the-badge)](https://paypal.me/AbhiTronix)&nbsp;

***You can also share your [**thoughts**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/reviews) or just drop a [star :star:](https://github.com/abhiTronix/raspberry-pi-cross-compilers/stargazers). Thank you.***

&nbsp;


## Citing

**Here is a Bibtex entry you can use to cite this project in a publication:**

```tex
@misc{raspberry-pi-cross-compilers,
    Title = {Raspberry Pi Toolchains},
    Author = {Abhishek Thakur},
    howpublished = {\url{https://github.com/abhiTronix/raspberry-pi-cross-compilers}}   
  }
```


&nbsp; 


## License

**Copyright © 2020 abhiTronix**

This Project source-code and its precompiled binaries are licensed under the [**GPLv3**](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE) license.