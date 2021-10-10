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
<img alt="Raspberry Pi Toolchains Logo" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc/GCC.png">

<a align="center"> **Latest CI maintained Precompiled Standalone ARM & ARM64 Toolchains for Raspberry Pi SBCs**</a>

![CI Builder Pi[0-1]](https://github.com/abhiTronix/raspberry-pi-cross-compilers/workflows/CI%20Builder%20Pi%5B0-1%5D/badge.svg)
![CI Builder Pi[2-3]](https://github.com/abhiTronix/raspberry-pi-cross-compilers/workflows/CI%20Builder%20Pi%5B2-3%5D/badge.svg)
![CI Builder Pi[3+]](https://github.com/abhiTronix/raspberry-pi-cross-compilers/workflows/CI%20Builder%20Pi%5B3+%5D/badge.svg)
![CI Builder Pi[64]](https://github.com/abhiTronix/raspberry-pi-cross-compilers/workflows/CI%20Builder%20Pi%5B64%5D/badge.svg)
![CI Builder Pi[Desktop]](https://github.com/abhiTronix/raspberry-pi-cross-compilers/workflows/CI%20Builder%20Pi%5BDesktop%5D/badge.svg)
![CI Docs Deployer](https://github.com/abhiTronix/raspberry-pi-cross-compilers/workflows/CI%20Docs%20Deployer/badge.svg)

[![ko-fi][kofi-badge]][kofi]

[![License][license-badge]][license]
![GitHub release (latest by date)](https://img.shields.io/github/v/release/abhiTronix/raspberry-pi-cross-compilers?logo=github)
[![Downloads][downloads-badge]][downloads]



</td></tr></table>

&nbsp;

## Table of Contents 📑

* [**TL'DR**](#tldr)
* [**Latest v3.0+ Release SneekPeak**](#latest-v30-release-sneekpeak-)
* [**A. Precompiled Toolchains: Easy-to-Use**](#a-precompiled-toolchains-easy-to-use)
  * [**Toolchain Downloads**](#-toolchain-downloads)
  * [**Toolchain Setup Documentation**](#-toolchain-setup-documentation)
* [**B. Build-Script for Developers**](#b-build-script-for-developers-do-it-yourself)
* [**C. Cross-Compiling Latest QT Framework for Pi** <img src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/new.gif" />](#c-cross-compiling-latest-qt-framework-for-pi)
* [**D. Supporting this Project :heart:**](#d-supporting-this-project)
* [**E. Additional Information**](#e-bonus-additional-toolchains-information)
  * [**Supported Hardwares**](#supported-hardwares)
  * [**Supported Programming Languages**](#supported-programming-languages)
  * [**Optimization Flags Involved**](#optimization-flags-involved)
* [**F. Citation**](#f-citation)
* [**G. License**](#g-licensee)
* [**H. Acknowledgments**](#h-acknowledgments)

&nbsp;

&nbsp;


## TL'DR 🕵️

### What is this project?

> This project provides the Latest, CI maintained, Precompiled [**Raspberry Pi CPU optimized**](#optimization-flags-involved) GCC Cross & Native (ARM & ARM64) Compressed Standalone Toolchains, that is [**fastest to setup**](#e-toolchain-setup-documentation) and saves you tons of time and helps you to get quickly started with software development on Pi.

### Who will benefit from the project?

> This project benefits everyone, from Professional Devs to a college research Student, looking for latest easy-to-use precompiled GCC toolchains for their Hobby Raspberry Pi project(s). 


&nbsp;

&nbsp; 

## Latest v3.0+ Release SneekPeak 🍩


* ☑️ *Latest [**GCC 10.3.0**](https://gcc.gnu.org/gcc-10/) toolchains available.*
* ☑️ *Automated CI maintained GCC standalone ARM & ARM64 toolchains.*
* ☑️ *Hardcoded paths free both Cross & Native **Raspbian Buster (Debian 10)** toolchains available.*
* ☑️ *Separate binaries for each Raspberry Pi variant (including latest Compute modules and Raspberry Pi 4).*
* ☑️ *PIGZ-TAR Compressed Binaries available with maximum possible compression.*
* ☑️ *Exclusive **ARM64|AARCH64** Binaries for Raspberry Pi 64-Bit kernel OS flavors.*
* ☑️ *Open-sourced Toolchains build-scripts are also available.*
* ☑️ *[**Comprehensive Guide**](QT_build_instructions.md) for Cross-compile Latest QT for any Raspberry Pi variant/model available*
* ☑️ *Latest [**GDB Debugger v9.2**](https://www.gnu.org/software/gdb/download/ANNOUNCEMENT) included in all binaries.*


&nbsp;

&nbsp;



# A. Precompiled Toolchains: Easy-to-Use

This project now utilizes powerful [**Github Actions**][git-action] CI(Continuous Integration) to auto-compile Compressed GCC Cross & Native ARM & ARM64 Toolchain binaries and thereby auto-deploy them to SourceForge repository.


<h3 align=center><img alt="Workflow" title="Toolchain Builder Workflow" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc/workflow.png"></h3>


&nbsp;

### 📥 Toolchain Downloads:

Following is the table for various CI generated OS targetted precompiled Toolchain Binaries available with this project:

**References:**
* **Host OS:** on which the toolchain is executed/used.
* **Target OS:** for which the toolchain generates code.

**📝 Note:** [TAR][tar]-[PIGZ][pigz] Compressed pre-compiled GCC Toolchain binaries can be easily be downloaded from the project's [**SourceForge Repository**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/) or by clicking links given in the following table.

<a href="https://sourceforge.net/p/raspberry-pi-cross-compilers/"><img alt="Download Raspberry Pi GCC Toolchains" src="https://sourceforge.net/sflogo.php?type=17&group_id=3021982" width=200></a>


| Toolchains | Host OS | Target OS | Current Status | Precompiled GCC versions available |
| :---------- | :--------: | :-------: | :--------: | :------------------------: |
| **Raspberry Pi GCC Cross-Compiler Toolchains (Stretch)** | any x64/x86 Linux machine | Stretch **32-bit OS** (Debian Version 9) only | Stable/Production | [6.3.0][cc-stretch-630], [9.4.0][cc-stretch-940], [10.3.0][cc-stretch-1030] |
| **Raspberry Pi GCC Cross-Compiler Toolchains (Buster)** | any x64/x86 Linux machine | Buster **32-bit OS** (Debian Version 10) only | Stable/Production | [8.3.0][cc-buster-830], [9.4.0][cc-buster-940], [10.3.0][cc-buster-1030] |
| **Raspberry Pi GCC Native-Compiler Toolchains (Stretch)** | Stretch **32-bit OS** (Debian Version 9) only | Stretch **32-bit OS** (Debian Version 9) only | Stable/Production | [9.4.0][nc-stretch-940], [10.3.0][nc-stretch-1030] |
| **Raspberry Pi GCC Native-Compiler Toolchains (Buster)** | Buster **32-bit OS** (Debian Version 10) only | Buster **32-bit OS** (Debian Version 10) only | Stable/Production | [9.4.0][nc-buster-940], [10.3.0][nc-buster-1030] |
| **Raspberry Pi GCC 64-Bit Cross-Compiler Toolchains (Stretch)** | any x64/x86 Linux machine | Stretch **64-bit OS** (Debian Version 9) only | Stable/Production | [6.3.0][cc-stretch64-630], [9.4.0][cc-stretch64-940], [10.3.0][cc-stretch64-1030]|
| **Raspberry Pi GCC 64-Bit Cross-Compiler Toolchains (Buster)** | any x64/x86 Linux machine | Buster **64-bit OS** (Debian Version 10) only | Stable/Production | [8.3.0][cc-buster64-830], [9.4.0][cc-buster64-940], [10.3.0][cc-buster64-1030]|
| **Raspberry Pi GCC 64-Bit Native-Compiler Toolchains (Stretch)** | Stretch **64-bit OS** (Debian Version 9) only | Stretch **64-bit OS** (Debian Version 9) only | Stable/Production | [9.4.0][nc-stretch64-940], [10.3.0][nc-stretch64-1030] |
| **Raspberry Pi GCC 64-Bit Native-Compiler Toolchains (Buster)** | Buster **64-bit OS** (Debian Version 10) only | Buster **64-bit OS** (Debian Version 10) only | Stable/Production | [9.4.0][nc-buster64-940], [10.3.0][nc-buster64-1030] |
| **Exclusive/Experimental Toolchains** |  x86/x86_64 Pi Desktop | x86/x86_64 Pi Desktop | Beta/Experimental | [10.3.0 (x86)][dc-x86-1030], [10.3.0 (x86_64)][dc-x86_64-1030] | 

**Tip::bulb:** _To get the location of each Binary of this project on SourceForge, you can also check out [this Reference Tree](https://github.com/abhiTronix/raspberry-pi-cross-compilers/wiki/Toolchain-Binaries-Reference-Tree#toolchain-binaries-reference-tree)._


&nbsp;


### 📒 Toolchain Setup Documentation:

These precompiled toolchains setup requires just three easy steps - **Downloading, Extracting and Linking**:

**[➡️ WIKI-Documentation (en-English)](https://github.com/abhiTronix/raspberry-pi-cross-compilers/wiki)**

 
&nbsp;

&nbsp;


# B. Build-Script for Developers: Do It Yourself

- This project now provides user-friendly open-sourced bash build-scripts that auto-generates Compressed Cross & Native GCC ARM & ARM64 Toolchain binaries targeting Raspberry Pi 32-bit & 64-bit OSes.

- If you need additional language support or need to compile another suitable GCC version toolchains for your Raspberry Pi, then you can use these scripts to manually compile any GCC toolchains by running suitable build-scripts yourself through your system terminal.

**[➡️ All Build-scripts are here](/build-scripts)**


&nbsp;

&nbsp;

# C. Cross-Compiling Latest QT Framework for Pi

Now, there's a steps-by-step guide available to cross-compile Latest QT for any Raspberry Pi variant/model available, using the Raspberry Pi Toolchains available with this project:

**[➡️ Step-by-Step Instruction for Cross-Compiling Latest QT Framework for Raspberry Pi](QT_build_instructions.md)**


&nbsp;

&nbsp;


# D. Supporting this Project

**If these binaries helped you big time, please consider supporting it through any size donations.:heart:.**

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?logo=paypal&style=for-the-badge)](https://paypal.me/AbhiTronix)

[![ko-fi][kofi-badge]][kofi]

***Also please share your [**thoughts**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/reviews) or just drop a [star :star:](https://github.com/abhiTronix/raspberry-pi-cross-compilers/stargazers).***

&nbsp;

&nbsp;

# E. Bonus: Additional Toolchains Information

### Supported Hardwares:

- All Raspberry Pi hardware/versions/models are currently supported. 
- Any other ARM & ARM64 Device _(such as Android, other SBCs, IoT etc.)_ with similar or compatible Hardware architecture(see [Optimization Flags](#optimization-flags-involved)), should also work.

&nbsp;

### Supported Programming Languages:
- C++
- Fortran
- C
- Any other language support can be easily [compiled](#b-build-script-for-developers-do-it-yourself).

&nbsp;

### Optimization Flags Involved:

These toolchains are built with these following system-specific LTO _(Link Time Optimization)_ flags, therefore you can easily take advantage of your Raspberry Pi's CPU specific features with these Toolchains while compiling your programs:


| Raspberry Pi Board | Link Time Optimization Flags |
|---|---|
| Raspberry Pi - *Zero/W/WH & 1 Model A/B/A+/B+* | `-march=armv6 -mfloat-abi=hard -mfpu=vfp` |
| Raspberry Pi - *2 & 3 Model A/B* | `-march=armv7-a -mfloat-abi=hard -mfpu=neon-vfpv4` |
| Raspberry Pi - *3 & 4 Model A+/B+ & Compute 3/3-lite/3+ (32-Bit)* | `-march=armv8-a -mfloat-abi=hard -mfpu=neon-fp-armv8` |
| Raspberry Pi - *3 & 4 Model A+/B+ & Compute 3/3-lite/3+ (64-Bit)* | `-march=armv8-a+fp+simd` |


**Raspberry Pi 4+:** _The latest Raspberry Pi 4 uses a Broadcom BCM2711 SoC with a 1.5 GHz 64-bit quad-core ARM Cortex-A72 processor, that also have armv8-a architecture similar to Raspberry Pi 3B+, therefore it is also officially supported!_

&nbsp; 

&nbsp;

# F. Citation

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


# G. License

**Copyright © 2020 abhiTronix**

This Project source-code and its precompiled binaries are licensed under the [**GPLv3**][license] license.

&nbsp;

&nbsp; 
 

# H. Acknowledgments

Thank you,

- [GNU project][gnu] for providing the latest source code.   
- [Raspberry Pi project][pi-project] for providing the latest kernel and docs.  
- [GitHub Actions][git-action] for making it easier to automate Toolchain Builder workflows.
- [Sourceforge project][sf-project]  for allowing me to publish these binaries.


[downloads-badge]:https://img.shields.io/sourceforge/dm/raspberry-pi-cross-compilers.svg?style=flat&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAMAAAAKE/YAAAAAYFBMVEVHcEz/OwDzfCD0fCDzfCDzfR/zfCD9fiHzfCD0fCDzfCD0fSDzeyDzfB/zfCDzfCDzfCD/WgPzfCDxfx7wfCH0fCDzfCDzfCDzfB/zfCDzfCD0fCDzfCDyfCD1fCDzfCAr6LXeAAAAH3RSTlMAAXuI/oNpCPhIlYq2oYC37wN2IRDO5sI926lfUycyJgWG0gAABKZJREFUeAHt3P9Os0gUxvEzOhZobUvL71r73P9dbkzfJcW3wPCcnRzN8v1b48cjhWEmUdbW1tbW1tbWPrr8WVUrP7cXjJSXv88MZL/Q7IvfZ8aL/MzOGG+3mlfzal7N/0vzpq43Yt5hkfkN8Dj8OvNXh19mJtTmZnM1YTZXE2ZzNWE2VxNmczVhNlcTZls1YT4Tr2HWZpfDUk2Yp9E4/FDz9De8/FCzuK2BmjBbqgmzvZow26t5M6+2N9ur3wgzobYw82p7860g1MbmA9JMvneaVJubpUKvNpr1tPlVntQBSFti1kbmHo2cuK4NzVIDgK+Sv9X7KbWpucS9vRBqI7Nrcc9fCbWFeXBAV5eE2sbsKvzJb4VQW5jlhj7fEmoLszyYfOUItYH50+Ohq8RX683yjscqF1+tN18xLBOlOr75VNYY1ohOHd8s7h3fu8nTTryaN4ceLPqtqNTxzZnHX+WJRh3fXOR40lV4dXxzUuFZF6HV8c1ywbN8mtDq+OYzRroKqY5vbj1G2gqrjm0uaozVCa2Oa3ZHjPfJq2Oa5YyJNsKrI875M8V4fi/R1LxZXIOpOtGoI5nlA5P5sv/COluq9i9xzGWO6Vr50wbdiZs1b57eMwj4JLbAh3Cz5s3EoAePl9Kjc/rrWm+WM2byzePe5FXUs9abXYe5avm3I9Do7yF6c4vZfPKwKeILRn2WQa+0uXfMVjz+sIOo1TvludUpx3yt3HMbAJ3Tqs8YrzrJfDcE1N/nNv2voFFPzelN5nMvmM+fB8/OnSjVuXY52yCgtwG6EqX6gPEaJ/PVCGg7QPtSRnMharenFsJ9JUK6DK5pZKKc9dQ5mZ9XtwjpOFymHGQiF1/9gZCa4Q32ImI66/MitLvcDwhkMne6YLyNXv2GkHpl169FJitrjPehVbvdInTi8VUqc+0Cll+8eo+Qum8f25PmvSIVQs2je0spMx0nb/qEmkDncq8JnPQV470nolXvMN3gL1p4fOVTmS5LQ8y8+oCgisHVUevMjJp4uPhMRFxS416jN6vULYLaDd6R9nqzSl16hFSXj8dIZ71Zp64QVJMdeg1atXnYUrXbYnFpojPrZ33F4t6VZv2skxxL+9Ca9bPeY2FpqTXrZ33DwrZ6s37WDRblP/Vm/awzLOoSwUzM+ogFpZ+sWT/ribOt6XZRzMSsXxBcl0QxE7M+NQgsvfHmoF7D1UWNsDaMOZb6lvMXNG/WqtsQ9dYRZmP1jjHHVRdVwM46YY6qduUeE3UtY46o7gk1RvK7hDTHVyebp2x/4Z7d0dU9u8K36h27rouv7vvcvPfzzqvXNhHSHF89rLxl12vWFk793s33NqkmIswGasJspObNdmrebKfmzXZq3myn5s02at58JM282tbMq+3NvJo326l5s52aN9upebOdmjdbqlmzrZozG6uvjNla3RFmc3XqCLO1emttJv7JUZMQZiM1b7ZT82Z7dVMSZiM1b7ZR25uJzuirCLOVmjdbqlmzrZozW6tTHI3NRGUp1mYi5+zNfKt5Na9m+/g9c8tcmVubiTJzM1HhKbP9QuRZfm9vnqgsnvUfk9fW1tbW1tb+AZhQydEXZaX4AAAAAElFTkSuQmCC
[license-badge]:https://img.shields.io/github/license/abhiTronix/raspberry-pi-cross-compilers.svg?style=flat&logo=gnu
[kofi-badge]:https://www.ko-fi.com/img/githubbutton_sm.svg

[downloads]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files
[license]:https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE
[kofi]:https://ko-fi.com/W7W8WTYO
[gnu]:https://gcc.gnu.org/
[pi-project]:https://www.raspberrypi.org/
[sf-project]:https://sourceforge.net
[git-action]:https://github.com/features/actions
[tar]:https://www.gnu.org/software/tar/
[pigz]:https://zlib.net/pigz/

[cc-stretch-630]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Stretch/GCC%206.3.0/

[cc-stretch-940]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Stretch/GCC%209.4.0/
[cc-stretch-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Stretch/GCC%2010.3.0/
[cc-buster-830]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%208.3.0/

[cc-buster-940]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%209.4.0/
[cc-buster-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/Buster/GCC%2010.3.0/
[nc-stretch-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/Stretch/GCC%2010.3.0/
[nc-buster-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/Buster/GCC%2010.3.0/
[nc-stretch-940]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/Stretch/GCC%209.4.0/
[nc-buster-940]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/Buster/GCC%209.4.0/
[dc-x86-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Exclusive-Experimental%20Toolchains/Desktop/x86/GCC%2010.3.0/
[dc-x86_64-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Exclusive-Experimental%20Toolchains/Desktop/x86_64/GCC%2010.3.0/

[cc-stretch64-630]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/Stretch/GCC%206.3.0/
[cc-stretch64-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/Stretch/GCC%2010.3.0/
[cc-stretch64-940]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/Stretch/GCC%209.4.0/
[nc-stretch64-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/Stretch/GCC%2010.3.0/
[nc-stretch64-940]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/Stretch/GCC%209.4.0/

[cc-buster64-830]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/Buster/GCC%208.3.0/
[cc-buster64-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/Buster/GCC%2010.3.0/
[cc-buster64-940]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/Buster/GCC%209.4.0/
[nc-buster64-1030]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/Buster/GCC%2010.3.0/
[nc-buster64-940]:https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/Buster/GCC%209.4.0/