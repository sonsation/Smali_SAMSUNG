.class public Lcom/samsung/android/settings/applications/ManageDefaultApps;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/applications/ManageDefaultApps$1;,
        Lcom/samsung/android/settings/applications/ManageDefaultApps$2;,
        Lcom/samsung/android/settings/applications/ManageDefaultApps$3;,
        Lcom/samsung/android/settings/applications/ManageDefaultApps$4;,
        Lcom/samsung/android/settings/applications/ManageDefaultApps$5;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;

.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mAppDomainURLsPreference:Landroid/preference/Preference;

.field private mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

.field private mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

.field private mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

.field private mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

.field private mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHome:Landroid/preference/Preference;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private myUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Lcom/android/settings/applications/DefaultBrowserPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/applications/ManageDefaultApps;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->myUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/applications/ManageDefaultApps;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->hasDefaultAppByMDM(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    .line 366
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$1;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 154
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 423
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 75
    return-void
.end method

.method private buildDefaultAppSelection()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    if-nez v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 290
    const-string/jumbo v2, "default_app_selection_option"

    const/4 v3, 0x0

    .line 289
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    .line 293
    new-instance v1, Lcom/samsung/android/settings/applications/ManageDefaultApps$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$10;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    return-void
.end method

.method private hasDefaultAppByMDM(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 398
    const-string/jumbo v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    .line 399
    const-string/jumbo v5, "getDefaultApplicationInternal"

    .line 400
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 401
    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 397
    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "defaultApp":Ljava/lang/String;
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public exeOptAction()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public exePrefAction()V
    .locals 7

    .prologue
    .line 454
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/preference/PreferenceScreen;)Z

    move-result v6

    .line 455
    .local v6, "isSuccess":Z
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "stateId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 457
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 453
    :goto_0
    return-void

    .line 460
    :cond_0
    const-string/jumbo v0, "DefaultApplicationsMessage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 462
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    .line 461
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_1
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto :goto_0

    .line 463
    :cond_2
    const-string/jumbo v0, "DefaultApplicationsBrowser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 465
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    .line 464
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_3
    const-string/jumbo v0, "DefaultApplicationsCall"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 468
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    .line 467
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 469
    :cond_4
    const-string/jumbo v0, "DefaultApplicationsHome"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 471
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    .line 470
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exeViewAction()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 339
    const/16 v0, 0xb5

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->rotateSettingsListPreference()V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultPhonePreference;->rotateSettingsListPreference()V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultSmsPreference;->rotateSettingsListPreference()V

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->rotateSettingsListPreference()V

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    instance-of v0, v0, Lcom/android/settings/applications/DefaultHomePreference;

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/applications/DefaultHomePreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultHomePreference;->rotateSettingsListPreference()V

    .line 408
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->addPreferencesFromResource(I)V

    .line 171
    new-instance v1, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/applications/EmHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V

    sput-object v1, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->myUserId:I

    .line 176
    const-string/jumbo v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 177
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 179
    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultBrowserPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    .line 180
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    .line 182
    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$6;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 181
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultBrowserPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    :cond_0
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultPhonePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    .line 207
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    .line 209
    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 208
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultPhonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    :cond_1
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultSmsPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    .line 220
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    .line 222
    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 221
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    :cond_2
    const-string/jumbo v1, "default_emergency_app"

    .line 240
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultEmergencyPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    .line 244
    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$9;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 243
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    :cond_3
    const-string/jumbo v1, "default_app_selection"

    .line 255
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->buildDefaultAppSelection()V

    .line 259
    const-string/jumbo v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 260
    const-string/jumbo v1, "home_dcm"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "default_home"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 268
    const-string/jumbo v1, "domain_urls"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mAppDomainURLsPreference:Landroid/preference/Preference;

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.bmwgroup.touchcommand"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    const-string/jumbo v1, "home_dcm"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 276
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 277
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 282
    :cond_5
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 166
    return-void

    .line 263
    :cond_6
    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultHomePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "home_dcm"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DefaultApplications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 323
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 344
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreferenceClick false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultBrowserPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 351
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 363
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultSmsPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 354
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultPhonePreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 357
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 360
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 306
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultBrowserPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultBrowserPreference;)V

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultPhonePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultPhonePreference;)V

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultSMSPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultSmsPreference;)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DefaultApplications"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 305
    :cond_1
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x7d0

    const/4 v2, 0x1

    .line 438
    const-string/jumbo v0, "DefaultApplicationsMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string/jumbo v0, "DefaultApplicationsBrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 442
    :cond_2
    const-string/jumbo v0, "DefaultApplicationsCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 444
    :cond_3
    const-string/jumbo v0, "DefaultApplicationsHome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public stopAction()V
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    .line 486
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    .line 484
    return-void
.end method
