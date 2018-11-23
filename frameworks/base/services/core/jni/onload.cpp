/*
* Copyright (C) 2014 MediaTek Inc.
* Modification based on code covered by the mentioned copyright
* and/or permission notice(s).
*/
/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "JNIHelp.h"
#include "jni.h"
#include "utils/Log.h"
#include "utils/misc.h"

namespace android {
int register_android_server_ActivityManagerService(JNIEnv* env);
int register_android_server_AlarmManagerService(JNIEnv* env);
int register_android_server_AssetAtlasService(JNIEnv* env);
int register_android_server_BatteryStatsService(JNIEnv* env);
int register_android_server_ConsumerIrService(JNIEnv *env);
int register_android_server_InputApplicationHandle(JNIEnv* env);
int register_android_server_InputWindowHandle(JNIEnv* env);
int register_android_server_InputManager(JNIEnv* env);
int register_android_server_LightsService(JNIEnv* env);
int register_android_server_PowerManagerService(JNIEnv* env);
int register_android_server_SerialService(JNIEnv* env);
int register_android_server_SystemServer(JNIEnv* env);
int register_android_server_UsbDeviceManager(JNIEnv* env);
int register_android_server_UsbMidiDevice(JNIEnv* env);
int register_android_server_UsbHostManager(JNIEnv* env);
int register_android_server_vr_VrManagerService(JNIEnv* env);
int register_android_server_VibratorService(JNIEnv* env);
int register_android_server_location_GnssLocationProvider(JNIEnv* env);
int register_android_server_location_FlpHardwareProvider(JNIEnv* env);
int register_android_server_connectivity_Vpn(JNIEnv* env);
int register_android_server_hdmi_HdmiCecController(JNIEnv* env);
int register_android_server_tv_TvUinputBridge(JNIEnv* env);
int register_android_server_tv_TvInputHal(JNIEnv* env);
int register_android_server_PersistentDataBlockService(JNIEnv* env);
int register_android_server_Watchdog(JNIEnv* env);
int register_android_server_HardwarePropertiesManagerService(JNIEnv* env);
};

/// M: Mediatek defined @{
namespace android {
int register_com_mediatek_perfservice_PerfServiceManager(JNIEnv* env);
#if defined (MTK_HDMI_SUPPORT)
int register_com_mediatek_hdmi_MtkHdmiManagerService(JNIEnv* env);
#endif
// Mediatek AAL support
int register_android_server_display_DisplayPowerController(JNIEnv* env);
int register_com_mediatek_fpspolicy_FpsInfo(JNIEnv* env);
#ifndef MTK_BSP_PACKAGE
int register_com_android_internal_app_ShutdownManager(JNIEnv *env);
#endif
};
/// @}

using namespace android;

extern "C" jint JNI_OnLoad(JavaVM* vm, void* /* reserved */)
{
    JNIEnv* env = NULL;
    jint result = -1;

    if (vm->GetEnv((void**) &env, JNI_VERSION_1_4) != JNI_OK) {
        ALOGE("GetEnv failed!");
        return result;
    }
    ALOG_ASSERT(env, "Could not retrieve the env!");

    register_android_server_ActivityManagerService(env);
    register_android_server_PowerManagerService(env);
    register_android_server_SerialService(env);
    register_android_server_InputApplicationHandle(env);
    register_android_server_InputWindowHandle(env);
    register_android_server_InputManager(env);
    register_android_server_LightsService(env);
    register_android_server_AlarmManagerService(env);
    register_android_server_UsbDeviceManager(env);
    register_android_server_UsbMidiDevice(env);
    register_android_server_UsbHostManager(env);
    register_android_server_vr_VrManagerService(env);
    register_android_server_VibratorService(env);
    register_android_server_SystemServer(env);
    register_android_server_location_GnssLocationProvider(env);
    register_android_server_location_FlpHardwareProvider(env);
    register_android_server_connectivity_Vpn(env);
    register_android_server_AssetAtlasService(env);
    register_android_server_ConsumerIrService(env);
    register_android_server_BatteryStatsService(env);
    register_android_server_hdmi_HdmiCecController(env);
    register_android_server_tv_TvUinputBridge(env);
    register_android_server_tv_TvInputHal(env);
    register_android_server_PersistentDataBlockService(env);
    register_android_server_Watchdog(env);
    register_android_server_HardwarePropertiesManagerService(env);

    /// M: Mediatek defined
    register_com_mediatek_perfservice_PerfServiceManager(env);
#if defined (MTK_HDMI_SUPPORT)
    register_com_mediatek_hdmi_MtkHdmiManagerService(env);
#endif
    // Mediatek AAL support
    register_android_server_display_DisplayPowerController(env);
    register_com_mediatek_fpspolicy_FpsInfo(env);
#ifndef MTK_BSP_PACKAGE
    register_com_android_internal_app_ShutdownManager(env);
#endif


    return JNI_VERSION_1_4;
}