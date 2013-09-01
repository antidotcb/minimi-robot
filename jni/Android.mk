LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := minimi

LOCAL_CFLAGS := -Werror
LOCAL_CFLAGS += -DDYNAMIC_ES3
LOCAL_CFLAGS += -Wno-psabi

FILE_LIST		:= $(wildcard $(LOCAL_PATH)/*.c)
FILE_LIST		+= $(wildcard $(LOCAL_PATH)/*.cpp)
FILE_LIST		+= $(wildcard $(LOCAL_PATH)/minimi/*.cpp)
FILE_LIST		+= $(wildcard $(LOCAL_PATH)/minimi/**/*.cpp)
FILE_LIST		+= $(wildcard $(LOCAL_PATH)/minimi/**/**/*.cpp)
FILE_LIST		+= $(wildcard $(LOCAL_PATH)/minimi/**/**/**/*.cpp)

LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

LOCAL_LDLIBS	:= -llog
LOCAL_LDLIBS	+= -lEGL
LOCAL_LDLIBS	+= -landroid
LOCAL_LDLIBS	+= -lOpenSLES
LOCAL_LDLIBS	+= -lz
LOCAL_LDLIBS	+= -lGLESv2
#LOCAL_LDLIBS	+= -lGLESv3

include $(BUILD_SHARED_LIBRARY)