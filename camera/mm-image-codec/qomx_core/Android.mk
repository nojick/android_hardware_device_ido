LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := -Werror -g -O0

LOCAL_C_INCLUDES := \
    frameworks/native/include/media/openmax \
    $(LOCAL_PATH)/../qexif

LOCAL_SRC_FILES := qomx_core.c

LOCAL_MODULE := libqomx_core
LOCAL_32_BIT_ONLY := true
LOCAL_PRELINK_MODULE   := false
LOCAL_SHARED_LIBRARIES := libcutils libdl liblog

include $(BUILD_SHARED_LIBRARY)
