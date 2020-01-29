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

<a align="center"> ***Latest GCC Cross & Native automated Build-scripts and Precompiled Standalone (ARM/ARM64) Toolchains for Raspberry Pi***</a>
</td></tr></table>

&nbsp;

## Table of Contents
* [**TL'DR**](#tldr)
* [**Key Feature Points**](#key-feature-points)
* [**Precompiled Toolchains: Easy-to-Use**](#precompiled-toolchains-easy-to-use)
  * [**A. Toolchains description table**](#a-toolchains-description-table)
  * [**B. Toolchains Supported Languages**](#b-toolchains-supported-languages)
  * [**C. Identify Binaries by Name**](#c-identify-binaries-by-name)
  * [**D. Toolchains Download**](#d-toolchains-download)
  * [**E. Toolchain Setup Documentation**](#e-toolchain-setup-documentation)
* [**For Developers: Do It Yourself**](#for-developers-do-it-yourself)
* [**Support this Project :heart:**](#support-this-project)
* [**Additional Useful Information**](#additional-useful-information)
  * [**Supported ARM Devices**](#supported-arm-devices)
  * [**Optimization Flags Involved**](#optimization-flags-involved)
* [**Citing**](#citing)
* [**Copyright License**](#copyright-license)
* [**Acknowledgments**](#acknowledgments)

&nbsp;


### TL'DR

**What is this project?**

> _This project provides latest [**Raspberry Pi hardware optimized**](#optimization-flags-involved) GCC Cross Compiler & Native (ARM & ARM64) [automated Build-Scripts](#for-developers-do-it-yourself) and [Precompiled standalone Toolchains binaries](#precompiled-toolchains-easy-to-use), that will save you tons of time & thereby helps you get quickly started with software development on Pi._

**Who will benefit from the project?**

> _This project is for everyone, from a professional Developer to a small Hobbyist to a college student, who's looking for latest easy-to-use GCC toolchains for their Raspberry Pi project(s) with minimum effort._ 


&nbsp; 

### Key Features

- *Automated CLI maintained GCC standalone ARM/ARM64 toolchains.*<img src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/new.gif"/>
- *Latest [**GCC 9.2.0**](https://gcc.gnu.org/gcc-9/) toolchains available.*<img src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/new.gif"/>
- *Hardcoded paths free both Cross & Native **Raspbian Buster (Debian 10)** toolchains available.*<img src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/new.gif"/>
- *Separate binaries for each Raspberry Pi variant (including latest Compute modules and Raspberry Pi 4).*
- *Tar Compressed binaries with maximum possible compression.*
- *Exclusive **ARM64|AARCH64** Binaries for Raspberry Pi 64-Bit OS flavors.*
- *Open-sourced Toolchain build-scripts are available.*<img src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/new.gif"/>
- *Latest [**GDB Debugger v8.3.1**](https://www.gnu.org/software/gdb/download/ANNOUNCEMENT) included in all binaries.*<img src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/new.gif"/>


&nbsp;

&nbsp;


# Precompiled Toolchains: Easy-to-Use

***This project uses CLI to auto-generate various easy-to-use precompiled Compressed GCC Cross & Native standalone ARM/ARM64 toolchains which are discussed as follows:***

### A. Toolchains description table:

Here's a reference table for various precompiled Toolchains available in this project that are targeting specific OS only:

* **Reference:**
  * **Host OS:** on which the toolchain is executed/used.
  * **Target OS:** for which the toolchain generates code.


| Toolchains | Host OS | Target OS | Status | Precompiled GCC versions available |
|----------|--------|-------|--------|------|
| **Cross-Compiler Toolchains (Stretch)** | any x64/x86 Linux machine | Raspbian Stretch OS (Debian Version 9) only | Stable/Production | 6.3.0, 8.3.0, 9.2.0 |
| **Cross-Compiler Toolchains (Buster)** | any x64/x86 Linux machine | Raspbian Buster OS (Debian Version 10) only | Stable/Production | 8.3.0, 9.2.0 |
| **Native Compiler Toolchains (Stretch)** | Raspbian Stretch OS (Debian Version 9) only | Raspbian Stretch OS (Debian Version 9) only | Stable/Production | 8.3.0, 9.2.0 |
| **Native Compiler Toolchains (Buster)** | Raspbian Buster OS (Debian Version 10) only | Raspbian Buster OS (Debian Version 10) only | Stable/Production | 9.2.0 |
| **64-bit Cross-Compiler Toolchains** | any x64/x86 Linux machine | any x64 Raspberry Pi OS(like Pi64) | Stable/Production | 6.3.0, 8.3.0, 9.2.0 |
| **64-bit Native-Compiler Toolchains** | any x64 Raspberry Pi OS(like Pi64) | any x64 Raspbian OS(like Pi64) | Stable/Production | 8.3.0, 9.2.0 |
| **Exclusive Toolchains** |  None | None | None | None |  
| **Obsolete Compiler Toolchains** | Not supported | Not supported | No longer supported | 7.4.0, 8.2.0 |

&nbsp;

### B. Toolchains Supported Languages:
- C++
- Fortran
- C
- Any other language support can be [compiled manually](#for-developers-do-it-yourself).

&nbsp;

### C. Identify Binaries by Name:

You can easily identify each pre-compiled toolchain binary by its name as follows:

<h3 align=center><img alt="Binary Description" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc2.jpg" width=80%></h3>

&nbsp;


### D. Toolchains Download


_Compressed pre-compiled GCC Toolchain binaries can be easily be downloaded from the project's [**SourceForge Repository**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/) or by clicking links given in the following table:_


| Toolchains | GCC download links |
|----------|------|
| **Cross-Compiler Toolchains**  | **[6.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/GCC%206.3.0/), [8.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/GCC%208.3.0/), [9.1.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/GCC%209.1.0/), [9.2.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Cross-Compiler%20Toolchains/GCC%209.2.0/)** |
| **Native Compiler Toolchains**  | **[8.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/GCC%208.3.0/), [9.1.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/GCC%209.1.0/), [9.2.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Raspberry%20Pi%20GCC%20Native-Compiler%20Toolchains/GCC%209.2.0/)** |
| **64-bit Cross-Compiler Toolchains** |  **[6.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/GCC%206.3.0/), [8.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/GCC%208.3.0/), [9.1.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/GCC%209.1.0/), [9.2.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Cross-Compiler%20Toolchains/GCC%209.2.0/)** |
| **64-bit Native-Compiler Toolchains** |  **[8.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/GCC%208.3.0/), [9.1.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/GCC%209.1.0/), [9.2.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Bonus%20Raspberry%20Pi%20GCC%2064-Bit%20Toolchains/Raspberry%20Pi%20GCC%2064-Bit%20Native-Compiler%20Toolchains/GCC%209.2.0/)** |
| **Exclusive Toolchains  (Cross-Compiler)** | **[8.3.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Exclusive%20%20Toolchains/Raspbian%20Buster%20Cross-Compiler%20Toolchains/GCC%208.3.0/)** |  
| **Obsolete Compiler Toolchains** |  **[7.4.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Obslete%20Binaries/GCC%207.4.0/), [8.2.0](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/Obslete%20Binaries/GCC%208.2.0/)** |

***To get the location of each Binary of this project on SourceForge, you can also check out <a href = https://github.com/abhiTronix/raspberry-pi-cross-compilers/wiki/Toolchain-Binaries-Reference-Tree#toolchain-binaries-reference-tree>this Reference Tree</a>.***


&nbsp;


### E. Toolchain Setup Documentation

These precompiled toolchains setup requires just three easy steps - **Downloading, Extracting and Linking**:

* #### [WIKI-Documentation (en-english)](https://github.com/abhiTronix/raspberry-pi-cross-compilers/wiki)

 
&nbsp;

&nbsp;


# For Developers: Do It Yourself

_Open source is awesome, thereby, This project now provides user-friendly opensourced build-scripts that auto-generates & compiles Cross & Native GCC ARM/ARM64 Toolchain binaries targeting Raspberry Pi 32-bit Stretch (Debian 9) & Buster (Debian 10) and any Raspberry Pi 64-bit (like Pi64) OSes. These build-scripts are used by Automated CLI environments to generate various precompiled GCC ARM/ARM64 toolchains as discussed above. But you can also use these scripts to manually compile any latest GCC toolchains yourself through your terminal. **You can find complete related info here:**_

### :scroll: [Build-Scripts](/build-scripts)


&nbsp;

&nbsp;


# Support this Project
***If these binaries helped you big time, please consider supporting it through any size donations. Thank you :heart:.***

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?logo=paypal&style=for-the-badge)](https://paypal.me/AbhiTronix)&nbsp;

***You can also share your [**thoughts**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/reviews) or just drop a [star :star:](https://github.com/abhiTronix/raspberry-pi-cross-compilers/stargazers). Thank you.***

&nbsp;

&nbsp;

# Additional Useful Information

### Supported ARM Devices:
- All Raspberry Pi hardware/versions/models are currently supported. 
- Any other ARM Device(such as android, IoT) with similar Hardware architecture(see [Optimization Flags](#optimization-flags-involved)) should also work.

### Optimization Flags Involved:

These toolchains are built with following LTO flags, thereby you can take advantage of your Raspberry Pi's CPU specific features with these LTO flags:

***Important :bulb: : The latest Raspberry Pi 4 uses a Broadcom BCM2711 SoC with a 1.5 GHz 64-bit quad-core ARM Cortex-A72 processor, that also have armv8-a architecture similar to Raspberry Pi 3B+, therefore it is also officially supported!***

| Board | LTO Link Optimization Flags |
|---|---|
| Raspberry Pi - **Zero/W/WH & 1 Model A/B/A+/B+** | `-march=armv6 -mfloat-abi=hard -mfpu=vfp` |
| Raspberry Pi - **2&3 Model A/B** | `-march=armv7-a -mfloat-abi=hard -mfpu=neon-vfpv4` |
| Raspberry Pi - **3/4 Model A+/B+ & Compute 3/3-lite/3+(32-Bit)** | `-march=armv8-a -mfloat-abi=hard -mfpu=neon-fp-armv8` |
| Raspberry Pi - **3/4 Model A+/B+ & Compute 3/3-lite/3+(64-Bit)** | `-march=armv8-a+fp+simd` |


&nbsp; 


# Citing

**Here is a Bibtex entry you can use to cite this project in a publication:**

```bibtex
@misc{raspberry-pi-cross-compilers,
    Title = {Raspberry Pi Toolchains},
    Author = {Abhishek Thakur},
    howpublished = {\url{https://github.com/abhiTronix/raspberry-pi-cross-compilers}}   
  }
```


&nbsp; 


# Copyright License

**Copyright © 2020 abhiTronix**

This Project source-code and its precompiled binaries are licensed under the [**GPLv3**](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE) license.

&nbsp; 
 

# Acknowledgments

- https://gcc.gnu.org/ for providing the latest source code.   
- https://www.raspberrypi.org/ for providing the latest kernel and docs.  
- https://sourceforge.net for allowing me to publish these binaries.