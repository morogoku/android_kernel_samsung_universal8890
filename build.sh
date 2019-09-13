#!/bin/bash
#



# SETUP
# -----
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/moro/kernel/toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-

DEFCONFIG=exynos8890-hero2lte_defconfig

export ANDROID_MAJOR_VERSION=p 
export ANDROID_VERSION=90000 
export PLATFORM_VERSION=9.0.0

(

make ARCH=arm64 $DEFCONFIG
make -j8 ARCH=arm64

) 2>&1 | tee -a ./build.log
