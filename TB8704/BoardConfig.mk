#
# Copyright (C) 2019 The LineageOS Project
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
#

# inherit from common tb-common
-include device/lenovo/tb-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/TB8704

# Asserts
TARGET_OTA_ASSERT_DEVICE := TB-8704X,TB-8704F,TB-8704N,TB-8704V,TB-8704,TB8704,tb-8704x,tb-8704f,tb-8704n,tb-8704v,tb-8704,tb_8704x,tb_8704f,tb_8704n,tb_8704v,tb_8704

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_TS_MAKEUP := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_lenovo_tb8704
TARGET_RECOVERY_DEVICE_MODULES := libinit_lenovo_tb8704

# Kernel
TARGET_KERNEL_CONFIG := lineageos_tb8704_defconfig

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/goodix_gesture/gesture_enable"

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4080218112
BOARD_USERDATAIMAGE_PARTITION_SIZE := 9921059840 # 9921076224 - 16384
BOARD_ROOT_EXTRA_SYMLINKS += \
    /mnt/vendor/persist:/persist

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/lenovo/TB8704/BoardConfigVendor.mk
