LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),kunlun2)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
