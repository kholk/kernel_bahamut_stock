#!/bin/bash

export PATH=/home/oshmoun/omni/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:$PATH
export PATH=/home/oshmoun/omni/prebuilts/misc/linux-x86/dtc:$PATH
export KBUILD_DIFFCONFIG=bahamut_diffconfig

make CONFIG_BUILD_ARM64_DT_OVERLAY=y ARCH=arm64 DTC_EXT=dtc CROSS_COMPILE=aarch64-linux-android- REAL_CC=/home/oshmoun/github/proprietary_vendor_qcom_sdclang-8.0_linux-x86/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- vendor/sm8150-perf_defconfig

make CONFIG_BUILD_ARM64_DT_OVERLAY=y ARCH=arm64 DTC_EXT=dtc CROSS_COMPILE=aarch64-linux-android- REAL_CC=/home/oshmoun/github/proprietary_vendor_qcom_sdclang-8.0_linux-x86/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- -j24 modules
