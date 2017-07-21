LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS) 
LOCAL_MODULE := live555
LOCAL_SRC_FILES := liblive555.a
include $(PREBUILT_STATIC_LIBRARY) 

include $(CLEAR_VARS)    
LOCAL_MODULE    := stdc++
LOCAL_SRC_FILES := libstdc++.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS) 
LOCAL_C_INCLUDES += \
     $(LOCAL_PATH)/live/jni \
     $(LOCAL_PATH)/live/jni/BasicUsageEnvironment/include \
     $(LOCAL_PATH)/live/jni/liveMedia/include \
     $(LOCAL_PATH)/live/jni/groupsock/include \
     $(LOCAL_PATH)/live/jni/UsageEnvironment/include \

#LOCAL_SHARED_LIBRARIES := live555
LOCAL_STATIC_LIBRARIES := live555 stdc++

LOCAL_MODULE    := rtsplive555
LOCAL_SRC_FILES := \
	testRTSPClient.cpp
LOCAL_LDLIBS := -llog -lz

include $(BUILD_SHARED_LIBRARY)