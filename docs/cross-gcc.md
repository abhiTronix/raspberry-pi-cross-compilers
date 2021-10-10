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

<br>

<h1 align=center><img alt="Description" title="Toolchain Description" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc/cross-gcc.png"></h1>


### TL'DR

**What is this project?**

> This project provides the Latest, CI maintained, Precompiled [**Raspberry Pi CPU optimized**](#optimization-flags-involved) GCC Cross & Native (ARM & ARM64) Compressed Standalone Toolchains, that is [**fastest to setup**](#e-toolchain-setup-documentation) and saves you tons of time and helps you to get quickly started with software development on Pi.

**Who will benefit from the project?**

> This project benefits everyone, from Professional Devs to a college research Student, looking for latest easy-to-use precompiled GCC toolchains for their Hobby Raspberry Pi project(s). 




<br>

-------------------------

<br>


This project now utilizes powerful [**Github Actions**][git-action] CI(Continuous Integration) to auto-compile Compressed GCC Cross & Native ARM/ARM64 Toolchain binaries and thereby auto-deploy them to SourceForge repository.

<h3 align=center><img alt="Workflow" title="Toolchain Builder Workflow" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc/workflow.png"></h3>


<br>

-------------------------

<br>

## Toolchain Binaries description table:

**Here's a reference table for various CI generated OS targetted precompiled Toolchain Binaries available with this project:**

* **References:**
  * **Host OS:** on which the toolchain is executed/used.
  * **Target OS:** for which the toolchain generates code.

<br>

| Toolchains | Host OS | Target OS | Current Status | Precompiled GCC versions available |
| :---------- | :--------: | :-------: | :--------: | :------------------------: |
| Raspberry Pi GCC 32-Bit **Cross-Compiler** Toolchains (Stretch) | any x86_64/x86 Linux machine | Stretch **32-bit OS** (Debian Version 9) | Stable/Production | 6.3.0, 9.4.0, 10.3.0 |
| Raspberry Pi GCC 32-Bit **Cross-Compiler** Toolchains (Buster) | any x86_64/x86 Linux machine | Buster **32-bit OS** (Debian Version 10) | Stable/Production | 8.3.0, 9.4.0, 10.3.0 |
| Raspberry Pi GCC 64-Bit **Cross-Compiler** Toolchains (Stretch) | any x86_64/x86 Linux machine | Stretch **64-bit OS** (Debian Version 9) | Stable/Production | 6.3.0, 9.4.0, 10.3.0|
| Raspberry Pi GCC 64-Bit **Cross-Compiler** Toolchains (Buster) | any x86_64/x86 Linux machine | Buster **64-bit OS** (Debian Version 10) | Stable/Production | 8.3.0, 9.4.0, 10.3.0|
| Raspberry Pi GCC 32-Bit **Native-Compiler** Toolchains (Stretch) | Stretch **32-bit OS** (Debian Version 9) | Stretch **32-bit OS** (Debian Version 9) | Stable/Production | 9.4.0, 10.3.0 |
| Raspberry Pi GCC 32-Bit **Native-Compiler** Toolchains (Buster) | Buster **32-bit OS** (Debian Version 10) | Buster **32-bit OS** (Debian Version 10) | Stable/Production | 9.4.0, 10.3.0 |
| Raspberry Pi GCC 64-Bit **Native-Compiler** Toolchains (Stretch) | Stretch **64-bit OS** (Debian Version 9) | Stretch **64-bit OS** (Debian Version 9) | Stable/Production | 9.4.0, 10.3.0 |
| Raspberry Pi GCC 64-Bit **Native-Compiler** Toolchains (Buster) | Buster **64-bit OS** (Debian Version 10) | Buster **64-bit OS** (Debian Version 10) | Stable/Production | 9.4.0, 10.3.0 |
| Exclusive/Experimental **Desktop** Toolchains |  x86/x86_64 Pi **Desktop** OS | x86/x86_64 Pi **Desktop** OS | Beta/Experimental | 10.3.0 (x86), 10.3.0 (x86_64) | 


**Tip:** _To get the location of each Binary of this project on SourceForge, you can also check out [this Reference Tree](https://github.com/abhiTronix/raspberry-pi-cross-compilers/wiki/Toolchain-Binaries-Reference-Tree#toolchain-binaries-reference-tree)._


<br>

-------------------------

<br>


## Toolchain Setup Documentation:

These precompiled toolchains setup requires just three easy steps - **Downloading, Extracting and Linking**:

* #### [WIKI-Documentation (en-English)](https://github.com/abhiTronix/raspberry-pi-cross-compilers/wiki)

<br>

-------------------------

<br>

## Supported Toolchains Programming Languages:
- C++
- Fortran
- C
- Any other language support can be easily [compiled](#scroll-build-scripts).
 
<br>

-------------------------

<br>


## Supporting this Project

**If these binaries helped you big time, please consider supporting it through any size donations.**

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?logo=paypal&style=for-the-badge)](https://paypal.me/AbhiTronix)

***You can also share your [**thoughts**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/reviews) or just drop a [star](https://github.com/abhiTronix/raspberry-pi-cross-compilers/stargazers).***

<br>

-------------------------

<br>


# Additional Information

### Supported ARM Devices:

- All Raspberry Pi hardware/versions/models are currently supported. 
- Any other ARM Device(such as android, IoT) with similar Hardware architecture(see [Optimization Flags](#optimization-flags-involved)) should also work.

### Optimization Flags Involved:

**These toolchains are built with these following system-specific LTO _(Link Time Optimization)_ flags, therefore you can easily take advantage of your Raspberry Pi's CPU specific features with these Toolchains while compiling your programs:**

**Important:** The latest Raspberry Pi 4 uses a Broadcom BCM2711 SoC with a 1.5 GHz 64-bit quad-core ARM Cortex-A72 processor, that also have armv8-a architecture similar to Raspberry Pi 3B+, therefore it is also officially supported!

| Raspberry Pi Board | Link Time Optimization Flags |
|---|---|
| Raspberry Pi - *Zero/W/WH & 1 Model A/B/A+/B+* | `-march=armv6 -mfloat-abi=hard -mfpu=vfp` |
| Raspberry Pi - *2 & 3 Model A/B* | `-march=armv7-a -mfloat-abi=hard -mfpu=neon-vfpv4` |
| Raspberry Pi - *3 & 4 Model A+/B+ & Compute 3/3-lite/3+ (32-Bit)* | `-march=armv8-a -mfloat-abi=hard -mfpu=neon-fp-armv8` |
| Raspberry Pi - *3 & 4 Model A+/B+ & Compute 3/3-lite/3+ (64-Bit)* | `-march=armv8-a+fp+simd` |


<br>

-------------------------

<br> 


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


<br>

-------------------------

<br> 


## Copyright License

**Copyright © 2020 abhiTronix**

This Project source-code and its precompiled binaries are licensed under the [**GPLv3**][license] license.

<br>

-------------------------

<br> 
 

## Acknowledgments

Thank you,

- [GNU project][gnu] for providing the latest source code.   
- [Raspberry Pi project][pi-project] for providing the latest kernel and docs.  
- [GitHub Actions][git-action] for making it easier to automate Toolchain Builder workflows.
- [Sourceforge project][sf-project]  for allowing me to publish these binaries.



[downloads-badge]:https://img.shields.io/sourceforge/dt/raspberry-pi-cross-compilers?style=for-the-badge&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAMAAAAKE/YAAAAAYFBMVEVHcEz/OwDzfCD0fCDzfCDzfR/zfCD9fiHzfCD0fCDzfCD0fSDzeyDzfB/zfCDzfCDzfCD/WgPzfCDxfx7wfCH0fCDzfCDzfCDzfB/zfCDzfCD0fCDzfCDyfCD1fCDzfCAr6LXeAAAAH3RSTlMAAXuI/oNpCPhIlYq2oYC37wN2IRDO5sI926lfUycyJgWG0gAABKZJREFUeAHt3P9Os0gUxvEzOhZobUvL71r73P9dbkzfJcW3wPCcnRzN8v1b48cjhWEmUdbW1tbW1tbWPrr8WVUrP7cXjJSXv88MZL/Q7IvfZ8aL/MzOGG+3mlfzal7N/0vzpq43Yt5hkfkN8Dj8OvNXh19mJtTmZnM1YTZXE2ZzNWE2VxNmczVhNlcTZls1YT4Tr2HWZpfDUk2Yp9E4/FDz9De8/FCzuK2BmjBbqgmzvZow26t5M6+2N9ur3wgzobYw82p7860g1MbmA9JMvneaVJubpUKvNpr1tPlVntQBSFti1kbmHo2cuK4NzVIDgK+Sv9X7KbWpucS9vRBqI7Nrcc9fCbWFeXBAV5eE2sbsKvzJb4VQW5jlhj7fEmoLszyYfOUItYH50+Ohq8RX683yjscqF1+tN18xLBOlOr75VNYY1ohOHd8s7h3fu8nTTryaN4ceLPqtqNTxzZnHX+WJRh3fXOR40lV4dXxzUuFZF6HV8c1ywbN8mtDq+OYzRroKqY5vbj1G2gqrjm0uaozVCa2Oa3ZHjPfJq2Oa5YyJNsKrI875M8V4fi/R1LxZXIOpOtGoI5nlA5P5sv/COluq9i9xzGWO6Vr50wbdiZs1b57eMwj4JLbAh3Cz5s3EoAePl9Kjc/rrWm+WM2byzePe5FXUs9abXYe5avm3I9Do7yF6c4vZfPKwKeILRn2WQa+0uXfMVjz+sIOo1TvludUpx3yt3HMbAJ3Tqs8YrzrJfDcE1N/nNv2voFFPzelN5nMvmM+fB8/OnSjVuXY52yCgtwG6EqX6gPEaJ/PVCGg7QPtSRnMharenFsJ9JUK6DK5pZKKc9dQ5mZ9XtwjpOFymHGQiF1/9gZCa4Q32ImI66/MitLvcDwhkMne6YLyNXv2GkHpl169FJitrjPehVbvdInTi8VUqc+0Cll+8eo+Qum8f25PmvSIVQs2je0spMx0nb/qEmkDncq8JnPQV470nolXvMN3gL1p4fOVTmS5LQ8y8+oCgisHVUevMjJp4uPhMRFxS416jN6vULYLaDd6R9nqzSl16hFSXj8dIZ71Zp64QVJMdeg1atXnYUrXbYnFpojPrZ33F4t6VZv2skxxL+9Ca9bPeY2FpqTXrZ33DwrZ6s37WDRblP/Vm/awzLOoSwUzM+ogFpZ+sWT/ribOt6XZRzMSsXxBcl0QxE7M+NQgsvfHmoF7D1UWNsDaMOZb6lvMXNG/WqtsQ9dYRZmP1jjHHVRdVwM46YY6qduUeE3UtY46o7gk1RvK7hDTHVyebp2x/4Z7d0dU9u8K36h27rouv7vvcvPfzzqvXNhHSHF89rLxl12vWFk793s33NqkmIswGasJspObNdmrebKfmzXZq3myn5s02at58JM282tbMq+3NvJo326l5s52aN9upebOdmjdbqlmzrZozG6uvjNla3RFmc3XqCLO1emttJv7JUZMQZiM1b7ZT82Z7dVMSZiM1b7ZR25uJzuirCLOVmjdbqlmzrZozW6tTHI3NRGUp1mYi5+zNfKt5Na9m+/g9c8tcmVubiTJzM1HhKbP9QuRZfm9vnqgsnvUfk9fW1tbW1tb+AZhQydEXZaX4AAAAAElFTkSuQmCC
[license-badge]:https://img.shields.io/github/license/abhiTronix/raspberry-pi-cross-compilers.svg?style=for-the-badge
[kofi-badge]:https://www.ko-fi.com/img/githubbutton_sm.svg

[downloads]:https://sourceforge.net/projects/raspberry-pi-cross-compilers
[license]:https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE
[kofi]:https://ko-fi.com/W7W8WTYO
[gnu]:https://gcc.gnu.org/
[pi-project]:https://www.raspberrypi.org/
[sf-project]:https://sourceforge.net
[git-action]:https://github.com/features/actions
[tar]:https://www.gnu.org/software/tar/
[pigz]:https://zlib.net/pigz/

[cc-stretch-630]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Stretch/GCC%206.3.0/

[cc-buster-830]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%208.3.0/

[nc-stretch-920]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/Stretch/
[nc-buster-920]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/Buster/
[cc-64-630]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/GCC%206.3.0/
[cc-64-830]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/GCC%208.3.0/
[cc-64-920]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/GCC%209.2.0/
[nc-64-830]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/GCC%208.3.0/
[nc-64-920]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/GCC%209.2.0/