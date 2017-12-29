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

.field private mDeviceAssitPreference:Landroid/preference/Preference;

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

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
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
    .line 80
    const-class v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    .line 377
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$1;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 162
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 459
    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 77
    return-void
.end method

.method private buildDefaultAppSelection()V
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    if-nez v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "default_app_selection_option"

    const/4 v3, 0x0

    .line 298
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    .line 302
    new-instance v1, Lcom/samsung/android/settings/applications/ManageDefaultApps$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$10;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 301
    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    return-void
.end method

.method private hasDefaultAppByMDM(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 434
    const-string/jumbo v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    .line 435
    const-string/jumbo v5, "getDefaultApplicationInternal"

    .line 436
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 437
    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 433
    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
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
    .line 557
    return-void
.end method

.method public exeOptAction()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public exePrefAction()V
    .locals 15

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 499
    const/4 v12, 0x0

    .line 500
    .local v12, "isSuccess":Z
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v0, "DefaultAppSelection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 502
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/preference/PreferenceScreen;Z)Z

    move-result v12

    .line 503
    .local v12, "isSuccess":Z
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v14

    .line 504
    .local v14, "size":I
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exePrefAction)size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-ge v14, v4, :cond_0

    .line 506
    const/4 v12, 0x0

    .line 507
    .local v12, "isSuccess":Z
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "DefaultApplications"

    .line 508
    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    .line 507
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .end local v12    # "isSuccess":Z
    :cond_0
    if-eqz v12, :cond_4

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v13

    .line 512
    .local v13, "selection":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exePrefAction)selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string/jumbo v0, "SetDefaultAppsAutomatically"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    const/4 v11, 0x0

    .line 515
    .local v11, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 516
    const-string/jumbo v1, "default_app_selection_option"

    .line 515
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 517
    .local v10, "currentValue":I
    const-string/jumbo v7, ""

    .line 518
    .local v7, "summaryValue":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    .line 520
    .local v9, "chars":Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 521
    .local v8, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "chars":Ljava/lang/CharSequence;
    :cond_1
    if-ne v11, v10, :cond_3

    .line 525
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "DefaultApplications"

    .line 526
    const-string/jumbo v4, "AlreadySelected"

    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "SetDefaultAppSelection"

    .line 525
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .end local v7    # "summaryValue":Ljava/lang/String;
    .end local v10    # "currentValue":I
    .end local v11    # "index":I
    .end local v13    # "selection":Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 498
    .end local v14    # "size":I
    :goto_2
    return-void

    .line 514
    .restart local v13    # "selection":Ljava/lang/String;
    .restart local v14    # "size":I
    :cond_2
    const/4 v11, 0x1

    .restart local v11    # "index":I
    goto :goto_0

    .line 529
    .restart local v7    # "summaryValue":Ljava/lang/String;
    .restart local v10    # "currentValue":I
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 530
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_app_selection_option"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "DefaultApplications"

    .line 532
    const-string/jumbo v4, "AlreadySelected"

    const-string/jumbo v5, "no"

    .line 531
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 536
    .end local v7    # "summaryValue":Ljava/lang/String;
    .end local v10    # "currentValue":I
    .end local v11    # "index":I
    .end local v13    # "selection":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "DefaultApplications"

    .line 537
    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    .line 536
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 541
    .end local v14    # "size":I
    .restart local v12    # "isSuccess":Z
    :cond_5
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/preference/PreferenceScreen;)Z

    move-result v12

    .line 542
    .local v12, "isSuccess":Z
    if-eqz v12, :cond_6

    .line 543
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    .line 544
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto :goto_2

    .line 546
    :cond_6
    sget-object v1, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 547
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    .line 546
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto :goto_2
.end method

.method public exeViewAction()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 350
    const/16 v0, 0xb5

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->rotateSettingsListPreference()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultPhonePreference;->rotateSettingsListPreference()V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultSmsPreference;->rotateSettingsListPreference()V

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->rotateSettingsListPreference()V

    .line 454
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    instance-of v0, v0, Lcom/android/settings/applications/DefaultHomePreference;

    if-eqz v0, :cond_4

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/applications/DefaultHomePreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultHomePreference;->rotateSettingsListPreference()V

    .line 444
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const v1, 0x7f080055

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->addPreferencesFromResource(I)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->myUserId:I

    .line 182
    const-string/jumbo v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 183
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 185
    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultBrowserPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    .line 186
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    .line 188
    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$6;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 187
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultBrowserPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    :cond_0
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultPhonePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    .line 216
    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 215
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultPhonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    :cond_1
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultSmsPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    .line 230
    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 229
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    :cond_2
    const-string/jumbo v1, "default_emergency_app"

    .line 246
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultEmergencyPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    .line 250
    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$9;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    .line 249
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    :cond_3
    const-string/jumbo v1, "default_app_selection"

    .line 262
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->buildDefaultAppSelection()V

    .line 266
    const-string/jumbo v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 267
    const-string/jumbo v1, "home_dcm"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "default_home"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 275
    const-string/jumbo v1, "domain_urls"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mAppDomainURLsPreference:Landroid/preference/Preference;

    .line 276
    const-string/jumbo v1, "assist_and_voice_input"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDeviceAssitPreference:Landroid/preference/Preference;

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.bmwgroup.touchcommand"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    const-string/jumbo v1, "home_dcm"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 284
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 285
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v1, "assist_and_voice_input"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 291
    :cond_5
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 174
    return-void

    .line 270
    :cond_6
    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultHomePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    .line 271
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
    .line 336
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DefaultApplications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 335
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 355
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreferenceClick false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultBrowserPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 362
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 374
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultSmsPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 365
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultPhonePreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 368
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 371
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 318
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultBrowserPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultBrowserPreference;)V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultPhonePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultPhonePreference;)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultSMSPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultSmsPreference;)V

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DefaultApplications"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 317
    :cond_1
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x7d0

    const/4 v2, 0x1

    .line 477
    const-string/jumbo v0, "DefaultApplicationsMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    const-string/jumbo v0, "DefaultApplicationsBrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 481
    :cond_2
    const-string/jumbo v0, "DefaultApplicationsCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 483
    :cond_3
    const-string/jumbo v0, "DefaultApplicationsHome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 485
    :cond_4
    const-string/jumbo v0, "DefaultAppSelection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 486
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 487
    :cond_5
    const-string/jumbo v0, "SetAsDefault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mAppDomainURLsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 489
    :cond_6
    const-string/jumbo v0, "DeviceAssistanceApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDeviceAssitPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public stopAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 561
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_0

    .line 562
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    .line 563
    sput-object v2, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    .line 560
    :cond_0
    return-void
.end method
