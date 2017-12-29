.class public Lcom/samsung/android/settings/TRoamingSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/TRoamingSettings$1;,
        Lcom/samsung/android/settings/TRoamingSettings$2;,
        Lcom/samsung/android/settings/TRoamingSettings$3;,
        Lcom/samsung/android/settings/TRoamingSettings$4;,
        Lcom/samsung/android/settings/TRoamingSettings$5;,
        Lcom/samsung/android/settings/TRoamingSettings$6;,
        Lcom/samsung/android/settings/TRoamingSettings$7;,
        Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;,
        Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;,
        Lcom/samsung/android/settings/TRoamingSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mBackgroundData:Landroid/preference/SwitchPreference;

.field private mCustomerService:Landroid/preference/Preference;

.field private mCustomerServicekt:Landroid/preference/Preference;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mGuide:Landroid/preference/Preference;

.field private mHDVoiceRoaming:Landroid/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJoinCancel:Landroid/preference/Preference;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mMobileTRoaming:Landroid/preference/Preference;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRoamingAutoDial:Landroid/preference/Preference;

.field private mSelection:Landroid/preference/Preference;

.field private mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;

.field private mUseLTERoaming:Landroid/preference/SwitchPreference;

.field private mUseLTERoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/TRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/TRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRestrictBackgroundEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/TRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->updateCurrentRoaming()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 904
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$6;-><init>()V

    .line 903
    sput-object v0, Lcom/samsung/android/settings/TRoamingSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 912
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$7;

    invoke-direct {v0}, Lcom/samsung/android/settings/TRoamingSettings$7;-><init>()V

    .line 911
    sput-object v0, Lcom/samsung/android/settings/TRoamingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 131
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$1;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    .line 172
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$2;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    .line 194
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/TRoamingSettings$3;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    .line 608
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/TRoamingSettings$4;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 871
    new-instance v0, Lcom/samsung/android/settings/TRoamingSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/TRoamingSettings$5;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings;->handler_loading:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method private getNetworkStateAvailable()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 622
    sget-object v5, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 623
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 624
    .local v2, "networkInfo_wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 625
    .local v1, "networkInfo_data":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 626
    .local v4, "networkState_wifi":Landroid/net/NetworkInfo$State;
    :goto_0
    if-nez v1, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 628
    .local v3, "networkState_mobile":Landroid/net/NetworkInfo$State;
    :goto_1
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWifistate : networkState_wifi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  networkState_mobile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_3

    .line 631
    :cond_0
    return v9

    .line 625
    .end local v3    # "networkState_mobile":Landroid/net/NetworkInfo$State;
    .end local v4    # "networkState_wifi":Landroid/net/NetworkInfo$State;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .restart local v4    # "networkState_wifi":Landroid/net/NetworkInfo$State;
    goto :goto_0

    .line 626
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .restart local v3    # "networkState_mobile":Landroid/net/NetworkInfo$State;
    goto :goto_1

    .line 633
    :cond_3
    return v8
.end method

.method private isInDomestic()Z
    .locals 4

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "bRetVal":Z
    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 404
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 408
    :cond_0
    return v0
.end method

