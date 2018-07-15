#!/bin/bash
cd ../../../..
cd system/core
git apply -v ../../device/huawei/y5/patches/system_core.patch
cd ../..
cd bionic
git apply -v ../device/huawei/y5/patches/bionic.patch
cd ..
cd system/sepolicy
git apply -v ../../device/huawei/y5/patches/system_sepolicy.patch
cd ../..
cd frameworks/av
git apply -v ../../device/huawei/y5/patches/frameworks_av.patch
cd ..
cd native
git apply -v ../../device/huawei/y5/patches/frameworks_native.patch
cd ..
cd base
git apply -v ../../device/huawei/y5/patches/frameworks_base.patch
cd ..
cd opt/telephony
git apply -v ../../../device/huawei/y5/patches/frameworks_opt_telephony.patch
cd ../../..
cd packages/apps/Snap
git apply -v ../../../device/huawei/y5/patches/snap.patch
cd ..
cd FMRadio
git apply -v ../../../device/huawei/y5/patches/fmradio.patch
cd ..
cd Settings
git apply -v ../../../device/huawei/y5/patches/shivom.patch
cd ../../..
cd system/netd
git apply -v ../../device/huawei/y5/patches/system_netd.patch
cd ../..
cd vendor/cmsdk
git apply -v ../../device/huawei/y5/patches/vendor_cmsdk.patch
cd ../..

