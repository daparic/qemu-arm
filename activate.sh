
# Download from:
# https://releases.linaro.org/components/toolchain/binaries/latest-7/aarch64-linux-gnu/gcc-linaro-7.5.0-2019.12-i686-mingw32_aarch64-linux-gnu.tar.xz
ARM_CROSS_COMPILER=/d/compilers/gcc-linaro-7.5.0-2019.12-i686-mingw32_aarch64-linux-gnu

export PATH=$ARM_CROSS_COMPILER/bin/:`pwd`/win:$PATH
