LOCAL_PATH:= $(call my-dir)

#add prize launcher start
ifeq ($(L_PBAPK_PRIZE_LAUNCHER_SUPPORT),yes)

ifeq ($(L_PBAPK_PRIZE_EASYLAUNCHER),yes)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := PrizeEasyLauncher
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/PrizeEasyLauncher.apk
LOCAL_OVERRIDES_PACKAGES := Home Launcher2 Launcher3
LOCAL_PREBUILT_JNI_LIBS:= \
@lib/armeabi/liblocSDK7a.so \
@lib/armeabi/libMtaNativeCrash.so \
@lib/armeabi/libwebpbackport.so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)
else
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := PrizeLauncher
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/PrizeLauncher.apk
LOCAL_OVERRIDES_PACKAGES := Home Launcher2 Launcher3
LOCAL_PREBUILT_JNI_LIBS:= \
@lib/armeabi/liblocSDK6a.so \
@lib/armeabi/libMtaNativeCrash.so \
@lib/armeabi/libwebpbackport.so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := ThemeStore
LOCAL_MODULE_CLASS := APPS
#LOCAL_CERTIFICATE := PRESIGNED
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/ThemeStore.apk
LOCAL_PREBUILT_JNI_LIBS:= \
@lib/armeabi/libtpnsSecurity.so  \
@lib/armeabi/libxguardian.so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := InfoStream
LOCAL_MODULE_CLASS := APPS
#LOCAL_CERTIFICATE := PRESIGNED
LOCAL_CERTIFICATE := platform
LOCAL_DEX_PREOPT := false
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/InfoStream.apk
LOCAL_PREBUILT_JNI_LIBS:= \
@lib/armeabi/libwebpbackport.so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := PrizeAppOutAd
LOCAL_MODULE_CLASS := APPS
#LOCAL_CERTIFICATE := PRESIGNED
LOCAL_CERTIFICATE := platform
LOCAL_DEX_PREOPT := false
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/PrizeAppOutAd.apk
LOCAL_PREBUILT_JNI_LIBS:= \
@lib/armeabi/libBaiduMapSDK_base_v4_4_0.so  \
@lib/armeabi/liblocSDK7a.so  \
@lib/armeabi/libBaiduMapSDK_map_v4_4_0.so  \
@lib/armeabi/libwebpbackport.so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := PrizeGlobalData
LOCAL_MODULE_CLASS := APPS
#LOCAL_CERTIFICATE := PRESIGNED
LOCAL_CERTIFICATE := platform
LOCAL_DEX_PREOPT := false
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/PrizeGlobalData.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := PrizeGameCenter
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_CERTIFICATE := platform
LOCAL_DEX_PREOPT := false
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/PrizeGameCenter.apk
LOCAL_PREBUILT_JNI_LIBS:= \
@lib/armeabi/libApkPatchLibrary.so 
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := PrizeBrowser
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_CERTIFICATE := platform
LOCAL_DEX_PREOPT := false
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/PrizeBrowser.apk
LOCAL_PREBUILT_JNI_LIBS:= \
@lib/armeabi/libBugly.so  \
@lib/armeabi/libtencentloc.so 
include $(BUILD_PREBUILT)




include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := PrizeTips
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_CERTIFICATE := platform
LOCAL_DEX_PREOPT := false
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := app/PrizeTips.apk
LOCAL_PREBUILT_JNI_LIBS:= \
@lib/armeabi/libfb_jpegturbo.so  \
@lib/armeabi/libgifimage.so  \
@lib/armeabi/libimagepipeline.so  
LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/operator/app
include $(BUILD_PREBUILT)

endif