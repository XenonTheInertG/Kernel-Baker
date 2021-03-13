#!/bin/bash
# 2021 (c) Noble-Kernel/XenonTheInertG

git clone https://github.com/LineageOS/android_packages_resources_devicesettings -b $BRNCH packages/resources/devicesettings
git clone https://github.com/LineageOS/android_device_qcom_commom -b $BRNCH frvice/qcom/common
git clone https://github.com/LineageOS/android_device_cyanogen_msm8916-common -b $BRNCH frvice/cyanogen/msm8916-common
(add your device common tree here,you can find it github? Don't have device tree? that's not a problem, watch my Roms & kernels compliation;)

