.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;,
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;,
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInit:Z

.field private mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

.field private mNearbyScanningObserver:Landroid/database/ContentObserver;

.field private mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    .line 320
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    .line 357
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 407
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nearbyScanning"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    .line 320
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    .line 357
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 407
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 87
    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    .line 89
    instance-of v0, p2, Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_1

    .line 91
    check-cast p2, Lcom/android/settings/SecSettingsSwitchPreference;

    .end local p2    # "nearbyScanning":Ljava/lang/Object;
    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local p2    # "nearbyScanning":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    .line 95
    check-cast p2, Lcom/android/settings/widget/SwitchBar;

    .end local p2    # "nearbyScanning":Ljava/lang/Object;
    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    goto :goto_0

    .line 97
    .restart local p2    # "nearbyScanning":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 99
    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "nearbyScanning":Ljava/lang/Object;
    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    goto :goto_0
.end method

.method private sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    .line 469
    return-void
.end method


# virtual methods
.method public getNearbyScanningSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public init()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    .line 110
    .local v0, "nsValue":I
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 114
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne v0, v3, :cond_1

    const v1, 0x7f0b1d08

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 120
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 118
    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    .line 141
    :cond_0
    :goto_1
    const-string/jumbo v1, "NearbyScanningEnabler"

    const-string/jumbo v2, "Switch is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    return v1

    .line 116
    :cond_1
    const v1, 0x7f0b1d09

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 130
    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_1

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_1
.end method

.method public onDestroyView()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 302
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-boolean v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    if-nez v2, :cond_0

    .line 250
    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "Init is faild"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v4

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 259
    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "Context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v4

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    .line 271
    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "ContentResolver is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v4

    .line 280
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 282
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 162
    iget-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    if-nez v3, :cond_0

    .line 164
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Init is faild"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v5

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 173
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v5

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    .line 185
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "ContentResolver is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v5

    .line 196
    :cond_2
    :try_start_0
    const-string/jumbo v3, "nearby_scanning_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 198
    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    .line 194
    invoke-virtual {v0, v3, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    .line 210
    .local v2, "nsValue":I
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v3, :cond_5

    .line 212
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 214
    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne v2, v4, :cond_3

    const v3, 0x7f0b1d08

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 218
    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne v2, v4, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 220
    return v4

    .line 200
    .end local v2    # "nsValue":I
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "nsValue":I
    :cond_3
    const v3, 0x7f0b1d09

    goto :goto_1

    :cond_4
    move v3, v5

    .line 218
    goto :goto_2

    .line 222
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_7

    .line 224
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v2, v4, :cond_6

    move v5, v4

    :cond_6
    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 226
    return v4

    .line 231
    :cond_7
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Switch is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v5
.end method
