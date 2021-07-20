#!/bin/bash
# Custom kernel build script
# By XenonTheInertG 

echo "Applying some settings..."
export CROSS_COMPILE=toolchain/google/bin/aarch64-linux-android-
export CLANG_TCHAIN=toolchain/dragontc/bin/clang
export ARCH=arm64

# FLAGS
export CLANG_TRIPLE="aarch64-linux-gnu-"
export OPT_FLAGS="-O3 -pipe -fvectorize -fslp-vectorize -freroll-loops -funroll-loops"
export ARCH_FLAGS="-mtune=kryo+fp+simd -mhvx-double -mhvx -marm"
export POLLY_FLAGS="-mllvm -polly -mllvm -polly-run-dce -mllvm -polly-run-inliner -mllvm -polly-opt-fusion=max -mllvm -polly-ast-use-context -mllvm -polly-detect-keep-going -mllvm -polly-vectorizer=stripmine"
# OUTPUT
export objdir="out"

echo "Starting build..."
make ARCH="arm64" O=$objdir $dtdevice_defconfig
make CC="${CLANG_TCHAIN}" O=$objdir
make CC="${CLANG_TCHAIN}" O=$objdir OPT_FLAGS="${OPT_FLAGS} ${ARCH_FLAGS} ${POLLY_FLAGS}" Image.gz-dtb
make -j32 O=$objdir
