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

# <img alt="Banner" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc/banners-d.png">

This project now utilizes powerful **Github Actions** CI(Continuous Integration) to auto-compile Compressed GCC Cross & Native ARM/ARM64 Toolchain binaries by using these CI bash Build-Scripts. These CI Build-Scripts are derived from previous user-friendly build-scripts but further divided into smaller jobs to aid better build times with CI.


## Automated Toolchain Builder Workflow:

A generalized workflow used to generate and deploy these CI maintained toolchains are as follows:

<h3 align=center><img alt="Workflow" title="Toolchain Builder Workflow" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/gcc/workflow.png"></h3>


## Build-Script Description:


### A. `CIBB_32b`: Raspberry Pi Toolchains CI Base Builder 32-bit

* This build-script is used in CI to generates Compressed Intermediate/Incomplete Base Bundles targeting Raspberry Pi 32-bit OSes.
* These Intermediate/Incomplete Base Bundles are then used to compile actual 32-bit Cross-Compiler Toolchains binaries.

### B. `CIBB_64b`: Raspberry Pi Toolchains CI Base Builder 64-bit

* This build-script is used in CI to generates Compressed Intermediate/Incomplete Base Bundles targeting Raspberry Pi 64-bit OSes.
* These Intermediate/Incomplete Base Bundles are then used to compile actual 64-bit Cross-Compiler Toolchains binaries.

### C. `CICTB_32b`: Raspberry Pi Toolchains CI Cross-Compiler Builder 32-bit

* This build-script is used in CI to generate Compressed Cross ARM Toolchain binaries targeting Raspberry Pi 32-bit Stretch(Debian 9) & Buster(Debian 10) OSes from Base Bundles.

### D. `CICTB_64b`: Raspberry Pi Toolchains CI Cross-Compiler Builder 64-bit

* This build-script is used in CI to generate Compressed Cross ARM64 Toolchain binaries targeting Raspberry Pi 64-bit OSes from Base Bundles.

### E. `CINTB_32b`: Raspberry Pi Toolchains CI Native-Compiler Builder 32-bit

* This build-script is used in CI to generate Compressed Native ARM Toolchain binaries targeting Raspberry Pi 32-bit Stretch(Debian 9) & Buster(Debian 10) OSes from respective Cross-Compiler Toolchain Binaries builds.


### F. `CINTB_64b`: Raspberry Pi Toolchains CI Native-Compiler Builder 64-bit

* This build-script is used in CI to generate Compressed Native ARM64 Toolchain binaries targeting Raspberry Pi 64-bit OSes from respective Cross-Compiler Toolchain Binaries builds.

### G. `x86_64TB`: Raspberry Pi CI Toolchains x86_64-Compiler Builder

* This build-script is used in CI to generate Compressed x86_64/x86 Toolchain binaries targeting Raspberry Pi Desktop OSes from scratch.


&nbsp;

### Supported Programming Languages:

These CI build-scripts only support specific Programming Languages, those are as follows:

- C++
- Fortran
- C

&nbsp;


## Supported GCC Versions:

These CI build-scripts supports newer as well as base GCC versions, those are as follows:

- 6.3.0
- 8.3.0
- 9.2.0
- 9.4.0
- 10.1.0
- 10.3.0

&nbsp;

## Supporting this Project

**If these binaries helped you big time, please consider supporting it through any size donations.**

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?logo=paypal&style=for-the-badge)](https://paypal.me/AbhiTronix)

***You can also share your [**thoughts**](https://sourceforge.net/projects/raspberry-pi-cross-compilers/reviews) or just drop a [star](https://github.com/abhiTronix/raspberry-pi-cross-compilers/stargazers).***

&nbsp;


## License

**Copyright © 2020 abhiTronix**

This Project source-code and its precompiled binaries are licensed under the [**GPLv3**](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE) license.