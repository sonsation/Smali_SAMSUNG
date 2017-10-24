.class public Lcom/samsung/android/settings/WirelessSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/WirelessSettings$1;,
        Lcom/samsung/android/settings/WirelessSettings$2;,
        Lcom/samsung/android/settings/WirelessSettings$3;,
        Lcom/samsung/android/settings/WirelessSettings$4;,
        Lcom/samsung/android/settings/WirelessSettings$5;,
        Lcom/samsung/android/settings/WirelessSettings$6;,
        Lcom/samsung/android/settings/WirelessSettings$7;
    }
.end annotation


# static fields
.field private static final ALLSHARE_FRAMEWORK:Z

.field private static final DBG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mTetheredDataML:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonWfc:Landroid/preference/PreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataUsage:Landroid/preference/PreferenceScreen;

.field private mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

.field private mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEthernetStateReceiver:Landroid/database/ContentObserver;

.field private mHdmiModeEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

.field private mHotspot:Landroid/preference/PreferenceScreen;

.field private mMPTCPObserver:Landroid/database/ContentObserver;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mMobileNetworkForC:Landroid/preference/PreferenceScreen;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mScreenSharingObserver:Landroid/database/ContentObserver;

.field private mScreenSharingReady:Landroid/preference/PreferenceScreen;

.field private mSmartBonding:Landroid/preference/SwitchPreference;

.field private mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

.field private mTetheredData:I

.field private mTetheringSettings:Landroid/preference/Preference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;

.field private mVerizonEmergencyAlert:Landroid/preference/PreferenceScreen;

.field private mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private ps:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/WirelessSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModeEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/WirelessSettings;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->DBG:Z

    .line 136
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_ALLSHARE_CONFIG_VERSION"

    const-string/jumbo v2, "DMC_ONLY"

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "ALL"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    .line 170
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    .line 1100
    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/WirelessSettings$6;-><init>()V

    .line 1099
    sput-object v0, Lcom/samsung/android/settings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 169
    iput v3, p0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "DeX mode"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Mirroring mode"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModeEntry:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/WirelessSettings$1;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$2;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 247
    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$3;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    .line 264
    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$4;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingObserver:Landroid/database/ContentObserver;

    .line 402
    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/WirelessSettings$5;-><init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEthernetStateReceiver:Landroid/database/ContentObserver;

    .line 1454
    new-instance v0, Lcom/samsung/android/settings/WirelessSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/WirelessSettings$7;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 115
    return-void
.end method

