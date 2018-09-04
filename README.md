# Latest Set of Precompiled Raspberry Pi GCC Cross-Compilers/Native Binaries(Fastest & Easiest Method)
## Update 02, September, 2018

### Current Binaries: 
- 8.2.0 (Cross-Compiler & Native)
- 6.3.0 (Cross-Compiler only)

### Supported Raspberry Pi:
Raspberry Pi Zero/2/3 any version/model (Performance may vary)

### Supported Languages(full functionality):
- C++
- Fortan
- C

### Advantages:
- C++17 support(Native Raspberrypi GCC 6.3.0 lacks it)
- Fastest inbuilt optimization flags(Raspberry optimized GCC)
- Rediculously low installation time(few mins)
- Benchmarking Results: https://www.phoronix.com/scan.php?page=article&item=gcc-81-benchmarks&num=1

## Summary:
This project contains the Latest Set of Precompiled Raspberry pi GCC Cross-Compilers(*i.e. 8.2.0*), saving your tons of time(*No compiling or Error Handling needed whatsoever*). Just Extract, Link & Enjoy full GCC(*Raspberry Pi*) functionality in your Machine. You can use it as native compiler for raspberry pi(*Can be used besides old & slow 6.3.0 GCC with full C++17 support*), Or use it as Cross-Compiler in any Linux Machine(*Tested on Latest Ubuntu/bionic x64*) to compile programs for your Raspberry Pi (*Both Latest 8.2.0 & Current 6.3.0 binaries available*).

### Binaries Description:
- `gcc-6.3.0-rpi.tar.bz2` - GCC Raspberry Pi Cross-Compilier version 6.3.0, works with Ubuntu x64(or other Linux x64)
- `gcc-8.2.0-rpi.tar.bz2` - GCC Raspberry Pi Cross-Compilier version 8.2.0, works with Ubuntu x64(or other Linux x64)
- `gcc-8.2.0.tar.bz2` - GCC Native Raspberry Pi version 8.2.0, works with Raspberry Pi 2/3 any Model(Zero not tested)

### Side Note: 
*Building GCC 8.2.0 with the given cross compiler took about 35 minutes on my Ubuntu machine on all cores. Compare this with the straight 4~6 hours needed to build GCC 8.2.0 directly on Pi 3B+(+10 hours on Rpi2) at full CPU Load plus memory swapping needed and you will see the advantage of having a cross compiler on your main machine.*

## Binaries Download:
Compressed Binary Files are already available in this repo.
You can easily download them through your Bash/Terminal:<br>
`wget https://media.githubusercontent.com/media/abhiTronix/raspberry-pi-cross-compilers/master/<filename e.g gcc-6.3.0-rpi.tar.bz2>`

## Extracting & Linking:
### Prerequisites (Native & Cross-Compiler):
- Update your environment `sudo apt-get update && dist-upgrade`
- Build-essential gawk, textinfo, git, bison `sudo apt install build-essential gawk git textinfo bison`

### Extracting  (Native & Cross-Compiler):
Extract files using cmd: `tar xf <filename e.g gcc-6.3.0-rpi.tar.bz2>`

### Linking  (Native & Cross-Compiler):
- Move files to its correct location (ie `/opt`) using cmd: `sudo mv <extracted folder-name e.g gcc-6.3.0> /opt`
- Properly configure paths as below(Permanently by adding it to your `.bashrc`):<br>
`echo 'export PATH=/opt/<extracted folder-name e.g gcc-6.3.0>/bin:$PATH' >> .bashrc`<br>
`echo 'export LD_LIBRARY_PATH=/opt/<extracted folder-name e.g gcc-6.3.0>/lib:$LD_LIBRARY_PATH' >> .bashrc`<br>

 - **Manage Links as below:(Native Compiler Only)**<br>
 `source .bashrc` <br>
 `sudo ln -s /usr/include/arm-linux-gnueabihf/sys /usr/include/sys` <br>
 `sudo ln -s /usr/include/arm-linux-gnueabihf/bits /usr/include/bits` <br>
 `sudo ln -s /usr/include/arm-linux-gnueabihf/gnu /usr/include/gnu` <br>
 `sudo ln -s /usr/include/arm-linux-gnueabihf/asm /usr/include/asm` <br>
 `sudo ln -s /usr/lib/arm-linux-gnueabihf/crti.o /usr/lib/crti.o` <br>
 `sudo ln -s /usr/lib/arm-linux-gnueabihf/crt1.o /usr/lib/crt1.o` <br>
 `sudo ln -s /usr/lib/arm-linux-gnueabihf/crtn.o /usr/lib/crtn.o` <br>
 ### That's it, Enjoy ;)
 
 ## Testing: (Post Linking)
 You can check Installed versions as below:
 - Native Compiler(Raspberry pi):<br>
 `gcc --version`<br>
 `ld -v`<br>
 `ldd -v`<br>
 - Cross- Compiler (Ubuntu x64):<br>
 `arm-linux-gnueabihf-gcc --version`<br>
 `arm-linux-gnueabihf-ld -v`<br>
 `arm-linux-gnueabihf-ldd -v`<br>
 
 
## Contributing and licenses
The original compiled GCC files source is licensed under the [GNU v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html) license. However, This Project is licensed under the [Apache 2.0](https://github.com/abhiTronix/raspberry-pi-cross-compilers/blob/master/LICENSE) license.

You are welcome to contribute with suggestions or pull requests. To contact me, send an email.
 
## Thanks
https://gcc.gnu.org/ for original source files. <br>
https://www.raspberrypi.org/ for kernel Headers. <br>
http://preshing.com/20141119/how-to-build-a-gcc-cross-compiler/ for nice tuitorial. <br>



