# Copyright 2013 The Android Open Source Project
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

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE	:= minimi
# Android-11
LOCAL_CFLAGS	:= -Werror -DDYNAMIC_ES3
# Android-18
# LOCAL_CFLAGS	:= -Werror
LOCAL_CFLAGS	:= -Wno-psabi

FILE_LIST		:= $(wildcard ($LOCAL_PATH)/*.cpp)
FILE_LIST		+= $(wildcard ($LOCAL_PATH)/minimi/*.cpp)
FILE_LIST		+= $(wildcard ($LOCAL_PATH)/minimi/**/*.cpp)
FILE_LIST		+= $(wildcard ($LOCAL_PATH)/minimi/**/**/*.cpp)
FILE_LIST		+= $(wildcard ($LOCAL_PATH)/minimi/**/**/**/*.cpp)


LOCAL_SRC_FILES	:= $(FILE_LIST:$(LOCAL_PATH)/%=%)
# Android-11
LOCAL_SRC_FILE	+= gl3stub.c

				   

LOCAL_LDLIBS	:= -llog
LOCAL_LDLIBS	+= -lEGL
LOCAL_LDLIBS	+= -landroid
LOCAL_LDLIBS	+= -lOpenSLES
LOCAL_LDLIBS	+= -lz
# Android-11
LOCAL_LDLIBS	+= -lGLESv2
# Android-18
# LOCAL_LDLIBS	+= -lGLESv3

include $(BUILD_SHARED_LIBRARY)
