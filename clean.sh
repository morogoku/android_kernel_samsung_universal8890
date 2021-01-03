#!/bin/bash
#
#
# MoRoKernel Cleaning Script 1.0
#

export CROSS_COMPILE=/home/moro/kernel/toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-

# Clean Build Data
make clean
make ARCH=arm64 distclean


rm -f $PWD/arch/arm64/boot/Image 2>/dev/null
rm -f $PWD/arch/arm64/boot/dtb.img 2>/dev/null
rm -f $PWD/arch/arm64/boot/Image.gz 2>/dev/null
rm -f $PWD/scripts/dtbtool_exynos/dtbtool 2>/dev/null
rm -f $PWD/security/defex_lsm/defex_packed_rules.bin 2>/dev/null
rm -f $PWD/build.log 2>/dev/null








