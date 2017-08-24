#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm64
export CROSS_COMPILE=/home/francesco/aarch64-linux-android-4.9/bin/aarch64-linux-android-
##########################################
mkdir outputx2
mkdir outputzl1
##########################################
make -C $(pwd) O=outputx2 lineage_x2_defconfig
make -j64 -C $(pwd) O=outputx2

make -C $(pwd) O=outputzl1 lineage_zl1_defconfig
make -j64 -C $(pwd) O=outputzl1
##########################################
cp outputx2/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputzl1/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
