.class public Lcom/samsung/android/settings/safetycare/SafetyCareSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SafetyCareSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/safetycare/SafetyCareSettings$1;,
        Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;,
        Lcom/samsung/android/settings/safetycare/SafetyCareSettings$3;,
        Lcom/samsung/android/settings/safetycare/SafetyCareSettings$4;,
        Lcom/samsung/android/settings/safetycare/SafetyCareSettings$5;,
        Lcom/samsung/android/settings/safetycare/SafetyCareSettings$6;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppLock:Landroid/preference/PreferenceScreen;

.field private mAppLockObserver:Landroid/database/ContentObserver;

.field private mAppPermissions:Landroid/preference/PreferenceScreen;

.field private mAssistance:Landroid/preference/PreferenceScreen;

.field private mAssistantObserver:Landroid/database/ContentObserver;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDiagnosticInfo:Landroid/preference/SwitchPreference;

.field private mFindMyMobile:Landroid/preference/Preference;

.field private mFromPackageInstaller:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocationModeObserver:Landroid/database/ContentObserver;

.field private mLocationSettings:Landroid/preference/PreferenceScreen;

.field private mPrivateBox:Landroid/preference/PreferenceScreen;

.field private mPrivateMode:Landroid/preference/PreferenceScreen;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mSafetycareHelp:Landroid/preference/PreferenceScreen;

.field private mSecurityCategory:Landroid/preference/PreferenceCategory;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mVerizonEmergencyAlert:Landroid/preference/PreferenceScreen;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->appLockSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->locationSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->privateModeSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->MY_USER_ID:I

    .line 928
    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$6;-><init>()V

    .line 927
    sput-object v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFromPackageInstaller:Z

    .line 148
    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$1;-><init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mLocationModeObserver:Landroid/database/ContentObserver;

    .line 155
    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;-><init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    .line 178
    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$3;-><init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 185
    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$4;-><init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLockObserver:Landroid/database/ContentObserver;

    .line 192
    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$5;-><init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    return-void
.end method

