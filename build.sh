#!/bin/bash
#


export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/moro/kernel/toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-


clear
echo ""
echo "Build Kernel for:"
echo ""
echo "(1) G930 - S7 Flat"
echo "(2) G935 - S7 Edge"
echo "(3) N935 - Note7 FE"
echo ""
echo "**************************************"
echo ""
read -p "Select an option to compile the kernel " prompt
echo ""

case $prompt in 
1)
    DEFCONFIG=exynos8890-herolte_defconfig
    ;;
2)
    DEFCONFIG=exynos8890-hero2lte_defconfig
    ;;
3)
    DEFCONFIG=exynos8890-gracelte_defconfig
    ;;
esac

echo "Defconfig: $DEFCONFIG"

export ANDROID_MAJOR_VERSION=p
export ANDROID_VERSION=90000 
export PLATFORM_VERSION=9.0.0

export LOCALVERSION="twrp"

(

make ARCH=arm64 $DEFCONFIG
make -j16 ARCH=arm64

) 2>&1 | tee -a ./build.log
