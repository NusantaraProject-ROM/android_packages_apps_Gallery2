LOCAL_PATH:= $(call my-dir)

Gallery2_jni_cflags := \
    -Wall -Wextra -Werror \
    -Wno-error=constant-conversion \
    -Wno-unused-parameter \

# to fix implicit conversion from 'int' to 'char', (255 to -1, 128 to -128)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -DEGL_EGLEXT_PROTOTYPES
LOCAL_CFLAGS += $(Gallery2_jni_cflags)

LOCAL_SRC_FILES := jni_egl_fence.cpp

LOCAL_SDK_VERSION := 9

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := libjni_eglfence

LOCAL_LDLIBS := -llog -lEGL


include $(BUILD_SHARED_LIBRARY)