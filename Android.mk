LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),PAPER_PRO)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif

