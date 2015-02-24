# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/samsung/i9308

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/system/bin/gpsd:system/bin/gpsd \
    $(LOCAL_PATH)/proprietary/system/lib/hw/gps.exynos4.so:system/lib/hw/gps.exynos4.so \
    $(LOCAL_PATH)/proprietary/system/lib/hw/camera.vendor.smdk4x12.so:system/lib/hw/camera.vendor.smdk4x12.so \
    $(LOCAL_PATH)/proprietary/system/lib/libsec-ril.so:system/lib/libsec-ril.so \
    $(LOCAL_PATH)/proprietary/system/usr/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc \
    $(LOCAL_PATH)/proprietary/system/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl


ifneq ($(BOARD_CUSTOM_BOOTIMG_MK),)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/proprietary/zImage:kernel \
    $(LOCAL_PATH)/proprietary/system/lib/modules/auth_rpcgss.ko:system/lib/modules/auth_rpcgss.so \
    $(LOCAL_PATH)/proprietary/system/lib/modules/cifs.ko:system/lib/modules/cifs.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/mvpkm.ko:system/lib/modules/mvpkm.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/pvtcpkm.ko:system/lib/modules/pvtcpkm.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/sunrpc.ko:system/lib/modules/sunrpc.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/btlock.ko:system/lib/modules/btlock.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/commkm.ko:system/lib/modules/commkm.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/lockd.ko:system/lib/modules/lockd.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/nfs.ko:system/lib/modules/nfs.ko \
    $(LOCAL_PATH)/proprietary/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko

endif

