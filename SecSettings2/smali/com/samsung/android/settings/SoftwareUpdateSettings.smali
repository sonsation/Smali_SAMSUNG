.class public Lcom/samsung/android/settings/SoftwareUpdateSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SoftwareUpdateSettings$1;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$2;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$3;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mCscFeatureUsOpen:Z

.field private static mEnableDC:Z

.field private static mEnablePrl:Z

.field private static mEnableSimUnlock:Z

.field private static mInitialHour:I

.field private static mInitialMin:I

.field private static salesCode:Ljava/lang/String;


# instance fields
.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mScheduleTimePref:Landroid/preference/Preference;

.field private mScheduledUpdatePref:Landroid/preference/SwitchPreference;

.field private mSoftwareUpdatePref:Landroid/preference/Preference;

.field private mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

.field private mWifiOnlyPref:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableDC:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSupportInAppFOTASchedule()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getScheduledInstallTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    .line 92
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    .line 93
    sput v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    .line 107
    sput-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableDC:Z

    .line 108
    sput-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    .line 109
    sput-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    .line 111
    sput-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    .line 519
    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;-><init>()V

    .line 518
    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 594
    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$2;-><init>()V

    .line 593
    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    .line 96
    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    .line 97
    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    .line 98
    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    .line 650
    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 58
    return-void
.end method

