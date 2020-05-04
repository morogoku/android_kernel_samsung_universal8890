#!/bin/bash
#


export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/moro/kernel/toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-


DEFCONFIG=exynos8890-hero2lte_defconfig

if [ ! -z $1 ]; then
    case $1 in 
    flat)
        DEFCONFIG=exynos8890-herolte_defconfig
        ;;
    *)
        DEFCONFIG=exynos8890-hero2lte_defconfig
        ;;
    esac
fi


export ANDROID_MAJOR_VERSION=o 
export ANDROID_VERSION=80000 
export PLATFORM_VERSION=8.0.0

export LOCALVERSION="twrp-r05"

(

make ARCH=arm64 $DEFCONFIG
make -j8 ARCH=arm64

) 2>&1 | tee -a ./build.log
