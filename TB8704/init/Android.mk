LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := \
    system/core/base/include \
    system/core/init
LOCAL_CPPFLAGS := -Wall
LOCAL_SRC_FILES := init_tb8704.cpp
LOCAL_MODULE := libinit_tb8704

include $(BUILD_STATIC_LIBRARY)