.method private addSoftwareUpdateBadge()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    const v1, 0x7f040211

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private applySoftwareUpdatePolicy()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 614
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v7, "false"

    aput-object v7, v5, v6

    .line 615
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 616
    const-string/jumbo v9, "isOTAUpgradeAllowed"

    .line 615
    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 617
    .local v3, "isOTAUpgradeAllowed":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    .line 618
    const-string/jumbo v9, "isFirmwareAutoUpdateAllowed"

    .line 617
    invoke-static {v7, v8, v9, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 620
    .local v2, "isFirmwareAutoUpdateAllowed":I
    const/4 v1, 0x1

    .line 621
    .local v1, "bOTAEnabled":Z
    const/4 v0, 0x1

    .line 623
    .local v0, "bAutoUpdateChangeable":Z
    if-nez v3, :cond_0

    .line 624
    const-string/jumbo v7, "SoftwareUpdateSettings"

    const-string/jumbo v8, "FOTA is disabled by policy"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v1, 0x0

    .line 628
    :cond_0
    if-ne v2, v11, :cond_1

    .line 629
    const-string/jumbo v7, "SoftwareUpdateSettings"

    const-string/jumbo v8, "FOTA AutoUpdate is fixed by policy"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v0, 0x0

    .line 633
    :cond_1
    const-string/jumbo v7, "update"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 634
    .local v4, "p":Landroid/preference/Preference;
    if-eqz v4, :cond_2

    .line 635
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 638
    :cond_2
    const-string/jumbo v7, "wifi_only"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 639
    if-eqz v4, :cond_3

    .line 640
    if-eqz v1, :cond_5

    .end local v0    # "bAutoUpdateChangeable":Z
    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 643
    :cond_3
    const-string/jumbo v6, "scheduled_update"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 644
    if-eqz v4, :cond_4

    .line 645
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 613
    :cond_4
    return-void

    .restart local v0    # "bAutoUpdateChangeable":Z
    :cond_5
    move v0, v6

    .line 640
    goto :goto_0
.end method

.method private static getScheduledInstallTime(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    const-wide/16 v2, 0x0

    .line 505
    .local v2, "ret":J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_TIME"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 506
    .local v4, "time":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 507
    move-wide v2, v4

    .line 512
    .end local v4    # "time":J
    :cond_0
    :goto_0
    return-wide v2

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private initSoftwareUpdate()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 225
    .local v2, "root":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 228
    :cond_0
    const v3, 0x7f080120

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    .line 229
    const-string/jumbo v3, "update"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->addSoftwareUpdateBadge()V

    .line 231
    const-string/jumbo v3, "wifi_only"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    .line 232
    const-string/jumbo v3, "scheduled_update"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    .line 233
    const-string/jumbo v3, "scheduled_update_time"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    .line 235
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v8, "CscFeature_SyncML_ConfigGroupOpCode"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "feature":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "USOpen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    sput-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    .line 238
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 240
    const-string/jumbo v3, "wifi_only"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    .line 249
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    .line 250
    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSupportInAppFOTASchedule()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 252
    const-string/jumbo v3, "scheduled_update"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v3, "scheduled_update_time"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b147b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    :cond_2
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v8, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual {v3, v8, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    const-string/jumbo v3, "SoftwareUpdateSettings"

    const-string/jumbo v6, "Samsung FOTA - Sprint devices."

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sput-boolean v7, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableDC:Z

    .line 285
    const-string/jumbo v3, "persist.sys.omadm_hfa_prl"

    const-string/jumbo v6, "1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    .line 286
    const-string/jumbo v3, "SoftwareUpdateSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Is PRL enabled: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v8, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v6, "CscFeature_Setting_SupportSimUnlock"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    .line 290
    const-string/jumbo v3, "SoftwareUpdateSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Is UICC Unlock enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_3
    sget-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableDC:Z

    if-nez v3, :cond_4

    const-string/jumbo v3, "update_profile"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 294
    const-string/jumbo v3, "update_profile"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    .line 296
    :cond_4
    sget-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    if-nez v3, :cond_5

    const-string/jumbo v3, "update_prl"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 297
    const-string/jumbo v3, "update_prl"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    .line 299
    :cond_5
    sget-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    if-nez v3, :cond_6

    const-string/jumbo v3, "uicc_unlock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 300
    const-string/jumbo v3, "uicc_unlock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    .line 302
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V

    .line 223
    return-void

    :cond_7
    move v3, v6

    .line 236
    goto/16 :goto_0

    .line 242
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 243
    iget-object v8, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 244
    const-string/jumbo v9, "SOFTWARE_UPDATE_WIFI_ONLY2"

    .line 243
    invoke-static {v3, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v7

    :goto_3
    invoke-virtual {v8, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 245
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_9
    move v3, v6

    .line 243
    goto :goto_3

    .line 256
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getScheduledInstallTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 257
    .local v4, "scheduledUpdateTime":J
    const-string/jumbo v3, "SoftwareUpdateSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get scheduledUpdateTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_d

    .line 259
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 260
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    if-eqz v3, :cond_b

    .line 261
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 264
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 265
    .local v0, "c":Ljava/util/Calendar;
    if-eqz v0, :cond_c

    .line 266
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 267
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    .line 268
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    .line 274
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_c
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 271
    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 272
    const-string/jumbo v3, "scheduled_update_time"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 306
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    .line 307
    const-string/jumbo v6, "CscFeature_SyncML_DeltaBinaryDownVia"

    const-string/jumbo v7, "Not_Define"

    .line 306
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "wifiDedicated":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "SMLDM_BEARER"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 309
    :cond_0
    const/4 v2, 0x1

    .line 313
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 314
    .local v1, "bShowDownloadConfirmAlways":Z
    sget-object v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "TMB/TMK"

    sget-object v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 316
    :goto_1
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    :goto_2
    return v0

    .line 311
    .end local v1    # "bShowDownloadConfirmAlways":Z
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "wifi_dedicated"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .local v2, "bWifiDedicated":Z
    goto :goto_0

    .end local v2    # "bWifiDedicated":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "bWifiDedicated":Z
    goto :goto_0

    .line 314
    .end local v2    # "bWifiDedicated":Z
    .restart local v1    # "bShowDownloadConfirmAlways":Z
    :cond_3
    const/4 v0, 0x0

    .local v0, "bRemoveAutoUpdateMenu":Z
    goto :goto_1

    .end local v0    # "bRemoveAutoUpdateMenu":Z
    :cond_4
    move v0, v4

    .line 316
    goto :goto_2
.end method

.method private static isSupportInAppFOTASchedule()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setScheduledInstallTime(II)V
    .locals 9
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 470
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 471
    .local v1, "c":Ljava/util/Calendar;
    const-wide/16 v4, 0x0

    .line 472
    .local v4, "lScheduleTime":J
    if-ne p1, v7, :cond_1

    if-ne p2, v7, :cond_1

    move v0, v3

    .line 473
    .local v0, "bScheduleOff":Z
    :goto_0
    if-nez v0, :cond_2

    .line 475
    sput p1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    .line 476
    sput p2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    .line 478
    const/16 v7, 0xb

    invoke-virtual {v1, v7, p1}, Ljava/util/Calendar;->set(II)V

    .line 479
    const/16 v7, 0xc

    invoke-virtual {v1, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 480
    const/16 v7, 0xd

    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 481
    const/16 v7, 0xe

    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 482
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    if-eqz v6, :cond_0

    .line 483
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {v6, v3}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 486
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 492
    :goto_1
    const-string/jumbo v3, "SoftwareUpdateSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save scheduled install time to settings db :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_TIME"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 496
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "sec.fota.intent.SET_INSTALL_TIME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "changed_data"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 498
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    return-void

    .end local v0    # "bScheduleOff":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    move v0, v6

    .line 472
    goto :goto_0

    .line 489
    .restart local v0    # "bScheduleOff":Z
    :cond_2
    const/4 v3, 0x2

    sput v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    .line 490
    sput v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    goto :goto_1
.end method

.method private updateLastCheckedDate()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 178
    iget-object v9, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    if-nez v9, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    const-string/jumbo v4, ""

    .line 183
    .local v4, "summary":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "salesCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "SOFTWARE_UPDATE_LAST_CHECKED_DATE"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    .line 194
    .local v6, "time":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v9, v6, v10

    if-gtz v9, :cond_1

    .line 195
    const-string/jumbo v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b04ed

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 196
    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .line 197
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 196
    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 195
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 203
    .end local v6    # "time":J
    :cond_1
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_SyncML_DisableWarning4DataCostDuringFota"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 204
    if-eqz v3, :cond_2

    const-string/jumbo v9, "TMB/TMK"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 203
    if-nez v9, :cond_6

    .line 205
    :cond_2
    if-eqz v3, :cond_7

    const-string/jumbo v9, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 207
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    .line 208
    const-string/jumbo v10, "CscFeature_SyncML_DeltaBinaryDownVia"

    const-string/jumbo v11, "Not_Define"

    .line 207
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, "wifiDedicated":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "SMLDM_BEARER"

    invoke-static {v9, v10, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v14, :cond_8

    .line 210
    :cond_3
    const/4 v1, 0x1

    .line 214
    :goto_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_a

    .line 215
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v9, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    :goto_4
    return-void

    .line 189
    .end local v8    # "wifiDedicated":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04ea

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v9, "SoftwareUpdateSettings"

    const-string/jumbo v10, "SettingNotFoundException in updateLastCheckedDate"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_6
    const/4 v0, 0x1

    .local v0, "bNoChargeFota":Z
    goto :goto_2

    .line 205
    .end local v0    # "bNoChargeFota":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "bNoChargeFota":Z
    goto :goto_2

    .line 212
    .end local v0    # "bNoChargeFota":Z
    .restart local v8    # "wifiDedicated":Ljava/lang/String;
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "wifi_dedicated"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .local v1, "bWifiDedicated":Z
    goto :goto_3

    .end local v1    # "bWifiDedicated":Z
    :cond_9
    const/4 v1, 0x0

    .local v1, "bWifiDedicated":Z
    goto :goto_3

    .line 218
    .end local v1    # "bWifiDedicated":Z
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04ec

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "summary_charge":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const-string/jumbo v0, "SoftwareUpdateSettings"

    const-string/jumbo v1, "onCreate Software Update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 136
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/16 v4, 0xc

    const/16 v2, 0xb

    .line 443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 444
    .local v6, "calendar":Ljava/util/Calendar;
    sget v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    invoke-virtual {v6, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 445
    sget v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    invoke-virtual {v6, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 446
    packed-switch p1, :pswitch_data_0

    .line 457
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 448
    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 451
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 452
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 453
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    .line 448
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 454
    .local v0, "t":Lcom/samsung/android/app/SemTimePickerDialog;
    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 455
    return-object v0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x1

    .line 327
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 328
    const/4 v1, 0x0

    .line 331
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 333
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v2, v5, :cond_0

    .line 334
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0b0444

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0201c2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 335
    const/4 v3, 0x0

    .line 334
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "NameNotFoundException in onCreateOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iput-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 344
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 347
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:appid"

    const-string/jumbo v5, "update_your_device"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return v7

    .line 353
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "SoftwareUpdateSettings"

    const-string/jumbo v5, "ActivityNotFoundException in onOptionsItemSelected"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v2, 0x0

    .line 360
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 363
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 364
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "upgrade"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    return v7

    .line 369
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 370
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "SoftwareUpdateSettings"

    const-string/jumbo v5, "NameNotFoundException in onOptionsItemSelected"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoftwareUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 381
    const-string/jumbo v5, "SoftwareUpdateSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string/jumbo v5, "scheduled_update"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1002f2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 384
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 385
    .local v1, "bScheduleUpdateEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_EVERYDAY"

    if-eqz v1, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    if-eqz v1, :cond_2

    .line 387
    sget v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sget v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 404
    .end local v1    # "bScheduleUpdateEnabled":Z
    :cond_1
    :goto_0
    return v4

    .line 390
    .restart local v1    # "bScheduleUpdateEnabled":Z
    :cond_2
    invoke-direct {p0, v8, v8}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 393
    .end local v1    # "bScheduleUpdateEnabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v5, "wifi_only"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1002f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 395
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 396
    .local v0, "bAutoDownloadChecked":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "SOFTWARE_UPDATE_WIFI_ONLY2"

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "sec.fota.intent.WIFIONLY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "changed_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x20

    .line 409
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "Software Update Checked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 417
    :cond_1
    const-string/jumbo v2, "update_prl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "Update PRL is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.sprint.START_PRL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 422
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v2, "update_profile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "Update Profile is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.sprint.START_DP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 427
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v2, "uicc_unlock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 428
    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "UICC Unlock is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.sprint.SIM_UNLOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 432
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v2, "scheduled_update_time"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removeDialog(I)V

    .line 435
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->showDialog(I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->initSoftwareUpdate()V

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->applySoftwareUpdatePolicy()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SoftwareUpdate"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 464
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    .line 462
    :cond_0
    return-void
.end method