.method private appLockSummaryUpdate()V
    .locals 4

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "app_lock_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 708
    .local v0, "appLockState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1ad8

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 705
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1ad9

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 33

    .prologue
    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    .line 332
    .local v28, "root":Landroid/preference/PreferenceScreen;
    if-eqz v28, :cond_0

    .line 333
    invoke-virtual/range {v28 .. v28}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 336
    :cond_0
    const v2, 0x7f0800ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->addPreferencesFromResource(I)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getPrivacyAndSafetyTitle(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 340
    const-string/jumbo v2, "key_private_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    .line 341
    const-string/jumbo v2, "key_private_box"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateBox:Landroid/preference/PreferenceScreen;

    .line 342
    const-string/jumbo v2, "key_applock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    .line 343
    const-string/jumbo v2, "key_location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mLocationSettings:Landroid/preference/PreferenceScreen;

    .line 344
    const-string/jumbo v2, "key_app_permissions"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppPermissions:Landroid/preference/PreferenceScreen;

    .line 345
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppPermissions:Landroid/preference/PreferenceScreen;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.intent.action.ACTION_MANAGE_PERMISSIONS_CHN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 350
    :goto_0
    const-string/jumbo v2, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    .line 351
    const-string/jumbo v2, "safetycare_help"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    .line 352
    const-string/jumbo v2, "key_vzw_emergency_alert"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mVerizonEmergencyAlert:Landroid/preference/PreferenceScreen;

    .line 354
    const-string/jumbo v2, "security_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    .line 355
    const-string/jumbo v2, "find_my_mobile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFindMyMobile:Landroid/preference/Preference;

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v18

    .line 358
    .local v18, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v16

    .line 359
    .local v16, "isLDUmodel":Z
    const/16 v19, 0x0

    .line 360
    .local v19, "isSupportLMM":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_1

    .line 361
    const/16 v19, 0x1

    .line 364
    :cond_1
    const/4 v15, 0x0

    .line 365
    .local v15, "hasFMMDMClient":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v15

    .line 367
    .local v15, "hasFMMDMClient":Z
    const-string/jumbo v2, "SafetyCareSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportLMM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string/jumbo v2, "SafetyCareSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasFMMDMClient : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string/jumbo v2, "SafetyCareSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasMobileTracker : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "com.sec.android.app.mt"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string/jumbo v2, "SafetyCareSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSmsCapable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v2, :cond_23

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 373
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    :cond_3
    :goto_1
    const-string/jumbo v2, "toggle_install_applications"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->isNonMarketAppsAllowed()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 384
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v4, 0x7f0b089c

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 389
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 390
    :cond_6
    const-string/jumbo v2, "key_private_mode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 393
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_26

    .line 395
    :cond_8
    :goto_2
    const-string/jumbo v2, "key_private_mode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 398
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportPrivateBoxInSettings(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 399
    const-string/jumbo v2, "key_private_box"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 404
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_a

    const-string/jumbo v2, "applock"

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 408
    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v29

    .line 410
    .local v29, "sales_code":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v4, "CscFeature_Common_ConfigOpDemoMode"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "verizonwireless_store_demo_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    .line 411
    const-string/jumbo v2, "key_app_permissions"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removePreference(Ljava/lang/String;)V

    .line 414
    :cond_b
    const-string/jumbo v2, "VZW"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 415
    const-string/jumbo v2, "key_safety"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v4, 0x7f0b0b1f

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 418
    :cond_c
    const-string/jumbo v2, "key_report_diagnostics_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    .line 420
    const-string/jumbo v2, "VZW"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/16 v20, 0x1

    .line 421
    .local v20, "isVZW":Z
    :goto_5
    const/4 v8, 0x0

    .line 422
    .local v8, "c":Landroid/content/Context;
    const/16 v26, 0x0

    .line 423
    .local v26, "resources":Landroid/content/res/Resources;
    const-string/jumbo v9, ""

    .line 425
    .local v9, "collectionString":Ljava/lang/String;
    const-string/jumbo v32, "com.sec.android.app.setupwizard"

    .line 426
    .local v32, "vzwPackageName":Ljava/lang/String;
    if-eqz v20, :cond_d

    .line 428
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v26

    .line 429
    .local v26, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 430
    .local v8, "c":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v4, "diagnostic_terms_vzw"

    const-string/jumbo v5, "string"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 440
    .end local v8    # "c":Landroid/content/Context;
    .end local v26    # "resources":Landroid/content/res/Resources;
    :cond_d
    :goto_6
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 441
    const-string/jumbo v2, "VZW"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v2

    .line 440
    if-eqz v2, :cond_f

    .line 442
    :cond_e
    const-string/jumbo v2, "key_report_diagnostics_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removePreference(Ljava/lang/String;)V

    .line 444
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_10

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 450
    :cond_10
    const-string/jumbo v2, "content://com.sec.knox.provider2/KioskMode"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 451
    .local v3, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 452
    .local v10, "cursor":Landroid/database/Cursor;
    const/16 v27, 0x0

    .line 454
    .local v27, "result":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 456
    const-string/jumbo v5, "isKioskModeEnabled"

    .line 454
    const/4 v4, 0x0

    .line 456
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 454
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 457
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2a

    .line 458
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 461
    const-string/jumbo v2, "isKioskModeEnabled"

    .line 459
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 462
    .local v27, "result":Ljava/lang/String;
    if-eqz v27, :cond_11

    const-string/jumbo v2, "true"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 463
    const-string/jumbo v2, "SafetyCareSettings"

    const-string/jumbo v4, "KIOSKMODE enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    .end local v27    # "result":Ljava/lang/String;
    :cond_11
    :goto_7
    if-eqz v10, :cond_12

    .line 473
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 477
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_12
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_2c

    const/16 v17, 0x1

    .line 478
    .local v17, "isSecondaryUser":Z
    :goto_9
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 479
    const-string/jumbo v2, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 480
    const-string/jumbo v2, "safetycare_help"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 507
    :cond_13
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->showVzwEmergencyAlertOption(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 508
    const-string/jumbo v2, "key_vzw_emergency_alert"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 511
    :cond_14
    const-string/jumbo v2, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "safetycare_help"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_15

    .line 512
    const-string/jumbo v2, "key_safety"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 513
    const-string/jumbo v2, "key_privacy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 516
    :cond_15
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 517
    const-string/jumbo v2, "key_location"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 518
    if-eqz v17, :cond_16

    .line 519
    const-string/jumbo v2, "key_privacy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 524
    :cond_16
    const/16 v22, 0x0

    .line 525
    .local v22, "knoxCustomSettingsState":I
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v21

    .line 526
    .local v21, "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    if-eqz v21, :cond_17

    .line 527
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v22

    .line 529
    :cond_17
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_18

    .line 530
    const-string/jumbo v2, "key_location"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 532
    :cond_18
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_19

    .line 533
    const-string/jumbo v2, "key_app_permissions"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 537
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->setHasOptionsMenu(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1a

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 541
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mLocationSettings:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1b

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mLocationSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 543
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1c

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 545
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1d

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 547
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1e

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 550
    :cond_1e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_1f

    .line 552
    const-string/jumbo v2, "security_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removePreference(Ljava/lang/String;)V

    .line 557
    :cond_1f
    sget v2, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->MY_USER_ID:I

    if-nez v2, :cond_31

    const/16 v24, 0x1

    .line 559
    .local v24, "mIsPrimary":Z
    :goto_b
    const-string/jumbo v2, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 561
    if-eqz v24, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 601
    :cond_20
    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 603
    new-instance v25, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 604
    .local v25, "otherSecurityPreferece":Landroid/preference/Preference;
    const-string/jumbo v2, "other_security_settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 605
    const v2, 0x7f0b08ba

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 606
    const v2, 0x7f0b08bb

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 607
    const-string/jumbo v2, "com.android.settings.OtherSecuritySettings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 608
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 609
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 612
    .end local v25    # "otherSecurityPreferece":Landroid/preference/Preference;
    :cond_21
    return-object v28

    .line 348
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v9    # "collectionString":Ljava/lang/String;
    .end local v15    # "hasFMMDMClient":Z
    .end local v16    # "isLDUmodel":Z
    .end local v17    # "isSecondaryUser":Z
    .end local v18    # "isShopDemo":Z
    .end local v19    # "isSupportLMM":Z
    .end local v20    # "isVZW":Z
    .end local v21    # "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    .end local v22    # "knoxCustomSettingsState":I
    .end local v24    # "mIsPrimary":Z
    .end local v29    # "sales_code":Ljava/lang/String;
    .end local v32    # "vzwPackageName":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppPermissions:Landroid/preference/PreferenceScreen;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 374
    .restart local v15    # "hasFMMDMClient":Z
    .restart local v16    # "isLDUmodel":Z
    .restart local v18    # "isShopDemo":Z
    .restart local v19    # "isSupportLMM":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v2, :cond_25

    if-nez v18, :cond_24

    if-nez v16, :cond_24

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_25

    .line 375
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 376
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    if-nez v19, :cond_3

    if-nez v15, :cond_3

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 394
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 393
    if-nez v2, :cond_8

    .line 394
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v2

    .line 393
    if-nez v2, :cond_8

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    .line 393
    if-eqz v2, :cond_9

    goto/16 :goto_2

    .line 401
    :cond_27
    const-string/jumbo v2, "key_private_mode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 405
    :cond_28
    const-string/jumbo v2, "key_applock"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 420
    .restart local v29    # "sales_code":Ljava/lang/String;
    :cond_29
    const/16 v20, 0x0

    .restart local v20    # "isVZW":Z
    goto/16 :goto_5

    .line 434
    .restart local v9    # "collectionString":Ljava/lang/String;
    .restart local v32    # "vzwPackageName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 435
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "SafetyCareSettings"

    const-string/jumbo v4, "error getting resource"

    invoke-static {v2, v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    const-string/jumbo v2, "key_report_diagnostics_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 431
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v11

    .line 432
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "SafetyCareSettings"

    const-string/jumbo v4, "error getting activity of create package context"

    invoke-static {v2, v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    const-string/jumbo v2, "key_report_diagnostics_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 467
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .local v27, "result":Ljava/lang/String;
    :cond_2a
    :try_start_2
    const-string/jumbo v2, "SafetyCareSettings"

    const-string/jumbo v4, "KIOSKMODE disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    .line 469
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v27    # "result":Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 470
    .local v14, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    if-eqz v10, :cond_12

    .line 473
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 471
    .end local v14    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 472
    if-eqz v10, :cond_2b

    .line 473
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_2b
    throw v2

    .line 477
    :cond_2c
    const/16 v17, 0x0

    .restart local v17    # "isSecondaryUser":Z
    goto/16 :goto_9

    .line 482
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v4, "com.sec.android.app.safetyassurance"

    invoke-static {v2, v4}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 483
    const-string/jumbo v2, "SafetyCareSettings"

    const-string/jumbo v4, "com.sec.android.app.safetyassurance is missing. So we removed safety preferences"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string/jumbo v2, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 486
    const-string/jumbo v2, "safetycare_help"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 489
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEmergencyTableSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 490
    const-string/jumbo v2, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 493
    :cond_2f
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 494
    const-string/jumbo v2, "safetycare_help"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    .line 495
    if-eqz v17, :cond_13

    .line 496
    const-string/jumbo v2, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 499
    :cond_30
    if-eqz v17, :cond_13

    .line 500
    const-string/jumbo v2, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 557
    .restart local v21    # "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    .restart local v22    # "knoxCustomSettingsState":I
    :cond_31
    const/16 v24, 0x0

    .restart local v24    # "mIsPrimary":Z
    goto/16 :goto_b

    .line 561
    :cond_32
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 562
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 564
    const v2, 0x7f0800fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->addPreferencesFromResource(I)V

    .line 571
    :goto_d
    new-instance v13, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 573
    .local v13, "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    new-instance v23, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 574
    .local v23, "mDem":Lcom/samsung/android/security/SemSdCardEncryption;
    if-eqz v13, :cond_20

    invoke-virtual {v13}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 575
    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v31

    .line 576
    .local v31, "status":I
    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v30

    .line 577
    .local v30, "state":Ljava/lang/String;
    if-nez v30, :cond_34

    .line 578
    const v2, 0x7f080102

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_c

    .line 567
    .end local v13    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    .end local v23    # "mDem":Lcom/samsung/android/security/SemSdCardEncryption;
    .end local v30    # "state":Ljava/lang/String;
    .end local v31    # "status":I
    :cond_33
    const v2, 0x7f080112

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->addPreferencesFromResource(I)V

    goto :goto_d

    .line 591
    .restart local v13    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v23    # "mDem":Lcom/samsung/android/security/SemSdCardEncryption;
    .restart local v30    # "state":Ljava/lang/String;
    .restart local v31    # "status":I
    :cond_34
    if-nez v31, :cond_35

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionAppliedSDCard()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 592
    :cond_35
    const v2, 0x7f08010e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_c

    .line 594
    :cond_36
    const v2, 0x7f08010f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_c
.end method

.method private static isExistSamsungAccount(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    const/4 v1, 0x0

    .line 674
    .local v1, "isSA":Z
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 675
    .local v2, "manager":Landroid/accounts/AccountManager;
    const-string/jumbo v4, "com.osp.app.signin"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 677
    .local v3, "samsungAccnts":[Landroid/accounts/Account;
    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    .line 678
    const/4 v1, 0x1

    .line 683
    .end local v2    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    const-string/jumbo v4, "SafetyCareSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSA : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v1

    .line 680
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 724
    const-string/jumbo v2, "install_non_market_apps"

    .line 723
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private locationSummaryUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 716
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mLocationSettings:Landroid/preference/PreferenceScreen;

    .line 717
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 718
    const-string/jumbo v2, "location_mode"

    .line 717
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const v0, 0x7f0b1ad8

    .line 716
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 715
    return-void

    .line 719
    :cond_0
    const v0, 0x7f0b1ad9

    goto :goto_0
.end method

.method private privateModeSummaryUpdate()V
    .locals 4

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 696
    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, 0x0

    .line 695
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 698
    .local v0, "personalModeState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1ad8

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 693
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1ad9

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private removeSafetyPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 687
    :cond_0
    return-void
.end method

.method private setDiagnostic(Z)V
    .locals 5
    .param p1, "v"    # Z

    .prologue
    .line 916
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 917
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "samsung_errorlog_agree"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 918
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 919
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 922
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v1, "i2":Landroid/content/Intent;
    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 915
    return-void

    .line 916
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "i2":Landroid/content/Intent;
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 857
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    .line 862
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 861
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 855
    return-void

    .line 862
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 827
    const v0, 0x7f0b15ff

    .line 828
    .local v0, "messageStringRes":I
    const v1, 0x104000a

    .line 829
    .local v1, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    const v0, 0x7f0b1600

    .line 831
    const v1, 0x7f0b0832

    .line 833
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    .line 834
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 836
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 837
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 836
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 838
    const v3, 0x7f0b15fb

    .line 836
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 840
    const v3, 0x1040009

    .line 836
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 825
    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 777
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 778
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04002c

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 779
    .local v1, "layout":Landroid/view/View;
    const v6, 0x7f11013a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 780
    .local v3, "mDescription":Landroid/widget/TextView;
    const v6, 0x7f11013b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 781
    .local v2, "mCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "one_time_operate"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 782
    const v4, 0x104000a

    .line 783
    .local v4, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 784
    const v5, 0x7f0b1600

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 785
    const v4, 0x7f0b0832

    .line 787
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 788
    const v6, 0x7f0b15fb

    .line 787
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 790
    new-instance v6, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$7;-><init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Landroid/widget/CheckBox;)V

    .line 787
    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 821
    const v6, 0x1040009

    .line 787
    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 776
    return-void

    .line 781
    .end local v4    # "positiveStringRes":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public moveFindMyMobile()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->isExistSamsungAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "samsung_signin"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v8, "mIntent":Landroid/content/Intent;
    const-string/jumbo v0, "com.osp.app.signin"

    const-string/jumbo v1, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string/jumbo v0, "MODE"

    const-string/jumbo v1, "REMOTE_CONTROLS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const/16 v0, 0x3e9

    :try_start_0
    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v8    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 662
    .restart local v8    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 663
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 666
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "mIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 667
    const v3, 0x7f0b0791

    const/4 v6, 0x0

    move-object v5, v4

    .line 666
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 645
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 646
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 647
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 649
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0791

    const/4 v6, 0x0

    move-object v5, v4

    .line 648
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 644
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 846
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 847
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 848
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->setNonMarketAppsAllowed(Z)V

    .line 849
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 845
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 847
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 636
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 635
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 617
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 619
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 628
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 631
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 616
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 729
    const/4 v2, 0x1

    .line 730
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "toggle_install_applications"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 735
    iget-boolean v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFromPackageInstaller:Z

    if-eqz v3, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->warnAppInstallationFromPackageInstaller()V

    .line 738
    const/4 v2, 0x0

    .line 758
    :cond_0
    :goto_0
    return v2

    .line 740
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->warnAppInstallation()V

    .line 743
    const/4 v2, 0x0

    goto :goto_0

    .line 746
    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 748
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v3, "key_report_diagnostics_info"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 750
    .local v0, "bChecked":Z
    if-eqz v0, :cond_4

    .line 751
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->showReportDiagnosticinfoDialog()V

    .line 756
    :goto_1
    return v4

    .line 753
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 754
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->setDiagnostic(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppPermissions:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 773
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_2

    .line 768
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->moveFindMyMobile()V

    .line 771
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 217
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 222
    const-string/jumbo v10, "location_providers_allowed"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    const/4 v13, -0x2

    .line 221
    invoke-virtual {v9, v10, v12, v11, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->locationSummaryUpdate()V

    .line 225
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->privateModeSummaryUpdate()V

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 230
    const-string/jumbo v10, "personal_mode_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    .line 229
    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateBox:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "db_private_box_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 235
    .local v6, "isEnableInLockscreen":I
    const/4 v9, 0x1

    if-ne v6, v9, :cond_a

    .line 236
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateBox:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0b1ad8

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 242
    .end local v6    # "isEnableInLockscreen":I
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->appLockSummaryUpdate()V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 245
    const-string/jumbo v10, "app_lock_enabled"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAppLockObserver:Landroid/database/ContentObserver;

    const/4 v12, 0x1

    .line 244
    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 250
    const-string/jumbo v10, "send_emergency_message"

    const/4 v11, 0x0

    .line 249
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v2, 0x1

    .line 252
    .local v2, "bStatus":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 253
    const-string/jumbo v10, "block_emergency_message"

    const/4 v11, 0x0

    .line 252
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_c

    const/4 v1, 0x1

    .line 255
    .local v1, "bIsEnabled":Z
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 257
    if-nez v1, :cond_d

    .line 258
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0b0b19

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 264
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 265
    const-string/jumbo v10, "block_emergency_message"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 266
    iget-object v11, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    .line 265
    const/4 v12, 0x1

    .line 264
    invoke-virtual {v9, v10, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    .end local v1    # "bIsEnabled":Z
    .end local v2    # "bStatus":Z
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "callingPackage":Ljava/lang/String;
    const-string/jumbo v9, "com.android.packageinstaller"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 271
    const-string/jumbo v9, "com.samsung.android.packageinstaller"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 270
    if-nez v9, :cond_4

    .line 272
    const-string/jumbo v9, "com.google.android.packageinstaller"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 270
    if-eqz v9, :cond_f

    .line 273
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFromPackageInstaller:Z

    .line 277
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 278
    .local v8, "um":Landroid/os/UserManager;
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_8

    .line 280
    if-eqz v8, :cond_6

    .line 281
    iget-object v10, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 282
    const-string/jumbo v9, "no_install_unknown_sources"

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 283
    const-string/jumbo v9, "no_install_apps"

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    .line 282
    if-eqz v9, :cond_6

    .line 284
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 289
    :cond_6
    const-string/jumbo v9, "device_policy"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    iput-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 290
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v3, 0x0

    .line 292
    .local v3, "blockUnsignedAppInstall":Z
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v11, "isNonMarketAppAllowed"

    invoke-static {v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 294
    .local v7, "isNonMarketAppAllowed":I
    if-nez v3, :cond_7

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 296
    .local v0, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowThirdPartyAppList(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 297
    const-string/jumbo v9, ""

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 301
    .end local v0    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    if-eqz v3, :cond_12

    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 302
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 303
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v10, 0x10406b9

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 304
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 305
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->setNonMarketAppsAllowed(Z)V

    .line 322
    .end local v3    # "blockUnsignedAppInstall":Z
    .end local v7    # "isNonMarketAppAllowed":I
    :cond_8
    :goto_7
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .local v5, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 324
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_9

    .line 325
    iget-object v10, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 326
    const-string/jumbo v11, "samsung_errorlog_agree"

    const/4 v12, 0x0

    .line 325
    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 216
    :cond_9
    return-void

    .line 238
    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "um":Landroid/os/UserManager;
    .restart local v6    # "isEnableInLockscreen":I
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mPrivateBox:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0b1ad9

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 249
    .end local v6    # "isEnableInLockscreen":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "bStatus":Z
    goto/16 :goto_1

    .line 252
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "bIsEnabled":Z
    goto/16 :goto_2

    .line 260
    :cond_d
    iget-object v10, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_e

    const v9, 0x7f0b1ad8

    :goto_9
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_3

    .line 261
    :cond_e
    const v9, 0x7f0b1ad9

    goto :goto_9

    .line 275
    .end local v1    # "bIsEnabled":Z
    .end local v2    # "bStatus":Z
    .restart local v4    # "callingPackage":Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mFromPackageInstaller:Z

    goto/16 :goto_4

    .line 281
    .restart local v8    # "um":Landroid/os/UserManager;
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 290
    :cond_11
    const/4 v3, 0x1

    .restart local v3    # "blockUnsignedAppInstall":Z
    goto/16 :goto_6

    .line 306
    .restart local v7    # "isNonMarketAppAllowed":I
    :cond_12
    if-nez v3, :cond_8

    .line 307
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 308
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b089c

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 314
    :goto_a
    const/4 v9, -0x1

    if-eq v7, v9, :cond_8

    .line 315
    iget-object v10, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    if-ne v7, v9, :cond_14

    const/4 v9, 0x1

    :goto_b
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 316
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->isNonMarketAppsAllowed()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 311
    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b039b

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    goto :goto_a

    .line 315
    :cond_14
    const/4 v9, 0x0

    goto :goto_b

    .line 325
    .end local v3    # "blockUnsignedAppInstall":Z
    .end local v7    # "isNonMarketAppAllowed":I
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    :cond_15
    const/4 v9, 0x0

    goto :goto_8
.end method

.method public showReportDiagnosticinfoDialog()V
    .locals 13

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "c":Landroid/content/Context;
    const/4 v7, 0x0

    .line 868
    .local v7, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, ""

    .line 869
    .local v1, "collectionString":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    .line 871
    .local v8, "sales_code":Ljava/lang/String;
    const-string/jumbo v10, "VZW"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 873
    .local v6, "isVZW":Z
    :goto_0
    const-string/jumbo v9, "com.sec.android.app.setupwizard"

    .line 874
    .local v9, "vzwPackageName":Ljava/lang/String;
    const-string/jumbo v4, "com.sec.android.app.SecSetupWizard"

    .line 877
    .local v4, "globalPackageName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 878
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 880
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 881
    const/4 v11, 0x2

    .line 880
    invoke-virtual {v10, v9, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 882
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 883
    const-string/jumbo v11, "diagnostic_terms_vzw"

    const-string/jumbo v12, "string"

    invoke-virtual {v7, v11, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 882
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 904
    .end local v0    # "c":Landroid/content/Context;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 905
    const-string/jumbo v10, "SafetyCareSettings"

    const-string/jumbo v11, "error log collection disclaimer is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->setDiagnostic(Z)V

    .line 865
    :goto_2
    return-void

    .line 871
    .end local v4    # "globalPackageName":Ljava/lang/String;
    .end local v6    # "isVZW":Z
    .end local v9    # "vzwPackageName":Ljava/lang/String;
    .local v0, "c":Landroid/content/Context;
    .local v7, "resources":Landroid/content/res/Resources;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isVZW":Z
    goto :goto_0

    .line 885
    .restart local v4    # "globalPackageName":Ljava/lang/String;
    .restart local v9    # "vzwPackageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 887
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 888
    const/4 v11, 0x2

    .line 887
    invoke-virtual {v10, v4, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 890
    .local v0, "c":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    .line 891
    const-string/jumbo v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 890
    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 892
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 893
    const-string/jumbo v11, "error_log_collection_k_serviceinfo"

    const-string/jumbo v12, "string"

    invoke-virtual {v7, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 892
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 900
    .end local v0    # "c":Landroid/content/Context;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 901
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v10, "SafetyCareSettings"

    const-string/jumbo v11, "error getting Resource"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 898
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 899
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "SafetyCareSettings"

    const-string/jumbo v11, "error getting activity of create package context"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 909
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "com.samsung.settings.ReportDiagnosticinfo"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 910
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
