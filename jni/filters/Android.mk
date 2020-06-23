LOCAL_PATH:= $(call my-dir)

Gallery2_jni_cflags := \
    -Wall -Wextra -Werror \
    -Wno-error=constant-conversion \
    -Wno-unused-parameter \

# Filtershow

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_SDK_VERSION := 9
LOCAL_MODULE    := libjni_filtershow_filters
LOCAL_SRC_FILES := gradient.c \
                   saturated.c \
                   exposure.c \
                   edge.c \
                   contrast.c \
                   hue.c \
                   shadows.c \
                   highlight.c \
                   hsv.c \
                   vibrance.c \
                   geometry.c \
                   negative.c \
                   redEyeMath.c \
                   fx.c \
                   wbalance.c \
                   redeye.c \
                   bwfilter.c \
                   tinyplanet.cc \
                   kmeans.cc

LOCAL_CFLAGS += -ffast-math -O3 -funroll-loops
LOCAL_CFLAGS += $(Gallery2_jni_cflags)
LOCAL_LDLIBS := -llog -ljnigraphics
LOCAL_ARM_MODE := arm

include $(BUILD_SHARED_LIBRARY)