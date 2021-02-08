#!/bin/bash


export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export ARCH=arm64
export KBUILD_BUILD_USER=Ramen
export KBUILD_BUILD_HOST=SUSANO
export SUBARCH=arm64
make m21_defconfig
make -j16
