# Parasoft C/C++test Embedded Demo 

https://www.youtube.com/watch?v=Rzvrv1JIHrM

The highlights of this example project is to demonstrate [Parasoft C/C++test](https://docs.parasoft.com/display/CPPTESTPROEC20231) capabilities for software quality improvement in the embedded software domain. Capabilities for:

- Cross compilation to a target's platform
- Support for embedded OS software testing workflows
- Custom workflow recipes 
- IDE integration (Eclipse, Keil, TI CCS, etc)

will be demonstrated through this example project.  The steps described here is applicable both in a Windows or in a Linux as the host development machine. 

## Prerequisites

- [Parasoft C/C++test Professional](https://www.parasoft.com/data-sheet/parasoft-c-ctest/)
- Linaro ARM cross-compiler
- QEMU ARM Emulator

## Download Cross Compiler

For Windows, download [Linaro GCC 7.5-2019.12 for Windows](https://releases.linaro.org/components/toolchain/binaries/latest-7/aarch64-linux-gnu/gcc-linaro-7.5.0-2019.12-i686-mingw32_aarch64-linux-gnu.tar.xz) and unzip it to a location of your choice.

For Linux, download [Linaro GCC 7.5-2019.12 for Linux](https://releases.linaro.org/components/toolchain/binaries/latest-7/aarch64-linux-gnu/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu.tar.xz) and unzip it to a location of your choice.

Edit [activate.sh](https://github.com/daparic/qemu-arm/blob/main/activate.sh) file for path adjustment changes, where you unzipped the Linaro cross compiler.

## Setup QEMU ARM Emulator

For portability of this demo, [QEMU ARM Emulation](https://github.com/daparic/qemu-arm/tree/main/qemu) shall be used. 

## Others

Windows development machine needs to install [Git bash](https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe) as we will be using it as our terminal for Windows machine. Open git bash shell, clone the project and set environment variables:

```
git clone https://github.com/daparic/qemu-arm
cd qemu-arm/
# Ensure that the necessary path adjustments have been made, then activate it.
source activate.sh
```
## Note
The demo here which uses the custom compiler in the github repository only works for the 2023.1 version. If you are using a newer version such as the 2023.2 then you have to create a custom compiler instead of importing from the one in the github repository.

The custom compiler created in 2023.1 only works on same version 2023.1 of "Parasoft C/C++test" tool.
