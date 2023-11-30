# Parasoft C/C++test Embedded Demo 

[![asciicast](https://asciinema.org/a/FlmbZrEgB2sNjWbHGRdjY92Pt.svg)](https://asciinema.org/a/FlmbZrEgB2sNjWbHGRdjY92Pt)

The highlights of this example project is to demonstrate [Parasoft C/C++test](https://docs.parasoft.com/display/CPPTESTPROEC20231) capabilities for software quality improvement in the embedded software domain. Capabilities for:

- Cross compilation to a target's platform
- Support for embedded OS software testing workflows
- Custom workflow recipes 
- IDE integration (Eclipse, Keil, TI CCS, etc)

will be demonstrated through this example project.  The steps described here is applicable both in a Windows or in a Linux as the host development machine. 

## Download Cross Compiler

For Windows, download [Linaro GCC 7.5-2019.12](https://releases.linaro.org/components/toolchain/binaries/latest-7/aarch64-linux-gnu/gcc-linaro-7.5.0-2019.12-i686-mingw32_aarch64-linux-gnu.tar.xz) and unzip it to a location of your choice.

For Linux, download [Linaro GCC 7.5-2019.12](https://releases.linaro.org/components/toolchain/binaries/latest-7/aarch64-linux-gnu/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu.tar.xz) and unzip it to a location of your choice.

Edit [activate.sh](https://github.com/daparic/qemu-arm/blob/main/activate.sh) file for path adjustment changes, where you unzipped the Linaro cross compiler.

## Windows Git Bash

Install [Git bash](https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe) as we will be using it as our terminal for Windows machine. Open git bash shell, clone the project and set environment variables:

```
git clone https://github.com/daparic/qemu-arm
cd qemu-arm/
# Ensure that the necessary path adjustments have been made, then activate it.
source activate.sh
```

There is nothing to do on this part in a Linux Ubuntu development machine. 

## Setup QEMU ARM Emulator

For portability of this demo, [QEMU ARM Emulation](https://github.com/daparic/qemu-arm/tree/main/qemu) shall be used. 
