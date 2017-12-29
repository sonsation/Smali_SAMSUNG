.class public Lcom/android/settings/wifi/SmartNetworkSwitchSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;,
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;,
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$3;,
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;,
        Lcom/android/settings/wifi/SmartNetworkSwitchSettings$WifiSnsExcludedAPInfo;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private excludedApCount:I

.field private mAggressiveEnabled:Z

.field private final mBixbyCurrentStateId:Ljava/lang/String;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnabled:Z

.field private mExcludedGroup:Landroid/preference/PreferenceGroup;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsSupportAggMode:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNoDevicesPreference:Landroid/preference/Preference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private snsAggressiveSwitching:Landroid/preference/SwitchPreference;

.field private snsSettingPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->finishSnsSettings()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;Z)V
    .locals 0
    .param p1, "mEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->onSwitchButtonClicked(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setExcludedDevicesLayout()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;IZ)V
    .locals 0
    .param p1, "networkId"    # I
    .param p2, "skipInternetCheck"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setSkipInternetCheck(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    .line 96
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 90
    const-string/jumbo v0, "SmartNetworkSwitchSettings"

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->TAG:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "SmartNetworkSwitch"

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    .line 115
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    .line 120
    iput v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->excludedApCount:I

    .line 122
    new-instance v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 128
    new-instance v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$3;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 523
    new-instance v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$4;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 88
    return-void
.end method

.method private buildExcludedApExplainPref(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    new-instance v0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;-><init>(Landroid/content/Context;)V

    .line 321
    .local v0, "pref":Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;
    const v1, 0x7f0402fa

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setLayoutResource(I)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setSelectable(Z)V

    .line 323
    return-object v0
.end method

.method private buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 326
    move-object v0, p1

    .line 327
    .local v0, "mContext":Landroid/content/Context;
    move-object v1, p2

    .line 328
    .local v1, "mWifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 330
    .local v2, "networkId":Ljava/lang/String;
    new-instance v3, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;-><init>(Landroid/content/Context;)V

    .line 331
    .local v3, "pref":Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;
    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    new-instance v4, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$5;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$5;-><init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 371
    return-object v3
.end method

.method private finishSnsSettings()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 456
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 451
    :cond_2
    :goto_1
    return-void

    .line 454
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->finish()V

    goto :goto_1
.end method

.method private onSwitchButtonClicked(Z)V
    .locals 4
    .param p1, "mEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 465
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 466
    .local v0, "msgBigdata":Landroid/os/Message;
    const/16 v1, 0x131

    iput v1, v0, Landroid/os/Message;->what:I

    .line 467
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 468
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 469
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 470
    if-eqz p1, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 472
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 471
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    const-string/jumbo v1, "AGG"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->sendGSIMdata(Ljava/lang/String;)V

    .line 479
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->updateSwitchButtonStatus()V

    .line 464
    return-void

    :cond_0
    move v1, v3

    .line 468
    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 476
    const-string/jumbo v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 475
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    const-string/jumbo v1, "ON"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setActionBarTitle()V
    .locals 8

    .prologue
    const v7, 0x7f0b0f2e

    const v6, 0x7f0b15b1

    .line 247
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "temp":Ljava/lang/String;
    const-string/jumbo v2, "SmartNetworkSwitchSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 249
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 251
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const-string/jumbo v2, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    :cond_0
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 246
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method private setExcludedDevicesLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 287
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 288
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApExplainPref(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "currentConfiguredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 292
    .local v4, "tempConfiguredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 294
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-lt v5, v8, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 295
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SmartNetworkSwitchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling configuredNetworks "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 305
    const-string/jumbo v5, "SmartNetworkSwitchSettings"

    const-string/jumbo v6, "No Item"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    if-nez v5, :cond_2

    .line 308
    new-instance v5, Lcom/android/settings/wifi/WifiSNSNoItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/settings/wifi/WifiSNSNoItemPreference;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    .line 310
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const v6, 0x7f0403d3

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 311
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b15d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 314
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mNoDevicesPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 286
    :cond_3
    return-void
.end method

.method private setPreferenceVisible(Z)V
    .locals 2
    .param p1, "mEnabled"    # Z

    .prologue
    .line 434
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 433
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setSkipInternetCheck(IZ)V
    .locals 5
    .param p1, "networkId"    # I
    .param p2, "skipInternetCheck"    # Z

    .prologue
    .line 375
    const-string/jumbo v2, "SmartNetworkSwitchSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSkipInternetCheck(), networkId :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 377
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 378
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x12d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v0, "agrs":Landroid/os/Bundle;
    const-string/jumbo v2, "excluded_networkId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 374
    .end local v0    # "agrs":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string/jumbo v2, "SmartNetworkSwitchSettings"

    const-string/jumbo v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSwitchButtonStatus()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 484
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 483
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 485
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 482
    return-void

    :cond_0
    move v0, v1

    .line 483
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 263
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 267
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 268
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 272
    new-instance v1, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setPreferenceVisible(Z)V

    .line 276
    const-string/jumbo v1, "sns_excluded_device"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    .line 277
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 279
    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setExcludedDevicesLayout()V

    .line 262
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f0b0f1c

    const v11, 0x7f0b0f1b

    const v10, 0x7f0b0f1a

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v6, 0x7f080129

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->addPreferencesFromResource(I)V

    .line 152
    const-string/jumbo v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 153
    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setActionBarTitle()V

    .line 155
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSnsAggMode()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 157
    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    .line 156
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 159
    const-string/jumbo v9, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 158
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_4

    :goto_1
    iput-boolean v7, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 160
    const-string/jumbo v6, "SmartNetworkSwitchSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Smart Network Switch Aggressive Mode Enabled : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v6, "sns_help"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 163
    .local v1, "snsSetting":Landroid/preference/Preference;
    const-string/jumbo v6, "sns_help_include_autowifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 164
    .local v2, "snsSettingIncludeAutoWifi":Landroid/preference/Preference;
    const-string/jumbo v6, "VZW"

    sget-object v7, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    :goto_2
    const-string/jumbo v6, "sns_aggressive_switching"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    .line 183
    iget-boolean v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v6, :cond_7

    .line 184
    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v7, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 185
    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v6

    .line 186
    if-eqz v6, :cond_1

    .line 188
    :cond_0
    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b0f1e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsSettingPref:Landroid/preference/PreferenceScreen;

    .line 200
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    .line 201
    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_8

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "action_bar"

    const-string/jumbo v9, "id"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 206
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 208
    .local v5, "toolbar":Landroid/view/ViewGroup;
    if-eqz v5, :cond_2

    .line 209
    iget-object v6, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 147
    :cond_2
    :goto_4
    return-void

    .end local v1    # "snsSetting":Landroid/preference/Preference;
    .end local v2    # "snsSettingIncludeAutoWifi":Landroid/preference/Preference;
    .end local v5    # "toolbar":Landroid/view/ViewGroup;
    :cond_3
    move v6, v8

    .line 156
    goto/16 :goto_0

    :cond_4
    move v7, v8

    .line 158
    goto/16 :goto_1

    .line 165
    .restart local v1    # "snsSetting":Landroid/preference/Preference;
    .restart local v2    # "snsSettingIncludeAutoWifi":Landroid/preference/Preference;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 170
    const-string/jumbo v7, "\n\n"

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 170
    const-string/jumbo v7, "\u200f"

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 170
    const-string/jumbo v7, "1. "

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 171
    const-string/jumbo v7, "\n"

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 171
    const-string/jumbo v7, "\u200f"

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 171
    const-string/jumbo v7, "2. "

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "snsSummary":Ljava/lang/String;
    :goto_5
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 173
    .end local v3    # "snsSummary":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    const-string/jumbo v7, "\n\n"

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    const-string/jumbo v7, "1. "

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 175
    const-string/jumbo v7, "\n"

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 175
    const-string/jumbo v7, "2. "

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "snsSummary":Ljava/lang/String;
    goto :goto_5

    .line 191
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "snsSummary":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 212
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v9, "right_pane_toolbar"

    const-string/jumbo v10, "id"

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 213
    .restart local v5    # "toolbar":Landroid/view/ViewGroup;
    if-eqz v5, :cond_2

    .line 214
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 215
    .local v4, "titleView":Landroid/view/View;
    const-string/jumbo v6, "SmartNetworkSwitchSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "actionbar :: titleView - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 217
    const-string/jumbo v6, "SmartNetworkSwitchSettings"

    const-string/jumbo v7, "setallcaps false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 219
    const-string/jumbo v6, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v9, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 220
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "titleView":Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/16 :goto_4
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 431
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 429
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->pause()V

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SmartNetworkSwitch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 442
    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 443
    check-cast v0, Ljava/lang/Boolean;

    .line 444
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->onSwitchButtonClicked(Z)V

    .line 445
    const/4 v1, 0x1

    return v1

    .line 448
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setActionBarTitle()V

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->resume()V

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 396
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 395
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    .line 397
    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->setPreferenceVisible(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 399
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    .line 401
    iget-boolean v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->snsAggressiveSwitching:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 412
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SmartNetworkSwitch"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 389
    return-void

    :cond_2
    move v0, v2

    .line 395
    goto :goto_0

    :cond_3
    move v1, v2

    .line 399
    goto :goto_1
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 491
    const-string/jumbo v2, "feature"

    .line 492
    .local v2, "featureKey":Ljava/lang/String;
    const-string/jumbo v3, "SNSU"

    .line 493
    .local v3, "featureValue":Ljava/lang/String;
    const-string/jumbo v1, "extra"

    .line 495
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 496
    :cond_0
    return-void

    .line 495
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 498
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 499
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    .line 505
    iget-object v5, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 490
    :cond_2
    return-void
.end method
