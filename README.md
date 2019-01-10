# Latest Set of Precompiled Raspberry Pi GCC Cross-Compilers/Native Binaries - v2.0(Fastest & Easiest Method)
### Update 31, October, 2018
### Fixed Cmake issue  
[![Download Raspberry-pi-cross-compilers](https://sourceforge.net/sflogo.php?type=16&group_id=3021982)](https://sourceforge.net/p/raspberry-pi-cross-compilers/)  
[![GitHub](https://img.shields.io/badge/GCC-v8.2.0-orange.svg?style=for-the-badge)](https://github.com/abhiTronix/raspberry-pi-cross-compilers)  
[![GitHub](https://img.shields.io/badge/Platform-Raspberry%20Pi%202%2F3%20%7C%20Linux%20(x32%2Fx64)-yellow.svg?style=for-the-badge)](https://github.com/abhiTronix/raspberry-pi-cross-compilers)  
[![GitHub](https://img.shields.io/badge/FileStatus-Available-green.svg?style=for-the-badge)](https://github.com/abhiTronix/raspberry-pi-cross-compilers)  

### Current Binaries: (Up-to-Date)
- 8.2.0 (Cross-Compiler & Native)
- 6.3.0 (Cross-Compiler only)

### Supported Raspberry Pi:
Raspberry Pi Zero/2/3 any version/model (Performance may vary) <t>[![GitHub](https://img.shields.io/badge/Raspberry%20Pi%20Zero-Not%20Tested-red.svg)](https://github.com/abhiTronix/raspberry-pi-cross-compilers)  
  
## Summary:
This project contains the Latest Set of Precompiled Raspberry pi GCC Cross-Compilers(*i.e. 8.2.0*), saving your tons of time(*No compiling or Error Handling needed whatsoever*). Just Extract, Link & Enjoy full GCC(*Raspberry Pi*) functionality in your Machine. You can use it as native compiler for raspberry pi(*Can be used besides old & slow 6.3.0 GCC with full C++17 support*), Or use it as Cross-Compiler in any Linux Machine(*Tested on Latest Ubuntu/bionic x64*) to compile programs for your Raspberry Pi (*Both Latest 8.2.0 & Current 6.3.0 binaries available*).

## Binaries Description: (Read Carefully)
- `gcc-6.3.0-rpi.tar.bz2` - GCC Raspberry Pi Cross-Compilier version 6.3.0, works with Ubuntu(or other Linux distro)
- `gcc-8.2.0-rpi.tar.bz2` - GCC Raspberry Pi Cross-Compilier version 8.2.0, works with Ubuntu(or other Linux distro)
- `gcc-8.2.0.tar.bz2` - GCC Native Raspberry Pi version 8.2.0, works with Raspberry Pi 2/3 any Model(Zero not tested)

## Binaries Download:
Compressed Precompiled Binary Files are available.
You can easily download them from Sourceforge:(_Links Below_)  
### Files https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/  
[![Download Raspberry-pi-cross-compilers](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/latest/download)

---

## Extracting & Linking: (Read & Execute Carefully)
* **Prerequisites (Native & Cross-Compiler):**
   * Update your environment `sudo apt-get update && dist-upgrade`
   * Build-essential gawk, textinfo, git, bison `sudo apt install build-essential gawk git textinfo bison`

* **Extracting  (Native & Cross-Compiler):**
   * Extract files using cmd: `tar xf <filename e.g gcc-8.2.0.tar.bz2>`

* **Linking  (Native & Cross-Compiler):**
  * Move files to its correct location (ie `/opt`) using cmd: `sudo mv <extracted folder-name e.g gcc-8.2.0> /opt`
  * Properly configure paths as below(Permanently by adding it to your `.bashrc`):  
    `echo 'export PATH=/opt/<extracted folder-name e.g gcc-8.2.0>/bin:$PATH' >> .bashrc`  
    `echo 'export LD_LIBRARY_PATH=/opt/<extracted folder-name e.g gcc-8.2.0>/lib:$LD_LIBRARY_PATH' >> .bashrc`  

 * **Manage Links as below:(Native Compiler Only)**  
   `source .bashrc`   
   `sudo ln -s /usr/include/arm-linux-gnueabihf/sys /usr/include/sys`   
   `sudo ln -s /usr/include/arm-linux-gnueabihf/bits /usr/include/bits`   
   `sudo ln -s /usr/include/arm-linux-gnueabihf/gnu /usr/include/gnu`   
   `sudo ln -s /usr/include/arm-linux-gnueabihf/asm /usr/include/asm`   
   `sudo ln -s /usr/lib/arm-linux-gnueabihf/crti.o /usr/lib/crti.o`   
   `sudo ln -s /usr/lib/arm-linux-gnueabihf/crt1.o /usr/lib/crt1.o`   
   `sudo ln -s /usr/lib/arm-linux-gnueabihf/crtn.o /usr/lib/crtn.o`   
 
* **Extra step to use Cross-Compiler Binaries with Cmake: (Cross-Compiler Only)** 
  Enable CMake's implicit directory feature by injecting the following lines into toolchain file: (Refer Issue:[#3](https://github.com/abhiTronix/raspberry-pi-cross-compilers/issues/3#issuecomment-453117354)) 
  ```
  unset(CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES)
  unset(CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES)
   ```
 
**That's it, Enjoy ;)**
 
---

 ## Testing: (Post Linking)
 You can check Installed versions as below:
 * Native Compiler(Raspberry pi):  
   `gcc --version`  
   `ld -v`  
   `ldd -v`  
 * Cross- Compiler (Ubuntu x64):  
   `arm-linux-gnueabihf-gcc --version`  
   `arm-linux-gnueabihf-ld -v`  
   `arm-linux-gnueabihf-ldd -v`  
 
## Supported Languages(full functionality):
- C++
- Fortan
- C
- Ask for other Language support.

## Advantages:
- C++17 support(Native Raspberrypi GCC 6.3.0 lacks it)
- Fastest inbuilt optimization flags(Raspberry optimized GCC)
- Rediculously low installation time(few mins)
- Benchmarking Results: https://www.phoronix.com/scan.php?page=article&item=gcc-81-benchmarks&num=1

### Side Note: 
*Building GCC 8.2.0 with the given cross compiler took about 35 minutes on my Ubuntu machine on all cores. Compare this with the straight 4~6 hours needed to build GCC 8.2.0 directly on Pi 3B+(+10 hours on Rpi2) at full CPU Load plus memory swapping needed and you will see the advantage of having a cross compiler on your main machine.*

---

## Contributing and licenses
The original compiled GCC files source is licensed under the [GNU v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html) license. However, This Project is licensed under the [Apache 2.0](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE) license.

You are welcome to contribute with suggestions or pull requests. To contact me, send an email.
 
## Thanks
https://gcc.gnu.org/ for original source files.   
https://www.raspberrypi.org/ for kernel Headers.   
http://preshing.com/20141119/how-to-build-a-gcc-cross-compiler/ for nice tuitorial.   
