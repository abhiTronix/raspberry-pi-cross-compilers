# Latest Set of Precompiled Raspberry Pi GCC Cross-Compilers.
## Update 02,September,2018

### Current Binaries: 
- 8.2.0 (Ubuntu Cross-Compiled & Raspberry Pi Native)
- 6.3.0 (Ubuntu Cross-Compiled only)

### Supported Raspberry Pi:
Raspberry Pi 2/3 any version/model (Zero and 1 are not currently supported) 

### Supported Languages(full functionality):
- C++
- Fortan
- C

### Summary:
A cross compiler is a compiler that runs on an operating system and produces executables for another. This is really useful when you want to use your beefy computer to build a library or other large piece of code for Raspberry Pi.

This project contains the Latest Set of Precompiled Raspberry pi GCC Cross-Compilers(*i.e. 8.2.0*), saving your tons of time(*No compiling or Error Handling needed whatsoever*). Just Extract, Link & Enjoy full GCC(*Raspberry Pi*) functionality in your Machine. You can use it as native compiler for raspberry pi(*replaces old & slow 6.3.0 GCC with no C++17 support with latest 8.2.0 one*), Or use it as Cross-Compiler in any Linux Machine(*Tested on Latest Ubuntu/bionic*) to compile programs for your Raspberry Pi (*Both Latest 8.2.0 & Current 6.3.0 binaries available*).

### Side Note: 
*Building GCC 8.2.0 with the given cross compiler took about 45 minutes on my Ubuntu machine on all cores. Compare this with the straight 15~20 hours needed to build GCC 8.2.0 directly on Pi 3B+(+24 hours on Rpi2) at full CPU Load plus memory swapping needed and you will see the advantage of having a cross compiler on your main machine.*

## How to Download?
Compressed Binary Files are already available in this repo.

Below are the correct steps to download them through Bash/Terminal:
### Prerequesties:
- Git `sudo apt-get install git`

