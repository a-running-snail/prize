/*
* Copyright (C) 2014 MediaTek Inc.
* Modification based on code covered by the mentioned copyright
* and/or permission notice(s).
*/
/*
 * Copyright (C) 2011 The Android Open Source Project
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

package com.android.server.pm;

import java.io.File;
import java.util.List;

final class PendingPackage extends PackageSettingBase {
    final int sharedId;

    PendingPackage(String name, String realName, File codePath, File resourcePath,
            String legacyNativeLibraryPathString, String primaryCpuAbiString,
            String secondaryCpuAbiString, String cpuAbiOverrideString, int sharedId,
            int pVersionCode, int pkgFlags, int pkgPrivateFlags, String parentPackageName,
            List<String> childPackageNames) {
        super(name, realName, codePath, resourcePath, legacyNativeLibraryPathString,
                primaryCpuAbiString, secondaryCpuAbiString, cpuAbiOverrideString,
                pVersionCode, pkgFlags, pkgPrivateFlags, parentPackageName, childPackageNames);
        this.sharedId = sharedId;
    }

    /// M: [FlagExt] Additional constructor for MTK flags
    PendingPackage(String name, String realName, File codePath, File resourcePath,
            String legacyNativeLibraryPathString, String primaryCpuAbiString,
            String secondaryCpuAbiString, String cpuAbiOverrideString, int sharedId,
            int pVersionCode, int pkgFlags, int pkgPrivateFlags, int flagsEx,
            String parentPackageName, List<String> childPackageNames) {
        super(name, realName, codePath, resourcePath, legacyNativeLibraryPathString,
                primaryCpuAbiString, secondaryCpuAbiString, cpuAbiOverrideString,
                pVersionCode, pkgFlags, pkgPrivateFlags, flagsEx,
                parentPackageName, childPackageNames);
        this.sharedId = sharedId;
    }
}
