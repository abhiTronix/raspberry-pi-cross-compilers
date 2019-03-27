<h1 align="center">Latest Set of Precompiled GCC Cross & Native Compiler Binaries/Toolchains for Raspberry Pi/ARM</h1> 

<img alt="Main Logo" src="https://raw.githubusercontent.com/abhiTronix/Imbakup/master/Images/CCNC.png">

<a href="https://sourceforge.net/p/raspberry-pi-cross-compilers/"><img alt="Download Raspberry Pi GCC Cross & Native Compiler" src="https://sourceforge.net/sflogo.php?type=17&group_id=3021982" width=200></a> [![Download Raspberry Pi GCC Cross & Native Compiler](https://img.shields.io/sourceforge/dm/raspberry-pi-cross-compilers.svg)](https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/latest/download) 
## Summary:
This project contains the UpToDate set of **Precompiled Raspberry pi GCC Cross & Native Compilers Binaries/Toolchains**, saving your tons of time(*No compiling or Error Handling needed whatsoever*). Just Extract, Link & Enjoy complete GCC(*Raspberry Pi*) functionality in your Machine. You can use its native compilers for Raspberry Pi(*Can be used along with old & slow 6.3.0 GCC*), Or use the Cross-Compiler in any Linux Machine(*Tested on Latest Ubuntu/bionic x64*) to compile programs for your Raspberry Pi. All these compilers binaries are Raspberry Pi hardware optimized for enhanced overall performance. 

### Features:
- Fully Raspberry Pi Optimized and Improved Performance [Benchmarking Result](https://www.phoronix.com/scan.php?page=article&item=gcc-81-benchmarks&num=1)
- C++17 support (Default Raspberry pi GCC 6.3.0 lacks it) and Other [Major Changes](https://www.gnu.org/software/gcc/gcc-8/changes.html)
- Fastest inbuilt **LTO-Link-Time-Optimizations**(*Raspberry pi hardware optimized GCC*)
- Ridiculously low installation time(few mins)
- Best Cross-Compiler Cmake Compatibility

### Supported GCC Versions:
- GCC 6.3.0
- GCC 7.4.0
- GCC 8.2.0
- GCC 8.3.0

### Supported Raspberry Pis:
- All Raspberry Pi versions/models are currently supported. 
- Any other ARM Devices with similar Hardware configurations may also work.

### Supported Environments:
- **Cross-Compiler:** All Linux Distros (x32/x64) are currently supported.
- **Native-Compiler:** All Raspberry Pi version/model with Raspbian OS is supported. Other OS may/maynot work.

### Supported Languages(full functionality):
- C++
- Fortran
- C
- Ask for other Language support.

---

## Extracting & Linking & Testing: (Read & Execute Carefully)

#### **TO AVOID UNDESIRED ERRORS & COMPATIBITY ISSUES, STRICTLY FOLLOW THE STEPS GIVEN BELOW:** 

- [For Native Compilers](https://github.com/abhiTronix/raspberry-pi-cross-compilers/wiki/Native-Compiler:-Linking-&-Testing-Instructions)

- [For Cross Compilers](https://github.com/abhiTronix/raspberry-pi-cross-compilers/wiki/Cross-Compiler:-Linking-&-Testing-Instructions)

***Don't forget to Share, drop a :star:***

---

## Binaries Download:

#### Compressed Precompiled Binary Files are available. You can easily download them from **Sourceforge**: 
<h3 align=center href=https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/><img alt="Download Raspberry-pi-cross-compilers" src="https://a.fsdn.com/con/app/sf-download-button"></h3>

#### Files https://sourceforge.net/projects/raspberry-pi-cross-compilers/files/  

### Binaries Description:
![](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/Images/Binaries.png)

### Available Binaries Reference Tree:
```shell
Raspberry Pi GCC Cross & Native Compilers
├── Raspberry Pi GCC Cross-Compilers
│   ├── GCC 6.3.0
│   │   ├── Raspberry Pi 1, Zero
│   │   │   └── cross-gcc-6.3.0-pi_0-1.tar.gz
│   │   ├── Raspberry Pi 2, 3
│   │   │   └── cross-gcc-6.3.0-pi_2-3.tar.gz
│   │   └── Raspberry Pi 3A+, 3B+
│   │       └── cross-gcc-6.3.0-pi_3+.tar.gz
│   ├── GCC 7.4.0
│   │   ├── Raspberry Pi 1, Zero
│   │   │   └── cross-gcc-7.4.0-pi_0-1.tar.gz
│   │   ├── Raspberry Pi 2, 3
│   │   │   └── cross-gcc-7.4.0-pi_2-3.tar.gz
│   │   └── Raspberry Pi 3A+, 3B+
│   │       └── cross-gcc-7.4.0-pi_3+.tar.gz
│   ├── GCC 8.2.0
│   │   ├── Raspberry Pi 1, Zero
│   │   │   └── cross-gcc-8.2.0-pi_0-1.tar.gz
│   │   ├── Raspberry Pi 2, 3
│   │   │   └── cross-gcc-8.2.0-pi_2-3.tar.gz
│   │   └── Raspberry Pi 3A+, 3B+
│   │       └── cross-gcc-8.2.0-pi_3+.tar.gz
│   └── GCC 8.3.0
│       ├── Raspberry Pi 1, Zero
│       │   └── cross-gcc-8.3.0-pi_0-1.tar.gz
│       ├── Raspberry Pi 2, 3
│       │   └── cross-gcc-8.3.0-pi_2-3.tar.gz
│       └── Raspberry Pi 3A+, 3B+
│           └── cross-gcc-8.3.0-pi_3+.tar.gz
└── Raspberry Pi GCC Native-Compilers
    ├── GCC 7.4.0
    │   ├── Raspberry Pi 1, Zero
    │   │   └── native-gcc-7.4.0-pi_0-1.tar.gz
    │   ├── Raspberry Pi 2, 3
    │   │   └── native-gcc-7.4.0-pi_2-3.tar.gz
    │   └── Raspberry Pi 3A+, 3B+
    │       └── native-gcc-7.4.0-pi_3+.tar.gz
    ├── GCC 8.2.0
    │   ├── Raspberry Pi 1, Zero
    │   │   └── native-gcc-8.2.0-pi_0-1.tar.gz
    │   ├── Raspberry Pi 2, 3
    │   │   └── native-gcc-8.2.0-pi_2-3.tar.gz
    │   └── Raspberry Pi 3A+, 3B+
    │       └── native-gcc-8.2.0-pi_3+.tar.gz
    └── GCC 8.3.0
        ├── Raspberry Pi 1, Zero
        │   └── native-gcc-8.3.0-pi_0-1.tar.gz
        ├── Raspberry Pi 2, 3
        │   └── native-gcc-8.3.0-pi_2-3.tar.gz
        └── Raspberry Pi 3A+, 3B+
            └── native-gcc-8.3.0-pi_3+.tar.gz

30 directories, 21 files

```
---

### Optimation Flags Involved:
These gcc compilers can optimize code by taking advantage of CPU specific features. 

|Board|Optimation Flags|
|---|---|
|Raspberry Pi - **Zero/ Zero W/ Zero WH & 1 Model A/B/A+/B+**|`-march=armv6 -mfloat-abi=hard -mfpu=vfp`|
|Raspberry Pi - **2&3 Model A/B**|`-march=armv7-a -mfloat-abi=hard -mfpu=neon-vfpv4`|
|Raspberry Pi - **3 Model A+/B+**|`-march=armv8-a -mfloat-abi=hard -mfpu=neon-fp-armv8`|

### Support This Project :heart: :

If this project help you reduce time to develop, you can give me a cup of coffee :)

[**Donate with PayPal**](https://paypal.me/AbhiTronix?locale.x=en_GB) :blush:


### Contributing and licenses:
The original compiled GCC files source is licensed under the [GNU v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html) license. However, This Project is licensed under the [Apache 2.0](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE) license.

You are welcome to contribute with suggestions or pull requests.
 
### Thanks
https://gcc.gnu.org/ for original source files.   
https://www.raspberrypi.org/ for kernel Headers.   
http://preshing.com/20141119/how-to-build-a-gcc-cross-compiler/ for nice tutorial.   
