.class public Lcom/android/server/policy/SamsungPolicyProperties;
.super Ljava/lang/Object;
.source "SamsungPolicyProperties.java"


# static fields
.field public static final DUAL_LCD:I = 0x2

.field public static final NOT_FOLDER:I = 0x0

.field public static final SINGLE_LCD:I = 0x1

.field private static mFolderTypeFeature:I

.field private static mFolderTypeFeatureChecked:Z

.field private static mHasQwertyKeyboard:Z

.field private static mHasQwertyKeyboardChecked:Z

.field private static mHasSPenFeature:Z

.field private static mHasSPenFeatureChecked:Z

.field private static mScreenShotChordEnableChecked:Z

.field private static mScreenShotChordEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 37
    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 39
    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 40
    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 42
    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    .line 43
    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 45
    sput v0, Lcom/android/server/policy/SamsungPolicyProperties;->mFolderTypeFeature:I

    .line 46
    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mFolderTypeFeatureChecked:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FolderTypeFeature(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 174
    sget-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mFolderTypeFeatureChecked:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x2

    sput v0, Lcom/android/server/policy/SamsungPolicyProperties;->mFolderTypeFeature:I

    .line 185
    :goto_0
    sput-boolean v2, Lcom/android/server/policy/SamsungPolicyProperties;->mFolderTypeFeatureChecked:Z

    .line 187
    :cond_0
    sget v0, Lcom/android/server/policy/SamsungPolicyProperties;->mFolderTypeFeature:I

    return v0

    .line 180
    :cond_1
    sput v2, Lcom/android/server/policy/SamsungPolicyProperties;->mFolderTypeFeature:I

    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/android/server/policy/SamsungPolicyProperties;->mFolderTypeFeature:I

    goto :goto_0
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isCameraSpecialized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 193
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasSPenFeature="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/policy/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 194
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasQwertyKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/policy/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 195
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isScreenShotChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/policy/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 196
    const-string v0, " isOneTouchReportChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/policy/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 197
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isSupportDMBAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 191
    return-void
.end method

.method public static hasQwertyKeyboard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 65
    sget-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 67
    const/4 v2, 0x2

    .line 66
    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 68
    sput-boolean v1, Lcom/android/server/policy/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 70
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 61
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/SamsungPolicyProperties;->mHasSPenFeature:Z

    return v0
.end method

.method public static isBlockKey(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 104
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    :cond_0
    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "18"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 106
    if-eqz v1, :cond_1

    .line 108
    return v4

    .line 111
    :cond_1
    const-string v1, "lock"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 112
    const-string v3, "missing_phone_lock"

    .line 111
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    return v4

    .line 117
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static isCameraSpecialized()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public static isDomesticOtaStart()Z
    .locals 2

    .prologue
    .line 121
    const-string v0, "true"

    const-string v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneTouchReportChordEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPowerSavingMode()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenShotChordEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    sget-boolean v1, Lcom/android/server/policy/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    if-nez v1, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    const v2, 0x1120029

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/SamsungPolicyProperties;->mScreenShotChordEnabled:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/policy/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 84
    :cond_0
    sget-boolean v1, Lcom/android/server/policy/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/policy/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    goto :goto_0
.end method

.method public static isSktTphoneEnabled()Z
    .locals 3

    .prologue
    .line 128
    const-string v0, "tphone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCameraQuickShot()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDMBAntennaDetach()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDTVAntennaDetach()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportFingerPrint()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public static isVzwSetupRunning()Z
    .locals 4

    .prologue
    .line 139
    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ConfigOpSetupWizard"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "vzwSetupRunning":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 142
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isVzwSetupWizardRunning(Z)Z
    .locals 4
    .param p0, "isDeviceProvisioned"    # Z

    .prologue
    .line 149
    const-string v1, "VZW"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ConfigOpSetupWizard"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "persist.sys.vzw_setup_running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "vzwSetupRunning":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 152
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 151
    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x1

    return v1

    .line 156
    .end local v0    # "vzwSetupRunning":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
