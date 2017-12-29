.class public Lcom/samsung/android/settings/PrivacyResetSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PrivacyResetSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/PrivacyResetSettings$1;,
        Lcom/samsung/android/settings/PrivacyResetSettings$2;,
        Lcom/samsung/android/settings/PrivacyResetSettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static hasCorrectMyAccount:Z


# instance fields
.field private final PWD_MGR_CLSNAME:Ljava/lang/String;

.field private mDiagnostics:Landroid/preference/PreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnabled:Z

.field private mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mResetSettings:Landroid/preference/PreferenceScreen;

.field private mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->isSupportAutoPowerOnOff()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nonVisibleKeys"    # Ljava/util/Collection;

    .prologue
    invoke-static {p0, p1}, Lcom/samsung/android/settings/PrivacyResetSettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/PrivacyResetSettings;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/PrivacyResetSettings;->updateAutoRestartSummary(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    .line 346
    new-instance v0, Lcom/samsung/android/settings/PrivacyResetSettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/PrivacyResetSettings$PrivacySearchIndexProvider;-><init>()V

    .line 345
    sput-object v0, Lcom/samsung/android/settings/PrivacyResetSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 81
    const-string/jumbo v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/samsung/android/settings/PrivacyResetSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacyResetSettings$1;-><init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 476
    new-instance v0, Lcom/samsung/android/settings/PrivacyResetSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacyResetSettings$2;-><init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 60
    return-void
.end method

.method private static canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    return v1

    .line 240
    :cond_0
    const-string/jumbo v1, "PrivacyResetSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t resolve action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x0

    return v1
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 414
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_0

    .line 415
    const-string/jumbo v9, "settings_reset"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->isSupportAutoPowerOnOff()Z

    move-result v9

    if-nez v9, :cond_1

    .line 429
    const-string/jumbo v9, "pref_auto_power_on_off"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 433
    const-string/jumbo v9, "pref_auto_clean"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 438
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 440
    .local v1, "hasCIQ":Z
    :try_start_0
    const-string/jumbo v9, "com.carrieriq.tmobile.IQToggle"

    const/16 v11, 0x80

    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    const/4 v2, 0x0

    .line 448
    .local v2, "hasMyAccountEnabled":Z
    :try_start_1
    const-string/jumbo v9, "com.tmobile.pr.mytmobile"

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 449
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 450
    .local v7, "rawVersion":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v11, 0x3

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, "stringVerson":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 453
    .local v4, "numVersion":F
    const-string/jumbo v9, "PrivacyResetSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isSkipMyAccount: rawVersion = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", stringVerson = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 454
    const-string/jumbo v12, ", numVersion = "

    .line 453
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const v9, 0x40666666    # 3.6f

    cmpl-float v9, v4, v9

    if-ltz v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    sput-boolean v9, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    .line 458
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 459
    .local v2, "hasMyAccountEnabled":Z
    const-string/jumbo v9, "PrivacyResetSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "hasMyAccountEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 468
    .end local v2    # "hasMyAccountEnabled":Z
    .end local v4    # "numVersion":F
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "rawVersion":Ljava/lang/String;
    .end local v8    # "stringVerson":Ljava/lang/String;
    :goto_2
    if-nez v1, :cond_3

    sget-boolean v9, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    if-eqz v9, :cond_5

    :cond_3
    if-eqz v2, :cond_5

    .line 412
    :goto_3
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 443
    const-string/jumbo v9, "PrivacyResetSettings"

    const-string/jumbo v11, "Package not found : IQToggle"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v2, "hasMyAccountEnabled":Z
    .restart local v4    # "numVersion":F
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "rawVersion":Ljava/lang/String;
    .restart local v8    # "stringVerson":Ljava/lang/String;
    :cond_4
    move v9, v10

    .line 456
    goto :goto_1

    .line 463
    .end local v2    # "hasMyAccountEnabled":Z
    .end local v4    # "numVersion":F
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "rawVersion":Ljava/lang/String;
    .end local v8    # "stringVerson":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 464
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    sput-boolean v10, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    .line 465
    const-string/jumbo v9, "PrivacyResetSettings"

    const-string/jumbo v10, "NumberFormatException : MyAccount version"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 460
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 461
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v10, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    .line 462
    const-string/jumbo v9, "PrivacyResetSettings"

    const-string/jumbo v10, "NameNotFoundException : MyAccount"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 469
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const-string/jumbo v9, "collect_diagnostics"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static isSupportAutoPowerOnOff()Z
    .locals 3

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "result":Z
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTO_POWER_ON_OFF"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 265
    :cond_0
    return v0
.end method

.method private static shouldRemoveAutoRestart(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/PrivacyResetSettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p3, "isShow"    # Z

    .prologue
    .line 224
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 225
    if-eqz p3, :cond_1

    .line 226
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateAutoRestartSummary(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    const v1, 0x7f0b1d08

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 244
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0264

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0263

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f03a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 326
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 327
    if-ne p1, v0, :cond_0

    .line 328
    if-ne p2, v0, :cond_1

    .line 330
    const-string/jumbo v0, "PrivacyResetSettings"

    const-string/jumbo v1, "Succeed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-class v0, Lcom/android/settings/MasterClear;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 332
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b176f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const-string/jumbo v0, "PrivacyResetSettings"

    const-string/jumbo v1, "Failed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/UserHandle;->isOwner()Z

    move-result v13

    iput-boolean v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEnabled:Z

    .line 92
    iget-boolean v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEnabled:Z

    if-nez v13, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    const v13, 0x7f0800ce

    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 100
    .local v8, "screen":Landroid/preference/PreferenceScreen;
    const-string/jumbo v13, "settings_reset"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    .line 101
    const-string/jumbo v13, "network_reset"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/RestrictedPreference;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 102
    const-string/jumbo v13, "factory_reset"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/RestrictedPreference;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 104
    const-string/jumbo v13, "collect_diagnostics"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    .line 105
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    const-string/jumbo v13, "category_restart"

    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 108
    .local v7, "resetCategory":Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_5

    const v13, 0x7f0b0d40

    :goto_0
    invoke-virtual {v7, v13}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 109
    const-string/jumbo v13, "pref_auto_clean"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 110
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    new-instance v14, Lcom/samsung/android/settings/PrivacyResetSettings$3;

    invoke-direct {v14, p0}, Lcom/samsung/android/settings/PrivacyResetSettings$3;-><init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v10

    .line 123
    .local v10, "shouldRemoveAutoRestart":Z
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->isSupportAutoPowerOnOff()Z

    move-result v1

    .line 124
    .local v1, "isSupportAutoPowerOnOff":Z
    if-eqz v10, :cond_1

    .line 125
    const-string/jumbo v13, "PrivacyResetSettings"

    const-string/jumbo v14, "Auto reset not support model"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x0

    invoke-direct {p0, v13, v7, v14}, Lcom/samsung/android/settings/PrivacyResetSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 129
    :cond_1
    if-nez v1, :cond_2

    .line 130
    const-string/jumbo v13, "pref_auto_power_on_off"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 131
    .local v4, "mAutoPowerOnOff":Landroid/preference/PreferenceScreen;
    const/4 v13, 0x0

    invoke-direct {p0, v4, v7, v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 134
    .end local v4    # "mAutoPowerOnOff":Landroid/preference/PreferenceScreen;
    :cond_2
    if-eqz v10, :cond_3

    if-eqz v1, :cond_6

    .line 138
    :cond_3
    :goto_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v3, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v3}, Lcom/samsung/android/settings/PrivacyResetSettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 140
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .line 141
    .local v9, "screenPreferenceCount":I
    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_9

    .line 142
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 143
    .local v6, "preference":Landroid/preference/Preference;
    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 144
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 108
    .end local v0    # "i":I
    .end local v1    # "isSupportAutoPowerOnOff":Z
    .end local v3    # "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "preference":Landroid/preference/Preference;
    .end local v9    # "screenPreferenceCount":I
    .end local v10    # "shouldRemoveAutoRestart":Z
    :cond_5
    const v13, 0x7f0b0d3f

    goto :goto_0

    .line 135
    .restart local v1    # "isSupportAutoPowerOnOff":Z
    .restart local v10    # "shouldRemoveAutoRestart":Z
    :cond_6
    const/4 v13, 0x0

    invoke-direct {p0, v7, v8, v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto :goto_1

    .line 145
    .restart local v0    # "i":I
    .restart local v3    # "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "preference":Landroid/preference/Preference;
    .restart local v9    # "screenPreferenceCount":I
    :cond_7
    instance-of v13, v6, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_4

    move-object v5, v6

    .line 146
    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 147
    .local v5, "pref":Landroid/preference/PreferenceCategory;
    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    .line 148
    .local v12, "subPreferenceCount":I
    add-int/lit8 v2, v12, -0x1

    .local v2, "j":I
    :goto_3
    if-ltz v2, :cond_4

    .line 149
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    .line 150
    .local v11, "subPreference":Landroid/preference/Preference;
    invoke-virtual {v11}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 151
    invoke-virtual {v5, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 158
    .end local v2    # "j":I
    .end local v5    # "pref":Landroid/preference/PreferenceCategory;
    .end local v6    # "preference":Landroid/preference/Preference;
    .end local v11    # "subPreference":Landroid/preference/Preference;
    .end local v12    # "subPreferenceCount":I
    :cond_9
    new-instance v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 87
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Reset"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 174
    const-string/jumbo v2, "factory_reset"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    .line 175
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "jp.softbank.mb.passwordmanager"

    const-string/jumbo v3, "jp.softbank.mb.passwordmanager.Pwdmanager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string/jumbo v2, "FuncCode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string/jumbo v2, "ResultString"

    const-string/jumbo v3, "fghigklmn087"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return v4

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 282
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 284
    const/4 v2, 0x1

    .line 285
    .local v2, "isEnabledResetSettings":Z
    const/4 v1, 0x1

    .line 286
    .local v1, "isEnabledNetworkRest":Z
    const/4 v0, 0x1

    .line 289
    .local v0, "isEnabledFactoryReset":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 290
    :cond_0
    const/4 v2, 0x0

    .line 291
    const/4 v1, 0x0

    .line 294
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    const-string/jumbo v7, "no_factory_reset"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 301
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    const/4 v2, 0x0

    .line 303
    const/4 v1, 0x0

    .line 304
    const/4 v0, 0x0

    .line 307
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_4

    .line 308
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 309
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v6, :cond_5

    .line 310
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 311
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v6, :cond_6

    .line 312
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 314
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v6, :cond_7

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sec_silent_auto_reset"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    .line 316
    .local v4, "state":Z
    :goto_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->updateAutoRestartSummary(Z)V

    .line 320
    .end local v4    # "state":Z
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v5, :cond_8

    .line 321
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v8, "Reset"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 280
    :cond_8
    return-void

    .line 295
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v8, "isFactoryResetAllowed"

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 296
    .local v3, "isFactoryResetAllowed":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_a

    if-ne v3, v4, :cond_b

    :cond_a
    move v6, v4

    :goto_2
    if-nez v6, :cond_2

    .line 297
    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    move v6, v5

    .line 296
    goto :goto_2

    .end local v3    # "isFactoryResetAllowed":I
    :cond_c
    move v4, v5

    .line 315
    goto :goto_1
.end method
