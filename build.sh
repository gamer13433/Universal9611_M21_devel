export KBUILD_BUILD_USER=Ramen
export KBUILD_BUILD_HOST=SUSANO
export ARCH=arm64
export SUBARCH=arm64
export ANDROID_MAJOR_VERSION=q
export PATH="/home/_123/KERNEL/proton-clang/bin:$PATH"
make exynos9610-m21dd_defconfig
make -j16