.method private canRemoveVzwDataPlanPreference()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1440
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v3, " Check whether the Verizon Data plan preference can be removed? "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_Common_ConfigPco"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "feature":Ljava/lang/String;
    const-string/jumbo v1, "VZW_PREPAID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "VZW_TABLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 1443
    return v2

    :cond_0
    move v1, v2

    .line 1442
    goto :goto_0

    .line 1445
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1446
    const-string/jumbo v1, "WirelessSettings"

    const-string/jumbo v3, " User account don\'t show Data Plan "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return v2

    .line 1450
    :cond_2
    return v4
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 1
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    .line 1414
    if-nez p1, :cond_0

    .line 1415
    const/4 v0, 0x0

    return v0

    .line 1418
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isEnabledWifiCallingActivity(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1422
    const/4 v0, 0x0

    .line 1423
    .local v0, "Activity":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 1425
    .local v5, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1426
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.samsung.tmowfc.wfcpref"

    const-string/jumbo v7, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    .local v1, "Activity":Landroid/content/ComponentName;
    :try_start_1
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .end local v0    # "Activity":Landroid/content/ComponentName;
    move-result v2

    .line 1428
    .local v2, "activityState":I
    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    .line 1429
    const-string/jumbo v6, "WirelessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wificalling activity is not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1430
    const/4 v5, 0x1

    :cond_0
    move-object v0, v1

    .line 1435
    .end local v1    # "Activity":Landroid/content/ComponentName;
    .end local v2    # "activityState":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    const-string/jumbo v6, "WirelessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEnabledWifiCallingActivity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return v5

    .line 1432
    .restart local v0    # "Activity":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 1433
    .end local v0    # "Activity":Landroid/content/ComponentName;
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1432
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "Activity":Landroid/content/ComponentName;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v1

    .end local v1    # "Activity":Landroid/content/ComponentName;
    .local v0, "Activity":Landroid/content/ComponentName;
    goto :goto_1
.end method

.method private isHotspotTestMode()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    .line 1359
    const/4 v6, 0x0

    .line 1360
    .local v6, "isTestMode":Z
    const/4 v8, 0x0

    .line 1361
    .local v8, "testModeintent":Z
    const-string/jumbo v11, "wifi"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 1362
    .local v9, "wm":Landroid/net/wifi/WifiManager;
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1363
    .local v7, "msg":Landroid/os/Message;
    const/16 v11, 0xbf

    iput v11, v7, Landroid/os/Message;->what:I

    .line 1365
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-ne v11, v10, :cond_1

    .line 1366
    const/4 v8, 0x1

    .line 1371
    :goto_0
    sget-boolean v11, Lcom/samsung/android/settings/WirelessSettings;->DBG:Z

    if-eqz v11, :cond_4

    .line 1372
    const-string/jumbo v0, "/data/misc/wifi/hotspot_info"

    .line 1373
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1374
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string/jumbo v3, ""

    .line 1377
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1380
    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1382
    .local v5, "hotspotInfo":[Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    const-string/jumbo v11, "ATT_HOTSPOT"

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1383
    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-ne v11, v10, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    .line 1368
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1383
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    .restart local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1390
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 1391
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1399
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    :cond_4
    :goto_2
    if-nez v6, :cond_6

    .end local v8    # "testModeintent":Z
    :goto_3
    return v8

    .line 1393
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    .restart local v8    # "testModeintent":Z
    :catch_0
    move-exception v4

    .line 1394
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1386
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 1387
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1390
    if-eqz v1, :cond_4

    .line 1391
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1393
    :catch_2
    move-exception v4

    .line 1394
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1388
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 1390
    :goto_5
    if-eqz v1, :cond_5

    .line 1391
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1388
    :cond_5
    :goto_6
    throw v10

    .line 1393
    :catch_3
    move-exception v4

    .line 1394
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    move v8, v10

    .line 1399
    goto :goto_3

    .line 1388
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1386
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 473
    const-string/jumbo v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method private registerForObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1403
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1404
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mptcp_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1402
    return-void
.end method

.method private unregisterForObserver()V
    .locals 2

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1410
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mMPTCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1408
    return-void
.end method


# virtual methods
.method public callRcsSettings(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 433
    const-string/jumbo v3, "rcs_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne p1, v3, :cond_1

    .line 434
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.rcs"

    const-string/jumbo v4, "com.samsung.rcs.configs.ServicesSwitch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 441
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 440
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v3, "rcs_settings_partial_branded"

    .line 444
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne p1, v3, :cond_2

    .line 446
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS_PARTIAL_BRANDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.rcs"

    .line 448
    const-string/jumbo v4, "com.samsung.rcs.configs.PartialBrandedServicesSwitch"

    .line 447
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 452
    :catch_2
    move-exception v0

    .line 453
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 454
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v1

    .line 455
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 458
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v3, "rcs_settings_partial_branded_cpr"

    .line 457
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne p1, v3, :cond_0

    .line 459
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.rcs.config.VIEW_SETTINGS_PARTIAL_BRANDED_CPR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.rcs"

    .line 461
    const-string/jumbo v4, "com.samsung.rcs.configs.PartialBrandedServicesCPRSwitch"

    .line 460
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string/jumbo v3, "com.samsung.rcs"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 465
    :catch_4
    move-exception v0

    .line 466
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 467
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_5
    move-exception v1

    .line 468
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1093
    const v0, 0x7f0b181c

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 478
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1082
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1083
    const-string/jumbo v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1085
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1086
    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    .line 1085
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 1088
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1081
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 38
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 483
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 484
    if-eqz p1, :cond_0

    .line 485
    const-string/jumbo v34, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 487
    :cond_0
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v34, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 490
    const-string/jumbo v34, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 492
    const-string/jumbo v34, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/UserManager;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 493
    const-string/jumbo v34, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v14

    .line 496
    .local v14, "isAdmin":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    .line 498
    const v34, 0x7f0800f1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->ps:Landroid/preference/PreferenceScreen;

    .line 501
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    .line 502
    .local v20, "myUserId":I
    if-eqz v20, :cond_21

    const/16 v17, 0x1

    .line 504
    .local v17, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 505
    .local v4, "activity":Landroid/app/Activity;
    const-string/jumbo v34, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 507
    new-instance v34, Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    .line 509
    const/16 v23, 0x0

    .line 511
    .local v23, "nsValue":I
    if-eqz v17, :cond_22

    .line 512
    const-string/jumbo v34, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 513
    const-string/jumbo v34, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 529
    :goto_1
    const-string/jumbo v34, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 530
    .local v7, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v7, :cond_24

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->checkScreenSharingReadySupported()I

    move-result v34

    if-nez v34, :cond_24

    .line 532
    const-string/jumbo v34, "screen_sharing_ready_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v34, v0

    .line 536
    const v35, 0x7f0b1953

    .line 535
    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    move-object/from16 v34, v0

    const v35, 0x7f0b1953

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 543
    :cond_1
    :goto_2
    const/4 v7, 0x0

    .line 546
    .local v7, "displayManager":Landroid/hardware/display/DisplayManager;
    const-string/jumbo v34, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDataUsage:Landroid/preference/PreferenceScreen;

    .line 547
    const-string/jumbo v34, "mobile_network_settings_for_C"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mMobileNetworkForC:Landroid/preference/PreferenceScreen;

    .line 548
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v34

    if-nez v34, :cond_2

    .line 549
    const-string/jumbo v34, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 550
    const-string/jumbo v34, "nfc_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 552
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    const-string/jumbo v35, "android.hardware.nfc"

    invoke-virtual/range {v34 .. v35}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 553
    const-string/jumbo v34, "nfc_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 558
    :cond_3
    const-string/jumbo v34, "network_management"

    invoke-static/range {v34 .. v34}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v34

    .line 557
    invoke-static/range {v34 .. v34}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v22

    .line 560
    .local v22, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface/range {v22 .. v22}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v34

    if-nez v34, :cond_4

    .line 561
    const-string/jumbo v34, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 567
    :cond_4
    :goto_3
    const-string/jumbo v34, "header_connection_tethering_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mHotspot:Landroid/preference/PreferenceScreen;

    .line 568
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v34

    if-eqz v34, :cond_5

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 569
    :cond_5
    const-string/jumbo v34, "header_connection_tethering_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 572
    :cond_6
    const-string/jumbo v34, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 573
    const-string/jumbo v34, "wifi_ap_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v34, v0

    if-eqz v34, :cond_7

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 577
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v34

    sput-object v34, Lcom/samsung/android/settings/WirelessSettings;->sSalesCode:Ljava/lang/String;

    .line 579
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    .line 580
    const-string/jumbo v35, "airplane_mode_toggleable_radios"

    .line 579
    invoke-static/range {v34 .. v35}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 582
    .local v31, "toggleable":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 587
    :cond_8
    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v34

    if-nez v34, :cond_9

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v34, v0

    const-string/jumbo v35, "no_config_vpn"

    invoke-virtual/range {v34 .. v35}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v34

    .line 587
    if-eqz v34, :cond_a

    .line 589
    :cond_9
    const-string/jumbo v34, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 590
    const-string/jumbo v34, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 594
    :cond_a
    if-eqz v31, :cond_b

    const-string/jumbo v34, "bluetooth"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 600
    :cond_b
    if-eqz v14, :cond_c

    if-nez v17, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v34

    if-nez v34, :cond_c

    .line 602
    const-string/jumbo v34, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    .line 601
    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v4, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v34

    .line 600
    if-eqz v34, :cond_d

    .line 603
    :cond_c
    const-string/jumbo v34, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 606
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v25

    .line 607
    .local v25, "sSalesCode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_25

    const-string/jumbo v34, "VZW"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_25

    .line 611
    :goto_4
    const-string/jumbo v34, "VZW"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_26

    sget-boolean v34, Lcom/samsung/android/settings/WirelessSettings;->ALLSHARE_FRAMEWORK:Z

    if-eqz v34, :cond_26

    .line 618
    :goto_5
    if-nez v17, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_28

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_27

    .line 620
    const-string/jumbo v34, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    .line 621
    new-instance v34, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    .line 631
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->canRemoveVzwDataPlanPreference()Z

    move-result v34

    if-eqz v34, :cond_e

    .line 632
    const-string/jumbo v34, "data_plan_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 633
    .local v6, "dataPlanCategory":Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_e

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 640
    .end local v6    # "dataPlanCategory":Landroid/preference/PreferenceCategory;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v34, v0

    const-string/jumbo v35, "android.hardware.type.television"

    invoke-virtual/range {v34 .. v35}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_29

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v34

    if-eqz v34, :cond_29

    .line 645
    :goto_7
    const-string/jumbo v34, "persist.sys.tether_data"

    const/16 v35, -0x1

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    move/from16 v34, v0

    sput v34, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    .line 648
    const/4 v15, 0x0

    .line 649
    .local v15, "isChameleonSpec2":Z
    const/16 v30, 0x0

    .line 651
    .local v30, "tetheredDataUsb":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    .line 652
    const-string/jumbo v35, "CscFeature_Common_EnableSprintExtension"

    .line 651
    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v34

    .line 650
    if-eqz v34, :cond_10

    .line 653
    const-string/jumbo v34, "persist.sys.tether_data_usb"

    const/16 v35, -0x1

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 654
    const-string/jumbo v34, "persist.sys.tether_data_bt"

    const/16 v35, -0x1

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 655
    .local v28, "tetheredDataBluetooth":I
    const-string/jumbo v34, "persist.sys.tether_data_wifi"

    const/16 v35, -0x1

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 656
    .local v29, "tetheredDataHotspot":I
    const/16 v34, -0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    const/16 v34, -0x1

    move/from16 v0, v28

    move/from16 v1, v34

    if-eq v0, v1, :cond_2a

    .line 657
    :cond_f
    :goto_8
    const/4 v15, 0x1

    .line 661
    .end local v28    # "tetheredDataBluetooth":I
    .end local v29    # "tetheredDataHotspot":I
    :cond_10
    const-string/jumbo v34, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    .line 663
    const-string/jumbo v34, "connectivity"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 664
    .local v5, "cm":Landroid/net/ConnectivityManager;
    if-nez v17, :cond_2b

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v34

    if-eqz v34, :cond_2b

    .line 665
    const-string/jumbo v34, "SBM"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2b

    .line 670
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->isHotspotTestMode()Z

    move-result v34

    if-eqz v34, :cond_2c

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v34, v0

    const v35, 0x7f0b0079

    invoke-virtual/range {v34 .. v35}, Landroid/preference/Preference;->setTitle(I)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v34, v0

    const v35, 0x7f0b0bd5

    invoke-virtual/range {v34 .. v35}, Landroid/preference/Preference;->setSummary(I)V

    .line 688
    :cond_11
    :goto_9
    const-string/jumbo v34, "SBM"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v34, v0

    if-eqz v34, :cond_12

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 693
    :cond_12
    const-string/jumbo v34, "WirelessSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "KEY_TETHER_SETTINGS isSecondaryUser: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " cm:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " wifi:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " mTetherdData"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheredData:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const-string/jumbo v35, "com.ipsec.vpnclient"

    invoke-static/range {v34 .. v35}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 699
    .local v11, "hasAdvVpn":Z
    if-eqz v11, :cond_2f

    .line 700
    const-string/jumbo v34, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 707
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    const-string/jumbo v35, "wfc_settings_holder_key"

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    .line 709
    .local v32, "wfcHolder":Landroid/preference/Preference;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    const-string/jumbo v35, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 710
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    const-string/jumbo v35, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 712
    .local v26, "settings":Ljava/lang/String;
    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 713
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_30

    const-string/jumbo v34, "Global"

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_30

    .line 726
    :cond_13
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/samsung/android/settings/WirelessSettings;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v34

    if-nez v34, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v34, v0

    if-eqz v34, :cond_14

    .line 727
    invoke-static {}, Lcom/android/settings/Utils;->isNetworkChange()Z

    move-result v34

    if-eqz v34, :cond_31

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setEnabled(Z)V

    .line 737
    .end local v26    # "settings":Ljava/lang/String;
    :cond_14
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 743
    new-instance v34, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    const-string/jumbo v35, "com.samsung.rcs"

    invoke-static/range {v34 .. v35}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    .line 746
    .local v12, "hasSecRcsPackage":Z
    if-nez v12, :cond_32

    .line 747
    const-string/jumbo v34, "WirelessSettings"

    const-string/jumbo v35, "RCS application is not installed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v34, v0

    if-eqz v34, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    .line 754
    :cond_15
    :goto_d
    const-string/jumbo v34, "MTR"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    const-string/jumbo v35, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 758
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    const-string/jumbo v35, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual/range {v34 .. v35}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 760
    .local v18, "isSupportMirrorLink":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    const-string/jumbo v35, "com.samsung.android.app.mirrorlink"

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v24

    .line 766
    .local v24, "sCode":Ljava/lang/String;
    if-eqz v18, :cond_18

    .line 768
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    const-string/jumbo v35, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v34

    .line 767
    if-nez v34, :cond_17

    .line 769
    const-string/jumbo v34, "TFN"

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 767
    if-eqz v34, :cond_33

    .line 770
    :cond_17
    sget v34, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_33

    .line 772
    :cond_18
    :goto_e
    const-string/jumbo v34, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 778
    .end local v18    # "isSupportMirrorLink":Z
    :cond_19
    :goto_f
    const-string/jumbo v34, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    if-eqz v34, :cond_1a

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    const-string/jumbo v35, "ethernet_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 787
    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v34

    if-nez v34, :cond_3b

    .line 788
    const-string/jumbo v34, "smart_bonding_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 803
    :cond_1b
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 804
    const-string/jumbo v34, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 805
    const-string/jumbo v34, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 809
    :cond_1c
    if-nez v17, :cond_3d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    .line 810
    const-string/jumbo v35, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    .line 809
    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_3d

    .line 814
    :goto_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v34

    if-eqz v34, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v34

    if-nez v34, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v34

    if-eqz v34, :cond_1e

    :cond_1d
    if-eqz v17, :cond_3e

    .line 816
    :cond_1e
    const-string/jumbo v34, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 823
    :cond_1f
    :goto_12
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v34

    if-eqz v34, :cond_20

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v35, v0

    new-instance v36, Landroid/content/IntentFilter;

    const-string/jumbo v37, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct/range {v36 .. v37}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v36}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 827
    :cond_20
    const-string/jumbo v34, "key_vzw_emergency_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mVerizonEmergencyAlert:Landroid/preference/PreferenceScreen;

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_3f

    .line 834
    :goto_13
    const-string/jumbo v34, "persist.service.dex.hdmi"

    const/16 v35, -0x1

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 835
    .local v13, "hdmiMode":I
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v34

    if-eqz v34, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const-string/jumbo v35, "com.sec.android.app.desktoplauncher"

    invoke-static/range {v34 .. v35}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_40

    const/16 v34, -0x1

    move/from16 v0, v34

    if-le v13, v0, :cond_40

    .line 836
    const-string/jumbo v34, "hdmi_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v34, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mHdmiModePreference:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 844
    :goto_14
    new-instance v34, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v34 .. v34}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 482
    return-void

    .line 502
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v11    # "hasAdvVpn":Z
    .end local v12    # "hasSecRcsPackage":Z
    .end local v13    # "hdmiMode":I
    .end local v15    # "isChameleonSpec2":Z
    .end local v17    # "isSecondaryUser":Z
    .end local v22    # "netManager":Landroid/os/INetworkManagementService;
    .end local v23    # "nsValue":I
    .end local v24    # "sCode":Ljava/lang/String;
    .end local v25    # "sSalesCode":Ljava/lang/String;
    .end local v30    # "tetheredDataUsb":I
    .end local v31    # "toggleable":Ljava/lang/String;
    .end local v32    # "wfcHolder":Landroid/preference/Preference;
    :cond_21
    const/16 v17, 0x0

    .restart local v17    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 515
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v23    # "nsValue":I
    :cond_22
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v34

    if-nez v34, :cond_23

    .line 516
    new-instance v35, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    .line 517
    const-string/jumbo v34, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Lcom/android/settings/SecSettingsSwitchPreference;

    .line 516
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    .line 519
    const-string/jumbo v34, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    :cond_23
    new-instance v35, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    .line 522
    const-string/jumbo v34, "toggle_nearby_scanning"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/SwitchPreference;

    .line 521
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    .line 524
    const-string/jumbo v34, "nearby_scanning_setting_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 540
    .local v7, "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_24
    const-string/jumbo v34, "screen_sharing_ready_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 541
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    goto/16 :goto_2

    .line 608
    .local v7, "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v22    # "netManager":Landroid/os/INetworkManagementService;
    .restart local v25    # "sSalesCode":Ljava/lang/String;
    .restart local v31    # "toggleable":Ljava/lang/String;
    :cond_25
    const-string/jumbo v34, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 612
    :cond_26
    const-string/jumbo v34, "media_share_category_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceCategory;

    .line 613
    .local v21, "nearbyCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v34, "nearby_setting_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 623
    .end local v21    # "nearbyCategory":Landroid/preference/PreferenceCategory;
    :cond_27
    const-string/jumbo v34, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 626
    :cond_28
    const-string/jumbo v34, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 641
    :cond_29
    const-string/jumbo v34, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 656
    .restart local v15    # "isChameleonSpec2":Z
    .restart local v28    # "tetheredDataBluetooth":I
    .restart local v29    # "tetheredDataHotspot":I
    .restart local v30    # "tetheredDataUsb":I
    :cond_2a
    const/16 v34, -0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-eq v0, v1, :cond_10

    goto/16 :goto_8

    .line 666
    .end local v28    # "tetheredDataBluetooth":I
    .end local v29    # "tetheredDataHotspot":I
    .restart local v5    # "cm":Landroid/net/ConnectivityManager;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v34, v0

    if-eqz v34, :cond_11

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 675
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v27

    .line 676
    .local v27, "tetherSummary":I
    const/16 v34, -0x1

    move/from16 v0, v27

    move/from16 v1, v34

    if-eq v0, v1, :cond_2d

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 679
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v34, v0

    const v35, 0x7f0b0078

    invoke-virtual/range {v34 .. v35}, Landroid/preference/Preference;->setTitle(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    move-object/from16 v35, v0

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    .line 683
    invoke-static/range {v34 .. v34}, Lcom/android/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_2e

    const/16 v34, 0x0

    :goto_15
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_2e
    const/16 v34, 0x1

    goto :goto_15

    .line 702
    .end local v27    # "tetherSummary":I
    .restart local v11    # "hasAdvVpn":Z
    :cond_2f
    const-string/jumbo v34, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 714
    .restart local v26    # "settings":Ljava/lang/String;
    .restart local v32    # "wfcHolder":Landroid/preference/Preference;
    :cond_30
    const/16 v33, 0x0

    .line 717
    .local v33, "wfcPreferenceScreen":Landroid/preference/PreferenceScreen;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    const v36, 0x7f080147

    .line 718
    const/16 v37, 0x0

    .line 717
    invoke-virtual/range {v34 .. v37}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v33

    .line 719
    .local v33, "wfcPreferenceScreen":Landroid/preference/PreferenceScreen;
    const-string/jumbo v34, "wfc_settings_key"

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/Preference;->getOrder()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setOrder(I)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_b

    .line 722
    .end local v33    # "wfcPreferenceScreen":Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v10

    .line 723
    .local v10, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v34, "WirelessSettings"

    const-string/jumbo v35, "cannot add WfcSwitchPreference"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 730
    .end local v10    # "exc":Ljava/lang/RuntimeException;
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 751
    .end local v26    # "settings":Ljava/lang/String;
    .restart local v12    # "hasSecRcsPackage":Z
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v34, v0

    if-eqz v34, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    goto/16 :goto_d

    .line 771
    .restart local v18    # "isSupportMirrorLink":Z
    .restart local v24    # "sCode":Ljava/lang/String;
    :cond_33
    if-eqz v15, :cond_19

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_19

    goto/16 :goto_e

    .line 761
    .end local v24    # "sCode":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 762
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string/jumbo v34, "WirelessSettings"

    const-string/jumbo v35, "MirrorLink application is not installed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 763
    const/16 v18, 0x0

    .line 765
    .local v18, "isSupportMirrorLink":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v24

    .line 766
    .restart local v24    # "sCode":Ljava/lang/String;
    if-eqz v18, :cond_35

    .line 768
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    const-string/jumbo v35, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v34

    .line 767
    if-nez v34, :cond_34

    .line 769
    const-string/jumbo v34, "TFN"

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 767
    if-eqz v34, :cond_36

    .line 770
    :cond_34
    sget v34, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_36

    .line 772
    :cond_35
    :goto_16
    const-string/jumbo v34, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 771
    :cond_36
    if-eqz v15, :cond_19

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_19

    goto :goto_16

    .line 764
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v24    # "sCode":Ljava/lang/String;
    .local v18, "isSupportMirrorLink":Z
    :catchall_0
    move-exception v34

    .line 765
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v24

    .line 766
    .restart local v24    # "sCode":Ljava/lang/String;
    if-eqz v18, :cond_38

    .line 768
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v35

    const-string/jumbo v36, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v35 .. v36}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    .line 767
    if-nez v35, :cond_37

    .line 769
    const-string/jumbo v35, "TFN"

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 767
    if-eqz v35, :cond_3a

    .line 770
    :cond_37
    sget v35, Lcom/samsung/android/settings/WirelessSettings;->mTetheredDataML:I

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_3a

    .line 772
    :cond_38
    :goto_17
    const-string/jumbo v35, "mirror_link_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 764
    :cond_39
    throw v34

    .line 771
    :cond_3a
    if-eqz v15, :cond_39

    const/16 v35, 0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_39

    goto :goto_17

    .line 790
    .end local v18    # "isSupportMirrorLink":Z
    :cond_3b
    const-string/jumbo v34, "smart_bonding_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/SwitchPreference;

    .line 791
    new-instance v34, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/SwitchPreference;

    move-object/from16 v36, v0

    invoke-direct/range {v34 .. v36}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    .line 792
    if-eqz p1, :cond_1b

    .line 793
    const-string/jumbo v34, "notificationDialogShown"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 794
    .local v16, "isNotificationDialogShown":Z
    if-eqz v16, :cond_1b

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1b

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/SwitchPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v34

    if-eqz v34, :cond_3c

    const/16 v34, 0x0

    :goto_18
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    goto/16 :goto_10

    :cond_3c
    const/16 v34, 0x1

    goto :goto_18

    .line 811
    .end local v16    # "isNotificationDialogShown":Z
    :cond_3d
    const-string/jumbo v34, "network_reset"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 817
    :cond_3e
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 818
    const-string/jumbo v34, "multi_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    .line 819
    .local v19, "mbandLTE":Landroid/preference/PreferenceScreen;
    const v34, 0x7f0b0c1d

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 820
    const-string/jumbo v34, "com.samsung.android.settings.GigaLteSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 831
    .end local v19    # "mbandLTE":Landroid/preference/PreferenceScreen;
    :cond_3f
    const-string/jumbo v34, "key_vzw_emergency_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 840
    .restart local v13    # "hdmiMode":I
    :cond_40
    const-string/jumbo v34, "hdmi_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 563
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v11    # "hasAdvVpn":Z
    .end local v12    # "hasSecRcsPackage":Z
    .end local v13    # "hdmiMode":I
    .end local v15    # "isChameleonSpec2":Z
    .end local v24    # "sCode":Ljava/lang/String;
    .end local v25    # "sSalesCode":Ljava/lang/String;
    .end local v30    # "tetheredDataUsb":I
    .end local v31    # "toggleable":Ljava/lang/String;
    .end local v32    # "wfcHolder":Landroid/preference/Preference;
    :catch_2
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 414
    packed-switch p1, :pswitch_data_0

    .line 429
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 416
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 416
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 418
    const/4 v1, 0x0

    .line 416
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 420
    new-instance v1, Lcom/samsung/android/settings/WirelessSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/WirelessSettings$8;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    .line 419
    const v2, 0x104000a

    .line 416
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1074
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 1075
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1073
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1045
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->pause()V

    .line 1053
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->pause()V

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    .line 1065
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1066
    invoke-direct {p0}, Lcom/samsung/android/settings/WirelessSettings;->unregisterForObserver()V

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MoreConnectionSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 1044
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 329
    const-string/jumbo v1, "hdmi_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string/jumbo v1, "persist.service.dex.hdmi"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceTreeClick: preference="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 288
    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_0

    .line 289
    const-string/jumbo v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    const/4 v5, 0x1

    .line 292
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return v7

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WirelessSettings"

    const-string/jumbo v5, "Activity Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string/jumbo v4, "rcs_settings"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SecSettingsSwitchPreference;

    if-eq p2, v4, :cond_1

    .line 302
    const-string/jumbo v4, "rcs_settings_partial_branded"

    .line 301
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne p2, v4, :cond_3

    .line 306
    :cond_1
    :goto_1
    const-string/jumbo v4, "com.samsung.android.messaging"

    invoke-virtual {p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 305
    invoke-static {v4, v5}, Lcom/android/settings/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    .line 307
    .local v3, "mIsDefaultSms":Z
    if-nez v3, :cond_4

    .line 308
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string/jumbo v4, "package"

    .line 311
    const-string/jumbo v5, "com.samsung.android.messaging"

    .line 310
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mIsDefaultSms":Z
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 304
    :cond_3
    const-string/jumbo v4, "rcs_settings_partial_branded_cpr"

    .line 303
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne p2, v4, :cond_2

    goto :goto_1

    .line 316
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mIsDefaultSms":Z
    :catch_1
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "WirelessSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IllegalStateException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 314
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 315
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WirelessSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " doesn\'t exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 320
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/WirelessSettings;->callRcsSettings(Landroid/preference/Preference;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 19

    .prologue
    .line 849
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 851
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v15}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->resume()V

    .line 852
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v15, :cond_0

    .line 853
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v15}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->resume()V

    .line 855
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 856
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v16, "no_config_tethering"

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    .line 855
    if-eqz v15, :cond_2

    .line 857
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    if-eqz v15, :cond_2

    .line 858
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mTetheringSettings:Landroid/preference/Preference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 862
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v16, "no_config_vpn"

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 863
    const-string/jumbo v15, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 864
    const-string/jumbo v15, "vpn_settings_for_att"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 867
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 868
    :cond_4
    const-string/jumbo v15, "mobile_network_settings_for_C"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 876
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_6

    .line 877
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 878
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v16, 0x7f0b0e8f

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 886
    :cond_6
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v17, "isVpnAllowed"

    invoke-static/range {v15 .. v17}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 887
    .local v2, "VpnAllowed":I
    const/4 v15, 0x1

    if-ne v2, v15, :cond_12

    const/4 v15, 0x1

    :goto_1
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 888
    .local v8, "isVpnAllowed":Ljava/lang/Boolean;
    const/4 v15, -0x1

    if-eq v2, v15, :cond_8

    .line 889
    const-string/jumbo v15, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 890
    const-string/jumbo v15, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 892
    :cond_7
    const-string/jumbo v15, "vpn_settings_for_att"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 893
    const-string/jumbo v15, "vpn_settings_for_att"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .end local v2    # "VpnAllowed":I
    .end local v8    # "isVpnAllowed":Ljava/lang/Boolean;
    :cond_8
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v15

    const-string/jumbo v16, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 904
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v15, :cond_9

    .line 905
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWfcSwitchPreference:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v15}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onResume()V

    .line 911
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 912
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 915
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 916
    invoke-static {v3}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v16

    .line 915
    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 931
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "com.samsung.rcs"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 932
    .local v6, "hasSecRcsPackage":Z
    if-nez v6, :cond_14

    .line 933
    const-string/jumbo v15, "WirelessSettings"

    const-string/jumbo v16, "RCS application is not installed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    .line 948
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "airplane_mode_toggleable_radios"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 951
    .local v14, "toggleable":Ljava/lang/String;
    if-eqz v14, :cond_15

    const-string/jumbo v15, "wifi"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 955
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v15, :cond_b

    .line 956
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v15}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    .line 960
    :cond_b
    const-string/jumbo v15, "display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 961
    .local v4, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->checkScreenSharingReadySupported()I

    move-result v15

    if-nez v15, :cond_d

    .line 962
    const/4 v13, 0x0

    .line 963
    .local v13, "ssValue":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    if-eqz v15, :cond_c

    .line 964
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mScreenSharingReady:Landroid/preference/PreferenceScreen;

    .line 965
    const v16, 0x7f0b1953

    .line 964
    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 967
    :cond_c
    const/4 v4, 0x0

    .line 971
    .end local v4    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v13    # "ssValue":I
    :cond_d
    const-string/jumbo v15, "multi_path"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 972
    .local v10, "mMPTCP":Landroid/preference/PreferenceScreen;
    if-eqz v10, :cond_e

    .line 973
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "mptcp_value"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_17

    const v15, 0x7f0b1952

    :goto_6
    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 977
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->registerForObserver()V

    .line 982
    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/String;

    const-string/jumbo v15, "false"

    const/16 v16, 0x0

    aput-object v15, v12, v16

    .line 983
    .local v12, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 984
    const-string/jumbo v17, "isWifiEnabled"

    .line 983
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 985
    .local v9, "isWiFiEnabled":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy1"

    .line 986
    const-string/jumbo v17, "isCellularDataAllowed"

    .line 985
    invoke-static/range {v15 .. v17}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 988
    .local v7, "isCellularDataAllowed":I
    const/4 v15, -0x1

    if-eq v9, v15, :cond_18

    .line 989
    if-nez v9, :cond_18

    .line 991
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v15, :cond_10

    .line 992
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    .line 994
    :cond_10
    return-void

    .line 880
    .end local v3    # "context":Landroid/content/Context;
    .end local v6    # "hasSecRcsPackage":Z
    .end local v7    # "isCellularDataAllowed":I
    .end local v9    # "isWiFiEnabled":I
    .end local v10    # "mMPTCP":Landroid/preference/PreferenceScreen;
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "toggleable":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    const v16, 0x7f0b0e90

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 887
    .restart local v2    # "VpnAllowed":I
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 897
    .end local v2    # "VpnAllowed":I
    :catch_0
    move-exception v5

    .line 898
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 918
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "context":Landroid/content/Context;
    :cond_13
    const-string/jumbo v15, "wifi_calling_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 937
    .restart local v6    # "hasSecRcsPackage":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mRcsSettings:Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v15}, Lcom/samsung/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    goto/16 :goto_4

    .line 952
    .restart local v14    # "toggleable":Ljava/lang/String;
    :cond_15
    const-string/jumbo v15, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "airplane_mode_on"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_16

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_16
    const/4 v15, 0x0

    goto :goto_7

    .line 974
    .restart local v10    # "mMPTCP":Landroid/preference/PreferenceScreen;
    :cond_17
    const v15, 0x7f0b1953

    goto/16 :goto_6

    .line 990
    .restart local v7    # "isCellularDataAllowed":I
    .restart local v9    # "isWiFiEnabled":I
    .restart local v12    # "selectionArgs":[Ljava/lang/String;
    :cond_18
    if-eqz v7, :cond_f

    .line 999
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v15, :cond_19

    .line 1000
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v15}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    .line 1003
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/settings/Utils;->isSupportVZWNetworkLock(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1004
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isVzwNetworkUnLocked(Landroid/content/Context;)Z

    move-result v15

    .line 1003
    if-eqz v15, :cond_1b

    .line 1005
    :cond_1a
    const-string/jumbo v15, "network_unlock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 1027
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/WirelessSettings;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/WirelessSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v17, v0

    const-string/jumbo v18, "MoreConnectionSettings"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 848
    return-void

    .line 1007
    :cond_1b
    const-string/jumbo v15, "network_unlock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_1c

    .line 1008
    const-string/jumbo v15, "network_unlock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1010
    :cond_1c
    new-instance v11, Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/WirelessSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v15}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;-><init>(Landroid/content/Context;)V

    .line 1011
    .local v11, "mNetworkLockUtils":Lcom/samsung/android/settings/networklock/NetworkLockUtils;
    new-instance v15, Lcom/samsung/android/settings/WirelessSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/WirelessSettings$9;-><init>(Lcom/samsung/android/settings/WirelessSettings;)V

    invoke-virtual {v11, v15}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus(Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)V

    goto :goto_8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1032
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    const-string/jumbo v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getmNofiticationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings;->mSmartBondingEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getmNofiticationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    const-string/jumbo v0, "notificationDialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1031
    :cond_1
    return-void
.end method
