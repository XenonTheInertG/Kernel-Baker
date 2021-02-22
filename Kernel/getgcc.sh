#!/bin/bash

echo "Cloning GCC..."
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -b master toolchain/google
git clone https://github.com/Haseo97/DragonTC -b 7.0-20180726 toolchain/dragontc
echo "Done! Now run build.sh"