.method private final isLTERoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lte_roaming_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 456
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLTERoamingEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v0

    .line 455
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private final isNetworkRegistered()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, "rtsStatusValue":I
    const-string/jumbo v4, "ril.skt.network_regist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "rilTemp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 433
    const-string/jumbo v4, ";"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "rtsValues":[Ljava/lang/String;
    aget-object v4, v2, v7

    const-string/jumbo v5, "Status"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "statusValue":[Ljava/lang/String;
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 436
    const-string/jumbo v4, "TRoamingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rtsStatusValue Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eq v1, v8, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 439
    :cond_0
    return v8

    .line 441
    :cond_1
    return v7

    .line 444
    .end local v2    # "rtsValues":[Ljava/lang/String;
    .end local v3    # "statusValue":[Ljava/lang/String;
    :cond_2
    return v7
.end method

.method private final isRestrictBackgroundEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_powersaving_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 462
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRestrictBackgroundEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v0

    .line 461
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private final isRoamingDataEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 450
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "TRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRoamingDataEnabled: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v0

    .line 449
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private updateCurrentRoaming()V
    .locals 14

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 369
    const-string/jumbo v11, "key_roaming_current"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/TRoamingSettings;->removePreference(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v11, "phone"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/TRoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 372
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "operatorName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "operator":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isNetworkRegistered()Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 387
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "data_roaming"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 390
    .local v0, "dataRoamingValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "lte_roaming_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 391
    .local v1, "lteRoamingValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "hd_voice_roaming_enabled"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 392
    .local v8, "volteRoamingValue":I
    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming dataRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming lteRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string/jumbo v11, "TRoamingSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "KKK updateCurrentRoaming volteRoamingValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 396
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 397
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "hd_voice_roaming_enabled"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v9, :cond_4

    :goto_1
    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 398
    iget-object v9, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v10}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 367
    return-void

    .line 376
    .end local v0    # "dataRoamingValue":I
    .end local v1    # "lteRoamingValue":I
    .end local v8    # "volteRoamingValue":I
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 377
    move-object v3, v6

    .line 378
    .local v3, "operatorFullName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 379
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "operatorMCC":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, "operatorMNC":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    .end local v4    # "operatorMCC":Ljava/lang/String;
    .end local v5    # "operatorMNC":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {v11, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v3    # "operatorFullName":Ljava/lang/String;
    .restart local v0    # "dataRoamingValue":I
    .restart local v1    # "lteRoamingValue":I
    .restart local v8    # "volteRoamingValue":I
    :cond_4
    move v9, v10

    .line 397
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->finish()V

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 220
    const v1, 0x7f080137

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->addPreferencesFromResource(I)V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 223
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "key_roaming_selection"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    .line 224
    const-string/jumbo v1, "key_roaming_use_data_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 225
    const-string/jumbo v1, "key_roaming_use_lte_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    .line 226
    const-string/jumbo v1, "key_roaming_background_data"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    .line 227
    const-string/jumbo v1, "key_roaming_hd_voice_roaming"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    .line 228
    const-string/jumbo v1, "key_roaming_auto_dial"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    .line 229
    const-string/jumbo v1, "key_roaming_guide"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    .line 230
    const-string/jumbo v1, "key_roaming_join_cancel"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    .line 231
    const-string/jumbo v1, "key_roaming_mobile_t"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    .line 232
    const-string/jumbo v1, "key_roaming_customer_service"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    .line 233
    const-string/jumbo v1, "key_roaming_customer_service_kt"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/TRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/preference/Preference;

    .line 235
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b0cfc

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 238
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    sget-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 254
    :cond_3
    const-string/jumbo v1, "TRoamingSettings"

    const-string/jumbo v2, "not support voice capable or open not support customer svc"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoDial()Z

    move-result v1

    if-nez v1, :cond_5

    .line 264
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLTERoaming()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 267
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 270
    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v1

    .line 269
    if-eqz v1, :cond_9

    .line 271
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    :cond_9
    if-eqz p1, :cond_a

    .line 274
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v2, "mUseDataRoaming"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 208
    :cond_a
    return-void

    .line 241
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b0d1b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 257
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-nez v1, :cond_d

    .line 258
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 259
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_4

    .line 260
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 350
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 357
    iput-object v3, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 341
    :cond_1
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 469
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .line 470
    check-cast v2, Ljava/lang/Boolean;

    .line 471
    .local v2, "value":Ljava/lang/Boolean;
    const-string/jumbo v5, "key_roaming_use_data_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 472
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mUseDataRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 474
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "data_roaming"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    :cond_0
    :goto_0
    return v4

    .line 477
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "i":Landroid/content/Intent;
    sget-object v4, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    return v3

    .line 482
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "data_roaming"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 484
    :cond_3
    const-string/jumbo v5, "key_roaming_use_lte_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 485
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mUseLTERoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-nez v5, :cond_5

    .line 487
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "lte_roaming_mode_on"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 491
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lte_roaming_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 494
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lte_roaming_mode_on"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 496
    :cond_7
    const-string/jumbo v5, "key_roaming_background_data"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 497
    const-string/jumbo v3, "TRoamingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceChange: mBackgroundData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/TRoamingSettings;->setRestrictBackground(Z)V

    goto/16 :goto_0

    .line 500
    :cond_8
    const-string/jumbo v5, "key_roaming_hd_voice_roaming"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 501
    const-string/jumbo v5, "TRoamingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: mHDVoiceRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 503
    const-string/jumbo v6, "hd_voice_roaming_enabled"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v4

    .line 502
    :cond_9
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x0

    .line 510
    if-nez p2, :cond_0

    .line 511
    const-string/jumbo v6, "TRoamingSettings"

    const-string/jumbo v7, "preference is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v6, 0x0

    return v6

    .line 514
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 516
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 517
    :catch_0
    move-exception v2

    .line 518
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 520
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isInDomestic()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 527
    invoke-static {p0}, Lcom/samsung/android/settings/TRoamingSettings$IsNotRoamingFragment;->show(Lcom/samsung/android/settings/TRoamingSettings;)V

    goto :goto_0

    .line 529
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v4, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.android.phone"

    .line 531
    const-string/jumbo v7, "com.android.phone.RoamingAutoDialSettings"

    .line 530
    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 534
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 535
    :catch_1
    move-exception v2

    .line 536
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 539
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mGuide:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 541
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://www.tworld.co.kr/roaming"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 543
    .local v3, "guideIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 544
    :catch_2
    move-exception v2

    .line 545
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 547
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "guideIntent":Landroid/content/Intent;
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mJoinCancel:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 549
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://www.tworld.co.kr/roaming"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 551
    .local v5, "joinCancelIntent":Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 552
    :catch_3
    move-exception v2

    .line 553
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 555
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "joinCancelIntent":Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getNetworkStateAvailable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 557
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "http://m.troaming.co.kr"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 559
    .restart local v5    # "joinCancelIntent":Landroid/content/Intent;
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 560
    :catch_4
    move-exception v2

    .line 561
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 564
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "joinCancelIntent":Landroid/content/Intent;
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->show(Lcom/samsung/android/settings/TRoamingSettings;)V

    goto/16 :goto_0

    .line 566
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerService:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 567
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_PRIVILEGED"

    .line 568
    const-string/jumbo v7, "tel"

    const-string/jumbo v8, "+82263439000"

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 567
    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 569
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 570
    const-string/jumbo v6, "SKTRADDialOption"

    const-string/jumbo v7, "abroad"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    :try_start_5
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/TRoamingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 573
    :catch_5
    move-exception v2

    .line 574
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 576
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/TRoamingSettings;->mCustomerServicekt:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 577
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b0d1c

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 579
    const v6, 0x7f0b0d1d

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 580
    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$8;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    const v7, 0x7f0b0539

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 593
    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$9;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$9;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 597
    new-instance v6, Lcom/samsung/android/settings/TRoamingSettings$10;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/TRoamingSettings$10;-><init>(Lcom/samsung/android/settings/TRoamingSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 601
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 602
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 287
    const-string/jumbo v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "simState":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "data_roaming"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lte_roaming_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/TRoamingSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v0, "intFltr":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v2, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/TRoamingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->updateCurrentRoaming()V

    .line 300
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v2, :cond_0

    .line 306
    :cond_0
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isInDomestic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v6}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 313
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 314
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mRoamingAutoDial:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 315
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mBackgroundData:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 316
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 318
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 319
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseLTERoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 321
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isRoamingDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/TRoamingSettings;->isLTERoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 322
    :cond_5
    const-string/jumbo v2, "TRoamingSettings"

    const-string/jumbo v3, "KKK onResume !isRoamingDataEnabled() || !isLTERoamingEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mHDVoiceRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 325
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 326
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mMobileTRoaming:Landroid/preference/Preference;

    const v3, 0x7f0b1de7

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 327
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const v3, 0x7f0b114e

    invoke-virtual {v2, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setTitle(I)V

    .line 330
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 331
    sget-object v2, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    .line 332
    const-string/jumbo v3, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 331
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 333
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v2, v6}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 285
    :cond_8
    :goto_0
    return-void

    .line 335
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v3, "no_data_roaming"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    const-string/jumbo v0, "mUseDataRoaming"

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings;->mUseDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 8
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 853
    move v1, p1

    .line 854
    .local v1, "rBackground":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 855
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/TRoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0484

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 856
    iget-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 857
    iget-object v5, p0, Lcom/samsung/android/settings/TRoamingSettings;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 858
    sget-object v5, Lcom/samsung/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "data_powersaving_mode"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 859
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/settings/TRoamingSettings$11;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/TRoamingSettings$11;-><init>(Lcom/samsung/android/settings/TRoamingSettings;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 868
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 852
    return-void

    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_0
    move v3, v4

    .line 858
    goto :goto_0
.end method
