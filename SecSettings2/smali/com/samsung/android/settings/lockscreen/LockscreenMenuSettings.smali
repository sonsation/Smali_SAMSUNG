.class public Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$SummaryProvider;,
        Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static ALWAYS_ON_DISPLAY:I

.field private static ALWAYS_ON_DISPLAY_SWITCH:I

.field private static FACE_LOCK:I

.field private static FACE_LOCK_SWITCH:I

.field private static IRIS_SETTINGS:I

.field private static LOCKSCREEN_AND_SECURITY:I

.field private static final MY_USER_ID:I

.field private static NOTIFICATIONS_MASTER:I

.field private static SAMSUNG_PASS:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SECURE_FOLDER:I

.field private static SETTINGS_SECURITY_UNKNOWNSOURCE:I

.field private static SMART_LOCK:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static WORK_PROFILE_FINGERPRINTS:I

.field private static WORK_PROFILE_NOTIFICATIONS:I

.field public static mContext:Landroid/content/Context;

.field private static mSmartLockSummary:Ljava/lang/String;

.field private static sPowerManager:Landroid/os/PowerManager;


# instance fields
.field private isKioskContainer:Z

.field private mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAppOpsSettings:Landroid/preference/Preference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFindMyMobile:Landroid/preference/Preference;

.field private mFingerSanner:Landroid/preference/Preference;

.field private mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromCoverSetting:Z

.field private mFromPackageInstaller:Z

.field private mIrisSettings:Landroid/preference/Preference;

.field private mIsAdmin:Z

.field private mLockAppShortcut:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Landroid/preference/Preference;

.field private mLockscreenNotification:Landroid/preference/PreferenceScreen;

.field private mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

.field private mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

.field private mLockscreenSelectedValueProfile:I

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mPrivateMode:Landroid/preference/PreferenceScreen;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mProfileChallengeUserId:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSamsungPass:Landroid/preference/Preference;

.field private mSdcardEncryption:Landroid/preference/PreferenceScreen;

.field private mSecure:Z

.field private mSecureFolder:Landroid/preference/PreferenceScreen;

.field private mSecureProfile:Z

.field private mSecuredLockSettings:Landroid/preference/PreferenceScreen;

.field private mShowInfomation:Landroid/preference/PreferenceScreen;

.field private mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Landroid/preference/SwitchPreference;

.field private mVisiblePatternProfile:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private otherSecurityPreferece:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_FINGERPRINTS:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSdcardEncryption:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_NOTIFICATIONS:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get21()Landroid/os/PowerManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_FINGERPRINTS:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->WORK_PROFILE_NOTIFICATIONS:I

    return p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->privateModeSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->resetAccessabilityFeature()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateUnificationPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 228
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    .line 2322
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$3;-><init>()V

    .line 2321
    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 2331
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 223
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    .line 226
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    .line 284
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    .line 301
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 308
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    .line 2719
    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$4;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 137
    return-void
.end method

.method private InitValue(I)V
    .locals 21
    .param p1, "menuType"    # I

    .prologue
    .line 986
    const-string/jumbo v17, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->checkUCMKeyguardStatus()Ljava/lang/String;

    move-result-object v16

    .line 989
    .local v16, "ucmCSVendor":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 990
    if-eqz v16, :cond_3

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string/jumbo v17, "none"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_0
    if-nez v17, :cond_5

    .line 991
    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 992
    .local v11, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    .line 993
    add-int/lit8 v17, v11, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 995
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 996
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->isEnforcedCredentialStorageExist()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1007
    .end local v11    # "index":I
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1008
    .local v5, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const-string/jumbo v17, "sec_device_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 1010
    .local v7, "device_security_category":Landroid/preference/PreferenceCategory;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    .line 1011
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 1013
    .local v4, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v17, Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "trust_agent"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1021
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1022
    .local v12, "intent":Landroid/content/Intent;
    iget-object v0, v4, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1023
    const-string/jumbo v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/samsung/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 1026
    if-eqz v7, :cond_2

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1010
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 990
    .end local v4    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v5    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v7    # "device_security_category":Landroid/preference/PreferenceCategory;
    .end local v10    # "i":I
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 999
    .restart local v11    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1001
    .end local v11    # "index":I
    :cond_5
    if-eqz p1, :cond_1

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1032
    .restart local v5    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .restart local v7    # "device_security_category":Landroid/preference/PreferenceCategory;
    .restart local v10    # "i":I
    :cond_6
    const-string/jumbo v17, "secured_lock_settigns"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-nez v17, :cond_7

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b08c7

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 1039
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1040
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1042
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartlock:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getOrder()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1045
    :cond_a
    const-string/jumbo v17, "show_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    .line 1046
    const-string/jumbo v17, "lock_screen_menu_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    .line 1047
    const-string/jumbo v17, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1053
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1054
    const-string/jumbo v18, "lock_screen_show_notifications"

    const/16 v19, 0x0

    .line 1053
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_1d

    const/4 v8, 0x1

    .line 1055
    .local v8, "enabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v8, :cond_1e

    const v17, 0x7f0b1952

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1059
    const-string/jumbo v17, "lock_app_shortcut"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    .line 1061
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-eqz v17, :cond_1f

    const/4 v14, 0x1

    .line 1062
    .local v14, "isSecondaryUser":Z
    :goto_5
    const-string/jumbo v17, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.app.aodservice"

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    if-eqz v14, :cond_20

    .line 1071
    :cond_c
    const-string/jumbo v17, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removePreference(Ljava/lang/String;)V

    .line 1074
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "aod_mode"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1077
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v6

    .line 1080
    .local v6, "covertype":I
    const/16 v17, 0x8

    move/from16 v0, v17

    if-eq v6, v0, :cond_e

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const v18, 0x7f0b08c2

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1092
    .end local v6    # "covertype":I
    :cond_e
    :goto_7
    const-string/jumbo v17, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1097
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0b0880

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    .line 1101
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 1102
    const-string/jumbo v18, "no_install_unknown_sources"

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    .line 1101
    invoke-static/range {v17 .. v19}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_10

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 1104
    const-string/jumbo v18, "no_install_apps"

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    .line 1103
    invoke-static/range {v17 .. v19}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    .line 1101
    if-eqz v17, :cond_11

    .line 1105
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1107
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "no_install_unknown_sources"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v17

    if-nez v17, :cond_12

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "no_install_apps"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1113
    :cond_12
    const-string/jumbo v17, "find_my_mobile"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    .line 1115
    const/4 v15, 0x0

    .line 1116
    .local v15, "isSupportLMM":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-nez v17, :cond_13

    .line 1117
    const/4 v15, 0x1

    .line 1120
    :cond_13
    const/4 v9, 0x0

    .line 1121
    .local v9, "hasFMMDMClient":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v9

    .line 1124
    .local v9, "hasFMMDMClient":Z
    if-eqz v15, :cond_14

    if-eqz v9, :cond_23

    .line 1129
    :cond_14
    :goto_8
    const-string/jumbo v17, "finger_scanner"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    .line 1130
    const-string/jumbo v17, "iris_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    .line 1131
    const-string/jumbo v17, "silent_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 1132
    const-string/jumbo v17, "samsung_pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    .line 1133
    const-string/jumbo v17, "app_ops_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v13

    .line 1137
    .local v13, "isDesktopMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1139
    if-eqz v13, :cond_15

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1144
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1147
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 1148
    if-eqz v13, :cond_17

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1153
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    .line 1154
    if-eqz v13, :cond_18

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1159
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v20, 0x100

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_24

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1162
    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-nez v17, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isEnrolledFaceInfo()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 1163
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1167
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 1168
    if-eqz v13, :cond_1b

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1173
    :cond_1b
    const-string/jumbo v17, "key_private_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1177
    :cond_1c
    const-string/jumbo v17, "secure_folder"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    .line 981
    return-void

    .line 1053
    .end local v8    # "enabled":Z
    .end local v9    # "hasFMMDMClient":Z
    .end local v13    # "isDesktopMode":Z
    .end local v14    # "isSecondaryUser":Z
    .end local v15    # "isSupportLMM":Z
    :cond_1d
    const/4 v8, 0x0

    .restart local v8    # "enabled":Z
    goto/16 :goto_3

    .line 1056
    :cond_1e
    const v17, 0x7f0b08f3

    goto/16 :goto_4

    .line 1061
    :cond_1f
    const/4 v14, 0x0

    .restart local v14    # "isSecondaryUser":Z
    goto/16 :goto_5

    .line 1065
    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_6

    .line 1068
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_6

    .line 1083
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const v18, 0x7f0b08c1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_7

    .line 1125
    .restart local v9    # "hasFMMDMClient":Z
    .restart local v15    # "isSupportLMM":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f0b077f

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_8

    .line 1161
    .restart local v13    # "isDesktopMode":Z
    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_9
.end method

.method private RemoveMenu()V
    .locals 21

    .prologue
    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v11

    .line 1299
    .local v11, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v6

    .line 1301
    .local v6, "isLDUmodel":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v10

    .line 1302
    .local v10, "isSecured":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    .line 1304
    .local v7, "isLockScreenDisabled":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 1305
    const-string/jumbo v18, "sec_device_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 1306
    .local v4, "device_security_category":Landroid/preference/PreferenceCategory;
    const-string/jumbo v18, "sec_lock_and_always_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 1307
    .local v12, "lock_always_category":Landroid/preference/PreferenceCategory;
    if-eqz v4, :cond_0

    if-nez v12, :cond_1

    :cond_0
    return-void

    .line 1310
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    if-nez v11, :cond_2

    if-eqz v6, :cond_3

    .line 1311
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1314
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_5

    if-nez v11, :cond_5

    if-eqz v6, :cond_6

    .line 1315
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1317
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_8

    if-nez v11, :cond_8

    if-eqz v6, :cond_9

    .line 1318
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1320
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_b

    if-nez v11, :cond_b

    if-eqz v6, :cond_c

    .line 1321
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1324
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    if-eqz v10, :cond_15

    .line 1326
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1330
    :cond_e
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    if-eqz v7, :cond_f

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1334
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1344
    :cond_10
    :goto_1
    if-eqz v7, :cond_12

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1348
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1353
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    .line 1354
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1355
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1357
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1416
    .end local v4    # "device_security_category":Landroid/preference/PreferenceCategory;
    .end local v12    # "lock_always_category":Landroid/preference/PreferenceCategory;
    :cond_14
    :goto_3
    const-string/jumbo v18, "sec_security_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 1417
    .local v16, "security_category":Landroid/preference/PreferenceCategory;
    if-nez v16, :cond_28

    return-void

    .line 1325
    .end local v16    # "security_category":Landroid/preference/PreferenceCategory;
    .restart local v4    # "device_security_category":Landroid/preference/PreferenceCategory;
    .restart local v12    # "lock_always_category":Landroid/preference/PreferenceCategory;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 1327
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1339
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 1356
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 1358
    :cond_19
    const/16 v18, 0x1

    goto :goto_2

    .line 1363
    .end local v4    # "device_security_category":Landroid/preference/PreferenceCategory;
    .end local v12    # "lock_always_category":Landroid/preference/PreferenceCategory;
    :cond_1a
    const-string/jumbo v18, "sec_lockscreen_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 1364
    .local v13, "lockscreen_category":Landroid/preference/PreferenceCategory;
    if-nez v13, :cond_1b

    return-void

    .line 1366
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d

    if-nez v11, :cond_1c

    if-eqz v6, :cond_1d

    .line 1367
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1370
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1e

    if-eqz v10, :cond_24

    .line 1372
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v18

    if-eqz v18, :cond_25

    .line 1376
    :cond_1f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_20

    if-eqz v7, :cond_20

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1380
    :cond_20
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v18

    if-eqz v18, :cond_26

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1390
    :cond_21
    :goto_5
    if-eqz v7, :cond_23

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_22

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1394
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_23

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1399
    :cond_23
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 1400
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 1405
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1406
    if-eqz v13, :cond_14

    .line 1407
    const v18, 0x7f04004e

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    goto/16 :goto_3

    .line 1371
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 1373
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1385
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 1402
    :cond_27
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_6

    .line 1419
    .end local v13    # "lockscreen_category":Landroid/preference/PreferenceCategory;
    .restart local v16    # "security_category":Landroid/preference/PreferenceCategory;
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 1420
    .local v17, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 1421
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_43

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b0880

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    .line 1428
    :goto_7
    if-eqz v17, :cond_2a

    .line 1429
    const-string/jumbo v18, "no_install_unknown_sources"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_29

    .line 1430
    const-string/jumbo v18, "no_install_apps"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    .line 1429
    if-eqz v18, :cond_44

    .line 1431
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1432
    const-string/jumbo v18, "LockscreenMenuSettings"

    const-string/jumbo v19, "mToggleAppInstallation disable at UserManager"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_2a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2b

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1469
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2d

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_2d

    if-nez v11, :cond_2d

    if-nez v6, :cond_2d

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 1470
    :cond_2d
    const-string/jumbo v18, "finger_scanner"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1472
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIrisSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v18

    if-eqz v18, :cond_30

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_30

    if-nez v11, :cond_30

    if-nez v6, :cond_30

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_30

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-eqz v18, :cond_31

    .line 1473
    :cond_30
    const-string/jumbo v18, "iris_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1475
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_32

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v18

    if-eqz v18, :cond_33

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isGuestUser()Z

    move-result v18

    if-nez v18, :cond_33

    if-nez v11, :cond_33

    if-nez v6, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-eqz v18, :cond_34

    .line 1476
    :cond_33
    const-string/jumbo v18, "silent_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1479
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_36

    .line 1480
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_35

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_36

    .line 1481
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSamsungPass:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1485
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_37

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_37

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1489
    :cond_37
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v18

    if-nez v18, :cond_38

    .line 1490
    if-eqz v16, :cond_38

    .line 1491
    const-string/jumbo v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 1499
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    .line 1501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isKioskContainer:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3e

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_39

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockType:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1506
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3a

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1510
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3b

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1514
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3c

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1517
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3d

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    .line 1521
    :cond_3d
    if-eqz v16, :cond_3e

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3e

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1529
    :cond_3e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v18

    if-eqz v18, :cond_3f

    .line 1530
    if-eqz v16, :cond_3f

    .line 1531
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3f

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1538
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_40

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_41

    if-nez v11, :cond_41

    if-nez v6, :cond_41

    .line 1539
    :cond_40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_49

    .line 1541
    :cond_41
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1544
    :cond_42
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1545
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1546
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1547
    invoke-virtual {v5, v15}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_4a

    const/4 v9, 0x1

    .line 1549
    .local v9, "isSecureFolderAction":Z
    :goto_a
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v19, "persona"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1551
    .local v14, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v18

    if-eqz v18, :cond_4b

    if-eqz v9, :cond_4b

    .line 1292
    :goto_b
    return-void

    .line 1425
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "isSecureFolderAction":Z
    .end local v14    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b0399

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    goto/16 :goto_7

    .line 1435
    :cond_44
    const-string/jumbo v18, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;)Z

    move-result v18

    if-eqz v18, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v18

    if-eqz v18, :cond_46

    const/4 v3, 0x0

    .line 1438
    .local v3, "blockUnsignedAppInstall":Z
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v20, "isNonMarketAppAllowed"

    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1440
    .local v8, "isNonMarketAppAllowed":I
    if-nez v3, :cond_45

    .line 1441
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1442
    .local v2, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->semGetAllowThirdPartyAppList(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1443
    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1447
    .end local v2    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_45
    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_47

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x10406b9

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummaryOff(I)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1451
    const-string/jumbo v18, "LockscreenMenuSettings"

    const-string/jumbo v19, "mToggleAppInstallation disable at DevicePolicyManager"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_8

    .line 1436
    .end local v3    # "blockUnsignedAppInstall":Z
    .end local v8    # "isNonMarketAppAllowed":I
    :cond_46
    const/4 v3, 0x1

    .restart local v3    # "blockUnsignedAppInstall":Z
    goto :goto_c

    .line 1453
    .restart local v8    # "isNonMarketAppAllowed":I
    :cond_47
    if-nez v3, :cond_2a

    .line 1454
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_2a

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v19, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_48

    const/16 v18, 0x1

    :goto_d
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 1457
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_2a

    .line 1458
    const-string/jumbo v18, "LockscreenMenuSettings"

    const-string/jumbo v19, "mToggleAppInstallation disable at getEnterprisePolicyEnabled"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1455
    :cond_48
    const/16 v18, 0x0

    goto :goto_d

    .line 1540
    .end local v3    # "blockUnsignedAppInstall":Z
    .end local v8    # "isNonMarketAppAllowed":I
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v18

    .line 1539
    if-nez v18, :cond_41

    .line 1540
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v18

    .line 1539
    if-nez v18, :cond_41

    .line 1540
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v18

    .line 1538
    if-eqz v18, :cond_42

    goto/16 :goto_9

    .line 1547
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_4a
    const/4 v9, 0x0

    .restart local v9    # "isSecureFolderAction":Z
    goto/16 :goto_a

    .line 1552
    .restart local v14    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureFolder:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b
.end method

.method private checkUCMKeyguardStatus()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 952
    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    .line 953
    .local v2, "ucmBinder":Lcom/samsung/android/knox/ucm/core/IUcmService;
    const/4 v1, 0x0

    .line 954
    .local v1, "keyguardCSName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 955
    return-object v5

    .line 958
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 959
    .local v3, "userId":I
    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 964
    .end local v1    # "keyguardCSName":Ljava/lang/String;
    .end local v3    # "userId":I
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    .line 965
    return-object v1

    .line 960
    .restart local v1    # "keyguardCSName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 964
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "keyguardCSName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 967
    :cond_2
    return-object v5
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 21

    .prologue
    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 540
    .local v12, "root":Landroid/preference/PreferenceScreen;
    if-eqz v12, :cond_0

    .line 541
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 545
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v6, 0x0

    .line 546
    .local v6, "isUnified":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecure:Z

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v17, v0

    const/16 v18, -0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-nez v17, :cond_9

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecure:Z

    move/from16 v17, v0

    .line 547
    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    .line 551
    const v17, 0x7f0800f5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    .line 555
    invoke-static/range {v17 .. v20}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v11

    .line 557
    .local v11, "resid":I
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 558
    const v11, 0x7f0800dd

    .line 560
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 563
    const-string/jumbo v17, "unlock_set_or_change"

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static/range {v17 .. v18}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v17, v0

    const/16 v18, -0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v17

    .line 566
    if-eqz v17, :cond_2

    .line 568
    const v17, 0x7f08010d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 569
    const v17, 0x7f080113

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v19, v0

    .line 572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v20, v0

    .line 570
    invoke-static/range {v17 .. v20}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I

    move-result v10

    .line 573
    .local v10, "profileResid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;I)V

    .line 576
    const v17, 0x7f0800d9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->initLockscreenNotificationsForProfile()V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v17

    if-nez v17, :cond_c

    .line 581
    const-string/jumbo v17, "unlock_set_or_change_profile"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 582
    .local v7, "lockPreference":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 583
    const v18, 0x7f0b146f

    .line 582
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 584
    .local v15, "summary":Ljava/lang/String;
    invoke-virtual {v7, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 588
    const-string/jumbo v17, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 597
    .end local v7    # "lockPreference":Landroid/preference/Preference;
    .end local v10    # "profileResid":I
    .end local v15    # "summary":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string/jumbo v17, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 598
    .local v16, "unlockSetOrChange":Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/android/settings/SecGearPreference;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 599
    check-cast v16, Lcom/samsung/android/settings/SecGearPreference;

    .end local v16    # "unlockSetOrChange":Landroid/preference/Preference;
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/SecGearPreference;->setVisibleWigetLayout(I)V

    .line 604
    :cond_3
    const/4 v9, 0x0

    .line 606
    .local v9, "menuType":I
    const-string/jumbo v17, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string/jumbo v19, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 607
    .local v5, "isDeviceLockTime":Z
    if-eqz v5, :cond_4

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "is_secured_lock"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v17

    if-nez v17, :cond_f

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 613
    const v9, 0x7f0b1116

    .line 647
    :goto_4
    const v17, 0x7f080096

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 648
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->InitValue(I)V

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->RemoveMenu()V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIsAdmin:Z

    .line 656
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mIsAdmin:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 708
    :cond_5
    :goto_5
    const-string/jumbo v17, "visiblepattern_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    .line 707
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    .line 709
    const-string/jumbo v17, "unification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mVisiblePatternProfile:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    .line 714
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    .line 713
    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 717
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateUnificationPreference()V

    .line 720
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 732
    :cond_7
    :goto_6
    return-object v12

    .line 545
    .end local v5    # "isDeviceLockTime":Z
    .end local v6    # "isUnified":Z
    .end local v9    # "menuType":I
    .end local v11    # "resid":I
    :cond_8
    const/4 v6, 0x1

    .restart local v6    # "isUnified":Z
    goto/16 :goto_0

    .line 548
    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 547
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 592
    .restart local v10    # "profileResid":I
    .restart local v11    # "resid":I
    :cond_c
    const-string/jumbo v17, "unlock_set_or_change_profile"

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v18, v0

    .line 592
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 608
    .end local v10    # "profileResid":I
    .restart local v5    # "isDeviceLockTime":Z
    .restart local v9    # "menuType":I
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 615
    :cond_e
    const v9, 0x7f0b1117

    goto/16 :goto_4

    .line 618
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_4

    .line 622
    :sswitch_0
    const v9, 0x7f0b027a

    .line 623
    goto/16 :goto_4

    .line 627
    :sswitch_1
    const v9, 0x7f0b088f

    .line 628
    goto/16 :goto_4

    .line 630
    :sswitch_2
    const v9, 0x7f0b110a

    .line 631
    goto/16 :goto_4

    .line 634
    :sswitch_3
    const v9, 0x7f0b110c

    .line 635
    goto/16 :goto_4

    .line 639
    :sswitch_4
    const v9, 0x7f0b110e

    .line 640
    goto/16 :goto_4

    .line 642
    :sswitch_5
    const v9, 0x7f0b0881

    .line 643
    goto/16 :goto_4

    .line 656
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v17

    if-nez v17, :cond_5

    .line 657
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 659
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v17

    if-nez v17, :cond_11

    .line 660
    const v17, 0x7f0800fc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 668
    :cond_11
    :goto_7
    new-instance v4, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 670
    .local v4, "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    new-instance v8, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 671
    .local v8, "mDem":Lcom/samsung/android/security/SemSdCardEncryption;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 672
    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v14

    .line 673
    .local v14, "status":I
    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v13

    .line 674
    .local v13, "state":Ljava/lang/String;
    if-nez v13, :cond_13

    .line 675
    const v17, 0x7f080102

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 694
    :goto_8
    const-string/jumbo v17, "sdEncpref"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSdcardEncryption:Landroid/preference/PreferenceScreen;

    goto/16 :goto_5

    .line 664
    .end local v4    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    .end local v8    # "mDem":Lcom/samsung/android/security/SemSdCardEncryption;
    .end local v13    # "state":Ljava/lang/String;
    .end local v14    # "status":I
    :cond_12
    const v17, 0x7f080112

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_7

    .line 676
    .restart local v4    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v8    # "mDem":Lcom/samsung/android/security/SemSdCardEncryption;
    .restart local v13    # "state":Ljava/lang/String;
    .restart local v14    # "status":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "device_policy"

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 678
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v14, :cond_14

    invoke-virtual {v8}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionAppliedSDCard()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 685
    if-eqz v3, :cond_16

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 686
    const v17, 0x7f080110

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_8

    .line 679
    :cond_14
    if-eqz v3, :cond_15

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 680
    const v17, 0x7f08010f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_8

    .line 682
    :cond_15
    const v17, 0x7f08010e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto :goto_8

    .line 688
    :cond_16
    const v17, 0x7f08010e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_8

    .line 692
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_17
    const v17, 0x7f08010f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_8

    .line 720
    .end local v4    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    .end local v8    # "mDem":Lcom/samsung/android/security/SemSdCardEncryption;
    .end local v13    # "state":Ljava/lang/String;
    .end local v14    # "status":I
    :cond_18
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v17

    if-nez v17, :cond_7

    .line 723
    new-instance v17, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "other_security_settings"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f0b089d

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f0b089e

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const-string/jumbo v18, "com.samsung.android.settings.OtherSecuritySettings"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->otherSecurityPreferece:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 618
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2141
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2140
    invoke-static {v1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 2142
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    .line 2143
    const/high16 v2, 0x80000

    .line 2142
    if-ne v1, v2, :cond_0

    .line 2139
    :cond_0
    return-void
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x21c

    .line 2000
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2001
    const-string/jumbo v4, "aod_mode_start_time"

    .line 2000
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2002
    .local v2, "mStartTime":I
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2003
    const-string/jumbo v4, "aod_mode_end_time"

    .line 2002
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2005
    .local v1, "mEndTime":I
    const v3, 0x7f0b08a9

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, "mDurationTime":Ljava/lang/String;
    if-eq v2, v1, :cond_0

    .line 2007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2009
    :cond_0
    return-object v0
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1186
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v12, 0x80

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1189
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {p1, v11}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v2

    .line 1192
    .local v2, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x10

    .line 1191
    invoke-static {p0, v12, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1195
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-object v9

    .line 1196
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 1197
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1198
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_3

    .line 1196
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1199
    :cond_3
    invoke-static {v6, v5}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1200
    invoke-static {v5, v6}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v10

    .line 1201
    .local v10, "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v11, :cond_2

    .line 1203
    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    .line 1202
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1204
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 1201
    if-nez v11, :cond_2

    .line 1205
    if-eqz v0, :cond_4

    .line 1206
    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    .line 1205
    invoke-virtual {p2, v12, v11}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_4

    .line 1207
    iput-object v0, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1211
    :cond_4
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v11, :cond_5

    .line 1212
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v11, Landroid/content/pm/ServiceInfo;->labelRes:I

    .line 1213
    .local v4, "nLabelResId":I
    const/4 v8, 0x0

    .line 1215
    .local v8, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1220
    .end local v8    # "resources":Landroid/content/res/Resources;
    :goto_2
    invoke-static {v8, v4}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1221
    if-eqz v8, :cond_5

    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 1222
    sget-object v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    .line 1226
    .end local v4    # "nLabelResId":I
    :cond_5
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1216
    .restart local v4    # "nLabelResId":I
    .restart local v8    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 1217
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "LockscreenMenuSettings"

    const-string/jumbo v12, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private getBiometricsSummary(ZZ)Ljava/lang/String;
    .locals 8
    .param p1, "isFinger"    # Z
    .param p2, "isIrises"    # Z

    .prologue
    .line 893
    const-string/jumbo v3, ", "

    .line 894
    .local v3, "comma":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ar"

    .line 897
    .local v1, "ISO639_ARABIC":Ljava/lang/String;
    const-string/jumbo v2, "ja"

    .line 898
    .local v2, "JAPANESE":Ljava/lang/String;
    const-string/jumbo v0, "zh"

    .line 899
    .local v0, "CHINESE":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 900
    .local v4, "configurationLanguage":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 901
    const-string/jumbo v3, "\u060c "

    .line 908
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 937
    :goto_1
    if-eqz p1, :cond_1

    .line 938
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const v6, 0x7f0b0680

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    :cond_1
    if-eqz p2, :cond_2

    .line 942
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const v6, 0x7f0b07a3

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 902
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 903
    const-string/jumbo v3, "\u3001"

    goto :goto_0

    .line 904
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 905
    const-string/jumbo v3, "\uff0c"

    goto :goto_0

    .line 911
    :sswitch_0
    const v6, 0x7f0b027a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 916
    :sswitch_1
    const v6, 0x7f0b088f

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 919
    :sswitch_2
    const v6, 0x7f0b110a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 923
    :sswitch_3
    const v6, 0x7f0b110c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 929
    :sswitch_4
    const v6, 0x7f0b110e

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 932
    :sswitch_5
    const v6, 0x7f0b0881

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 908
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 6
    .param p1, "menuType"    # I

    .prologue
    .line 862
    const/4 v2, 0x0

    .line 864
    .local v2, "summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 865
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    const v3, 0x7f0b1116

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 888
    .local v2, "summary":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 868
    .local v2, "summary":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0b1117

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0

    .line 871
    .local v2, "summary":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 872
    .local v0, "isFingerLockEnabled":Z
    const/4 v1, 0x0

    .line 874
    .local v1, "isIrisesLockEnabled":Z
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 876
    const/4 v0, 0x1

    .line 879
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-eqz v3, :cond_3

    .line 881
    const/4 v1, 0x1

    .line 884
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getBiometricsSummary(ZZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 836
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 835
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 830
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 831
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 830
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings/ManagedLockPasswordProvider;
    .param p3, "userId"    # I

    .prologue
    .line 353
    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    .line 354
    .local v0, "isMyUser":Z
    :goto_0
    const/4 v1, 0x0

    .line 355
    .local v1, "resid":I
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 356
    if-nez v0, :cond_1

    .line 357
    const v1, 0x7f080100

    .line 391
    :goto_1
    return v1

    .line 353
    .end local v0    # "isMyUser":Z
    .end local v1    # "resid":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isMyUser":Z
    goto :goto_0

    .line 358
    .restart local v1    # "resid":I
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    const v1, 0x7f0800e2

    goto :goto_1

    .line 361
    :cond_2
    const v1, 0x7f0800e0

    goto :goto_1

    .line 364
    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 366
    :sswitch_0
    const v1, 0x7f0800e2

    .line 367
    goto :goto_1

    .line 371
    :sswitch_1
    if-eqz v0, :cond_4

    const v1, 0x7f0800e5

    goto :goto_1

    .line 372
    :cond_4
    const v1, 0x7f080107

    goto :goto_1

    .line 376
    :sswitch_2
    if-eqz v0, :cond_5

    const v1, 0x7f0800e7

    goto :goto_1

    .line 377
    :cond_5
    const v1, 0x7f08010b

    goto :goto_1

    .line 383
    :sswitch_3
    if-eqz v0, :cond_6

    const v1, 0x7f0800e4

    goto :goto_1

    .line 384
    :cond_6
    const v1, 0x7f080104

    goto :goto_1

    .line 387
    :sswitch_4
    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockScreen(Z)I

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 364
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_3
        0x70000 -> :sswitch_3
        0x80000 -> :sswitch_4
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private initLockscreenNotificationsForProfile()V
    .locals 11

    .prologue
    const v10, 0x7f0b18df

    const v9, 0x7f0b18de

    const v8, 0x7f0b18dd

    .line 737
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 738
    const-string/jumbo v7, "lock_screen_notifications_profile"

    .line 737
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    .line 739
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v6, :cond_0

    .line 740
    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 744
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->clearRestrictedItems()V

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    const/16 v6, 0xc

    .line 757
    invoke-direct {p0, v3, v4, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 760
    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    if-eqz v6, :cond_1

    .line 761
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    const/4 v6, 0x4

    .line 767
    invoke-direct {p0, v1, v2, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 771
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    .line 772
    new-instance v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$-void_initLockscreenNotificationsForProfile__LambdaImpl0;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    .line 771
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 777
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 778
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 779
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateLockscreenNotificationsForProfile()V

    .line 780
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 781
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    new-instance v7, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$5;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 736
    :goto_0
    return-void

    .line 807
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "psm_always_on_display_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1265
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, "splitArray":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1267
    .local v0, "settingValue":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 1269
    .end local v0    # "settingValue":Ljava/lang/String;
    .end local v1    # "splitArray":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private isEnrolledFaceInfo()Z
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 455
    const-string/jumbo v2, "install_non_market_apps"

    .line 454
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "labelResID"    # I

    .prologue
    const/4 v8, 0x0

    .line 1236
    const/4 v5, 0x0

    .line 1237
    .local v5, "sLabel":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1238
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1239
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1240
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1241
    .local v1, "config":Landroid/content/res/Configuration;
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1242
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1244
    .local v2, "defaultResources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1250
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "defaultResources":Landroid/content/res/Resources;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "sLabel":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 1245
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "defaultResources":Landroid/content/res/Resources;
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "sLabel":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1246
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v5, ""

    .local v5, "sLabel":Ljava/lang/String;
    goto :goto_0

    .line 1252
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "defaultResources":Landroid/content/res/Resources;
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "sLabel":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "Smart Lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1253
    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "isSmartLockSupported : true"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 1256
    :cond_2
    const-string/jumbo v6, "LockscreenMenuSettings"

    const-string/jumbo v7, "isSmartLockSupported : false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2207
    const v3, 0x7f0b1101

    .line 2206
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2209
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2211
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    .line 2210
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2212
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmProfileLockForUnification()V

    .line 2205
    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    .prologue
    .line 2217
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2218
    const v3, 0x7f0b1102

    .line 2217
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2220
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2222
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    .line 2221
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2223
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyLocks()V

    .line 2224
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 2216
    :cond_0
    return-void
.end method

.method private mUseCalendar(II)Ljava/lang/String;
    .locals 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 2013
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2014
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 2015
    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 2016
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 2018
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2020
    .local v1, "mTime":Ljava/lang/String;
    return-object v1

    .line 2015
    .end local v1    # "mTime":Ljava/lang/String;
    :cond_0
    const/16 v2, 0xa

    goto :goto_0
.end method

.method private makeAccessiblityDisablePopup()V
    .locals 13

    .prologue
    .line 1861
    const/4 v1, 0x0

    .line 1862
    .local v1, "enableFeatureCount":I
    const-string/jumbo v2, "\u2011"

    .line 1863
    .local v2, "hyphenMinus":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
    .local v7, "sb_1":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1865
    .local v8, "sb_2":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "accessibility_display_magnification_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x1

    .line 1866
    .local v3, "isMagnificationGuesturesEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "finger_magnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    .line 1867
    .local v5, "isMagnifierWindowEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "FmMagnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v4, 0x1

    .line 1869
    .local v4, "isMagnifierEnabled":Z
    :goto_2
    const-string/jumbo v9, ""

    .line 1870
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 1871
    .local v6, "msg":Ljava/lang/String;
    const v10, 0x7f0b08ae

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1875
    const/4 v1, 0x1

    .line 1876
    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    sget-object v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    :cond_0
    if-eqz v3, :cond_1

    .line 1883
    add-int/lit8 v1, v1, 0x1

    .line 1884
    const v10, 0x7f0b157a

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    const v10, 0x7f0b157a

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    :cond_1
    if-eqz v5, :cond_2

    .line 1891
    add-int/lit8 v1, v1, 0x1

    .line 1892
    const v10, 0x7f0b0233

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    const v10, 0x7f0b0233

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    :cond_2
    if-eqz v4, :cond_3

    .line 1898
    add-int/lit8 v1, v1, 0x1

    .line 1899
    const v10, 0x7f0b08af

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    const v10, 0x7f0b08af

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    :cond_3
    const/4 v10, 0x1

    if-ne v1, v10, :cond_7

    .line 1907
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b08ab

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1908
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0405

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const v11, 0x7f0b08ac

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1916
    :goto_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1919
    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$9;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$9;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const v12, 0x7f0b0438

    .line 1916
    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1925
    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$10;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const/high16 v12, 0x1040000

    .line 1916
    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1932
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v10, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$11;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$11;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1939
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1859
    return-void

    .line 1865
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "isMagnificationGuesturesEnabled":Z
    .end local v4    # "isMagnifierEnabled":Z
    .end local v5    # "isMagnifierWindowEnabled":Z
    .end local v6    # "msg":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isMagnificationGuesturesEnabled":Z
    goto/16 :goto_0

    .line 1866
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "isMagnifierWindowEnabled":Z
    goto/16 :goto_1

    .line 1867
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "isMagnifierEnabled":Z
    goto/16 :goto_2

    .line 1909
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x2

    if-lt v1, v10, :cond_8

    .line 1910
    const v10, 0x7f0b08ad

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1911
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1913
    :cond_8
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;I)V
    .locals 3
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;
    .param p2, "userId"    # I

    .prologue
    .line 2154
    move v1, p2

    .line 2155
    .local v1, "mUserId":I
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2156
    .local v0, "fingerprintPreference":Landroid/preference/Preference;
    const v2, 0x7f0b0681

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 2157
    const-string/jumbo v2, "fingerPref"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2159
    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$13;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$13;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;I)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2181
    if-eqz v0, :cond_0

    .line 2182
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2152
    :cond_0
    return-void
.end method

.method private needShowSmartLockDialog(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1698
    const-string/jumbo v2, "lock_screen_menu_settings"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1699
    .local v1, "sharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "smart_lock_show_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1700
    .local v0, "doNotShow":Z
    if-eqz v0, :cond_0

    .line 1701
    return v3

    .line 1704
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isCHNSimInserted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1705
    const/4 v2, 0x1

    return v2

    .line 1708
    :cond_1
    return v3
.end method

.method private privateModeSummaryUpdate()V
    .locals 4

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 974
    .local v0, "personalModeState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1952

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 970
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1953

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static removeFindMyMobile(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2267
    const/4 v6, 0x0

    .line 2269
    .local v6, "removeFindMyMobile":Z
    const/4 v5, 0x0

    .line 2270
    .local v5, "isSupportLMM":Z
    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    .line 2271
    const/4 v5, 0x1

    .line 2273
    :cond_0
    const/4 v0, 0x0

    .line 2274
    .local v0, "hasFMMDMClient":Z
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    .line 2275
    .local v0, "hasFMMDMClient":Z
    invoke-static {p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v3

    .line 2276
    .local v3, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    .line 2277
    .local v2, "isLDUmodel":Z
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 2278
    .local v1, "isKioskModeEnabled":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v4

    .line 2279
    .local v4, "isSupportCseriesUX":Z
    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSupportLMM : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasFMMDMClient : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasMobileTracker : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "com.sec.android.app.mt"

    invoke-static {p0, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const-string/jumbo v7, "LockscreenMenuSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSmsCapable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    .line 2286
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_3

    .line 2287
    :cond_1
    const/4 v6, 0x1

    .line 2291
    :cond_2
    :goto_0
    return v6

    .line 2288
    :cond_3
    if-nez v5, :cond_2

    if-nez v0, :cond_2

    .line 2289
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private resetAccessabilityFeature()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1943
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 1944
    .local v0, "isMagnificationGuesturesEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    .line 1945
    .local v2, "isMagnifierWindowEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "FmMagnifier"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    .line 1946
    .local v1, "isMagnifierEnabled":Z
    :goto_2
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1947
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 1949
    :cond_0
    if-eqz v0, :cond_1

    .line 1950
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1952
    :cond_1
    if-eqz v2, :cond_2

    .line 1953
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1955
    :cond_2
    if-eqz v1, :cond_3

    .line 1956
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "FmMagnifier"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1942
    :cond_3
    return-void

    .line 1943
    .end local v0    # "isMagnificationGuesturesEnabled":Z
    .end local v1    # "isMagnifierEnabled":Z
    .end local v2    # "isMagnifierWindowEnabled":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isMagnificationGuesturesEnabled":Z
    goto :goto_0

    .line 1944
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isMagnifierWindowEnabled":Z
    goto :goto_1

    .line 1945
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isMagnifierEnabled":Z
    goto :goto_2
.end method

.method private setLinkedDataView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 466
    return-void

    .line 468
    :cond_0
    new-instance v8, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 469
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 470
    .local v3, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 471
    .local v1, "intentData1":Landroid/content/Intent;
    const-string/jumbo v8, "menu"

    const-string/jumbo v9, "backup"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    iput-object v1, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 475
    const v8, 0x7f0b0b06

    iput v8, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 477
    const/4 v4, 0x0

    .line 478
    .local v4, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 479
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.sm.ACTION_SECURITY"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v2, "intentData2":Landroid/content/Intent;
    invoke-virtual {v6, v2, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 481
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 482
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .end local v4    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 483
    .local v4, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    iput-object v2, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 484
    const v8, 0x7f0b087f

    iput v8, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 490
    .end local v4    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_1
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 491
    .local v5, "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 492
    .local v0, "intentData":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iput-object v0, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 494
    const v8, 0x7f0b10bb

    iput v8, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 496
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 499
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 500
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v8, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 502
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 504
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 463
    .end local v0    # "intentData":Landroid/content/Intent;
    .end local v1    # "intentData1":Landroid/content/Intent;
    .end local v2    # "intentData2":Landroid/content/Intent;
    .end local v3    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v5    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-void

    .line 497
    .restart local v0    # "intentData":Landroid/content/Intent;
    .restart local v1    # "intentData1":Landroid/content/Intent;
    .restart local v2    # "intentData2":Landroid/content/Intent;
    .restart local v3    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .restart local v5    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v8, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2025
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2026
    return-void

    .line 2029
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    .line 2030
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 2029
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2023
    return-void

    .line 2030
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 843
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 842
    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 849
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 851
    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    .line 850
    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 852
    .local v2, "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-eqz v3, :cond_0

    .line 854
    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 856
    .local v1, "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->addRestrictedItem(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;)V

    .line 841
    .end local v1    # "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .end local v2    # "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_0
    return-void
.end method

.method private showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1712
    move-object v2, p2

    .line 1713
    .local v2, "localIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040321

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1714
    .local v1, "dialogLayout":Landroid/view/View;
    const v4, 0x7f110710

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1715
    .local v0, "checkboxView":Landroid/widget/CheckBox;
    const v4, 0x7f11018c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1716
    .local v3, "messageView":Landroid/widget/TextView;
    const v4, 0x7f0b0f9d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1717
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1720
    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;

    invoke-direct {v5, p0, v0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    const v6, 0x7f0b0438

    .line 1717
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1732
    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$7;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    const v6, 0x7f0b042f

    .line 1717
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1735
    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$8;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    .line 1717
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1711
    return-void
.end method

.method private startFaceSettings(Z)V
    .locals 5
    .param p1, "fromSwitch"    # Z

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1841
    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "startFaceSettings isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0714

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1843
    return-void

    .line 1846
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1847
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1848
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1849
    const-string/jumbo v2, "from_switch"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1851
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    :goto_0
    return-void

    .line 1852
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startFingerprintScanner()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1664
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1665
    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0714

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1667
    return-void

    .line 1670
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1671
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1674
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    .line 1675
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    :goto_0
    return-void

    .line 1676
    :catch_0
    move-exception v0

    .line 1677
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startIrisSettings()V
    .locals 5

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1683
    const-string/jumbo v2, "LockscreenMenuSettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0714

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1685
    return-void

    .line 1688
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1690
    .local v1, "mIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1691
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :goto_0
    return-void

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private unifyLocks()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2230
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 2231
    .local v1, "profileQuality":I
    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    .line 2232
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2233
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2234
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    .line 2232
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 2240
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    .line 2241
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 2240
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 2243
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 2244
    .local v0, "profilePatternVisibility":Z
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 2245
    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 2246
    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 2228
    return-void

    .line 2236
    .end local v0    # "profilePatternVisibility":Z
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2237
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 2238
    sget v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    .line 2236
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyUncompliantLocks()V
    .locals 6

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    .line 2251
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 2250
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 2252
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 2253
    const v3, 0x7f0b10fb

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 2252
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 2249
    return-void
.end method

.method private ununifyLocks()V
    .locals 6

    .prologue
    .line 2257
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2258
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2259
    const-string/jumbo v0, "isAfw"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2261
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 2262
    const v3, 0x7f0b10fc

    .line 2263
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 2260
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 2256
    return-void
.end method

.method private updateAlwaysOnScreenSummary()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1963
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v5, :cond_2

    .line 1965
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "aod_mode"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 1966
    .local v4, "value":Z
    :goto_0
    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 1967
    .local v0, "bPowerSaving":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "high_contrast"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    .line 1969
    .local v1, "isNegativeColorEnabled":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1970
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getAODclocksummary()Ljava/lang/String;

    move-result-object v2

    .line 1972
    .local v2, "mTimeRange":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 1973
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1977
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1979
    if-eqz v0, :cond_0

    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 1980
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1981
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1982
    if-eqz v0, :cond_7

    .line 1983
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v6, 0x7f0b0408

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 1962
    .end local v0    # "bPowerSaving":Z
    .end local v1    # "isNegativeColorEnabled":Z
    .end local v2    # "mTimeRange":Ljava/lang/String;
    .end local v4    # "value":Z
    :cond_2
    :goto_3
    return-void

    .line 1965
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "value":Z
    goto :goto_0

    .line 1967
    .restart local v0    # "bPowerSaving":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isNegativeColorEnabled":Z
    goto :goto_1

    .line 1975
    .restart local v2    # "mTimeRange":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v6, 0x7f0b08aa

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 1979
    :cond_6
    if-nez v1, :cond_1

    .line 1990
    sget-object v5, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1991
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    .line 1984
    :cond_7
    if-eqz v1, :cond_8

    .line 1985
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v6, 0x7f0b08b0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 1987
    :cond_8
    const v5, 0x7f0b0407

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0b0405

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0b0409

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1988
    .local v3, "summary":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1993
    .end local v3    # "summary":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 4

    .prologue
    .line 812
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    .line 813
    return-void

    .line 815
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    if-nez v2, :cond_1

    .line 816
    return-void

    .line 818
    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 819
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSecureProfile:Z

    if-eqz v2, :cond_2

    .line 820
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 821
    :goto_0
    if-nez v1, :cond_3

    .line 822
    const v2, 0x7f0b18df

    .line 821
    :goto_1
    iput v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    .line 825
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setValue(Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenProfile:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSelectedValueProfile:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setSummary(I)V

    .line 811
    return-void

    .line 819
    :cond_2
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 823
    .end local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0b18dd

    goto :goto_1

    .line 824
    :cond_4
    const v2, 0x7f0b18de

    goto :goto_1
.end method

.method private updateUnificationPreference()V
    .locals 3

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2201
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUnifyProfile:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2202
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    .line 2201
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2198
    :cond_0
    return-void

    .line 2201
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2035
    const v0, 0x7f0b1479

    .line 2036
    .local v0, "messageStringRes":I
    const v1, 0x104000a

    .line 2037
    .local v1, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2038
    const v0, 0x7f0b147a

    .line 2039
    const v1, 0x7f0b0816

    .line 2041
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    .line 2042
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 2044
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2045
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2044
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2046
    const v3, 0x7f0b1475

    .line 2044
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2048
    const v3, 0x1040009

    .line 2044
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 2033
    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 2053
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v6, :cond_0

    .line 2054
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v6}, Landroid/content/DialogInterface;->dismiss()V

    .line 2056
    :cond_0
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2057
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04002c

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2058
    .local v1, "layout":Landroid/view/View;
    const v6, 0x7f11013a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2059
    .local v3, "mDescription":Landroid/widget/TextView;
    const v6, 0x7f11013b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2060
    .local v2, "mCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "one_time_operate"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_2

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2061
    const v4, 0x104000a

    .line 2062
    .local v4, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2063
    const v5, 0x7f0b147a

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2064
    const v4, 0x7f0b0816

    .line 2066
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2067
    const v6, 0x7f0b1475

    .line 2066
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2069
    new-instance v6, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$12;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/widget/CheckBox;)V

    .line 2066
    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2100
    const v6, 0x1040009

    .line 2066
    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 2052
    return-void

    .line 2060
    .end local v4    # "positiveStringRes":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_samsung_android_settings_lockscreen_LockscreenMenuSettings_lambda$1(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    .line 772
    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 773
    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 774
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    .line 772
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->LOCKSCREEN_AND_SECURITY:I

    .line 298
    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->LOCKSCREEN_AND_SECURITY:I

    return v0
.end method

.method protected isGuestUser()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1283
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1285
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    const/4 v1, 0x1

    return v1

    .line 1289
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    return v3
.end method

.method public moveFindMyMobile()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2124
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2125
    const v3, 0x7f0b0777

    const/4 v6, 0x0

    move-object v5, v4

    .line 2124
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2123
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 460
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 459
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 510
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 511
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 512
    if-ne p2, v7, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 514
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0777

    const/4 v6, 0x0

    move-object v5, v4

    .line 513
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 517
    :cond_0
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    .line 518
    if-ne p2, v7, :cond_1

    .line 520
    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 521
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->launchConfirmProfileLockForUnification()V

    .line 522
    return-void

    .line 523
    :cond_1
    const/16 v0, 0x81

    if-ne p1, v0, :cond_2

    .line 524
    if-ne p2, v7, :cond_2

    .line 526
    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 527
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->unifyLocks()V

    .line 528
    return-void

    .line 529
    :cond_2
    const/16 v0, 0x82

    if-ne p1, v0, :cond_3

    .line 530
    if-ne p2, v7, :cond_3

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ununifyLocks()V

    .line 532
    return-void

    .line 534
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 509
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2106
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 2107
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 2108
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    .line 2109
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v1, :cond_0

    .line 2110
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 2105
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 2107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 320
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 323
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-static {v1, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    .line 330
    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 329
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    .line 332
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->sPowerManager:Landroid/os/PowerManager;

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 339
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 340
    const-string/jumbo v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromCoverSetting:Z

    .line 343
    :cond_0
    const v1, 0x7f0b08c6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSmartLockSummary:Ljava/lang/String;

    .line 346
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 316
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2117
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 2118
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2116
    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/samsung/android/settings/SecGearPreference;)V
    .locals 2
    .param p1, "p"    # Lcom/samsung/android/settings/SecGearPreference;

    .prologue
    .line 2131
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/samsung/android/settings/SecGearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2129
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 440
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "LockscreenAndSecurity"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 439
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 22
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1743
    const/16 v16, 0x1

    .line 1744
    .local v16, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 1745
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v13

    .line 1747
    .local v13, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v18, "toggle_install_applications"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v18, p2

    .line 1748
    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mToggleAppInstallation:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 1751
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1752
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->warnAppInstallationFromPackageInstaller()V

    .line 1754
    const/16 v16, 0x0

    .line 1764
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f1001f3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SETTINGS_SECURITY_UNKNOWNSOURCE:I

    .line 1765
    sget-object v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getMetricsCategory()I

    move-result v20

    sget v21, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SETTINGS_SECURITY_UNKNOWNSOURCE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x3e8

    :goto_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 1836
    :cond_0
    :goto_2
    return v16

    .line 1756
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->warnAppInstallation()V

    .line 1759
    const/16 v16, 0x0

    goto :goto_0

    .line 1762
    :cond_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 1765
    .end local p2    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 1766
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v18, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1767
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1768
    .local v9, "isChecked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v19, v0

    if-eqz v9, :cond_5

    const v18, 0x7f0b1952

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 1772
    const-string/jumbo v20, "lock_screen_show_notifications"

    if-eqz v9, :cond_6

    const/16 v18, 0x1

    .line 1771
    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1773
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f1001c9

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->NOTIFICATIONS_MASTER:I

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->NOTIFICATIONS_MASTER:I

    if-eqz v9, :cond_7

    const/16 v18, 0x3e8

    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1769
    :cond_5
    const v18, 0x7f0b08f3

    goto :goto_3

    .line 1772
    :cond_6
    const/16 v18, 0x0

    goto :goto_4

    .line 1774
    :cond_7
    const/16 v18, 0x0

    goto :goto_5

    .line 1775
    .end local v9    # "isChecked":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v18, "always_on_screen"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1776
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 1777
    .local v14, "mValue":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v18

    const-string/jumbo v19, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1779
    .local v6, "conf":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1780
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0552

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1781
    .local v15, "msg":Ljava/lang/String;
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0405

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1782
    .local v4, "app":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 1783
    const/16 v18, 0x0

    return v18

    .line 1786
    .end local v4    # "app":Ljava/lang/String;
    .end local v6    # "conf":Landroid/content/res/Configuration;
    .end local v15    # "msg":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "accessibility_display_magnification_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_b

    const/4 v10, 0x1

    .line 1787
    .local v10, "isMagnificationGuesturesEnabled":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "finger_magnifier"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_c

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "FmMagnifier"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_d

    const/4 v11, 0x1

    .line 1789
    .local v11, "isMagnifierWindowEnabled":Z
    :goto_7
    if-eqz v14, :cond_e

    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_a

    if-nez v10, :cond_a

    if-eqz v11, :cond_e

    .line 1790
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->makeAccessiblityDisablePopup()V

    .line 1794
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f1001d7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY_SWITCH:I

    .line 1795
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY_SWITCH:I

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 1786
    .end local v10    # "isMagnificationGuesturesEnabled":Z
    .end local v11    # "isMagnifierWindowEnabled":Z
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "isMagnificationGuesturesEnabled":Z
    goto :goto_6

    .line 1787
    :cond_c
    const/4 v11, 0x1

    .restart local v11    # "isMagnifierWindowEnabled":Z
    goto :goto_7

    .line 1788
    .end local v11    # "isMagnifierWindowEnabled":Z
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "isMagnifierWindowEnabled":Z
    goto :goto_7

    .line 1792
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "aod_mode"

    if-eqz v14, :cond_f

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :cond_f
    const/16 v18, 0x0

    goto :goto_9

    .line 1796
    .end local v10    # "isMagnificationGuesturesEnabled":Z
    .end local v11    # "isMagnifierWindowEnabled":Z
    .end local v14    # "mValue":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_10
    const-string/jumbo v18, "visiblepattern_profile"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1797
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    .line 1798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v20, v0

    .line 1797
    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1799
    const/16 v18, 0x0

    return v18

    .line 1801
    :cond_11
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto/16 :goto_2

    .line 1802
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_12
    const-string/jumbo v18, "unification"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    .line 1804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v20, v0

    .line 1803
    invoke-static/range {v18 .. v20}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1805
    const/16 v18, 0x0

    return v18

    .line 1807
    :cond_13
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v18

    .line 1810
    const/high16 v19, 0x10000

    .line 1809
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_14

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    .line 1812
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    move/from16 v19, v0

    .line 1811
    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v5

    .line 1814
    .local v5, "compliantForDevice":Z
    :goto_a
    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;

    move-result-object v7

    .line 1815
    .local v7, "dialog":Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v18

    const-string/jumbo v19, "unification_dialog"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1809
    .end local v5    # "compliantForDevice":Z
    .end local v7    # "dialog":Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
    :cond_14
    const/4 v5, 0x0

    goto :goto_a

    .line 1817
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    .line 1818
    const v19, 0x7f0b1101

    .line 1817
    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1820
    .local v17, "title":Ljava/lang/String;
    new-instance v8, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v8, v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1822
    .local v8, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    sget v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v19, 0x82

    const/16 v20, 0x1

    .line 1821
    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1823
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ununifyLocks()V

    goto/16 :goto_2

    .line 1826
    .end local v8    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    .end local v17    # "title":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_16
    const-string/jumbo v18, "silent_lock"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1827
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1828
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFaceSettings(Z)V

    .line 1833
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f1001e1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->FACE_LOCK_SWITCH:I

    .line 1834
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    sget v19, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->FACE_LOCK_SWITCH:I

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 1830
    :cond_17
    sget-object v18, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->MY_USER_ID:I

    const/16 v21, 0x100

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mSilentLock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_b
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 14
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 1561
    .local v11, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    .line 1563
    .local v12, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1564
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0715

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1566
    const/4 v0, 0x1

    return v0

    .line 1568
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1569
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "fromScreenLock"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1570
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0b1101

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1660
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1571
    :cond_2
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1572
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mUm:Landroid/os/UserManager;

    .line 1573
    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    .line 1572
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1574
    const/4 v0, 0x0

    return v0

    .line 1576
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1577
    .restart local v5    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1578
    const-string/jumbo v0, "isAfw"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1579
    const-string/jumbo v0, "fromScreenLock"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1580
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 1581
    const v3, 0x7f0b10fc

    .line 1582
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 1580
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1583
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v0, "find_my_mobile"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1584
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->moveFindMyMobile()V

    goto :goto_0

    .line 1585
    :cond_5
    const-string/jumbo v0, "finger_scanner"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1586
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1587
    const/4 v0, 0x1

    return v0

    .line 1589
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFingerprintScanner()V

    goto :goto_0

    .line 1590
    :cond_7
    const-string/jumbo v0, "iris_settings"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1591
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->IRIS_SETTINGS:I

    .line 1592
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->IRIS_SETTINGS:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1593
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1594
    const/4 v0, 0x1

    return v0

    .line 1596
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startIrisSettings()V

    goto/16 :goto_0

    .line 1597
    :cond_9
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1598
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1599
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SMART_LOCK:I

    .line 1600
    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SMART_LOCK:I

    invoke-static {v8, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1602
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->needShowSmartLockDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1603
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1604
    const/4 v0, 0x1

    return v0

    .line 1607
    :cond_a
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 1608
    .end local v8    # "context":Landroid/content/Context;
    :cond_b
    const-string/jumbo v0, "samsung_pass"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1609
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SAMSUNG_PASS:I

    .line 1610
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SAMSUNG_PASS:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1611
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 1613
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_1

    .line 1614
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1616
    :catch_0
    move-exception v9

    .line 1617
    .local v9, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1620
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_c
    const-string/jumbo v0, "always_on_screen"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1621
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1622
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1623
    .local v7, "conf":Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1624
    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0552

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1625
    .local v13, "msg":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0405

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1626
    .local v6, "app":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1627
    const/4 v0, 0x0

    return v0

    .line 1632
    .end local v6    # "app":Ljava/lang/String;
    .end local v7    # "conf":Landroid/content/res/Configuration;
    .end local v13    # "msg":Ljava/lang/String;
    :cond_d
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 1633
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1638
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY:I

    .line 1639
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->ALWAYS_ON_DISPLAY:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1634
    :catch_1
    move-exception v9

    .line 1635
    .restart local v9    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "LockscreenMenuSettings"

    const-string/jumbo v1, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1640
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :cond_e
    const-string/jumbo v0, "silent_lock"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1641
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startFaceSettings(Z)V

    .line 1642
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->FACE_LOCK:I

    .line 1643
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->FACE_LOCK:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1644
    :cond_f
    const-string/jumbo v0, "secure_folder"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1645
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SECURE_FOLDER:I

    .line 1646
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->SECURE_FOLDER:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1647
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    .restart local v10    # "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1649
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1650
    const-string/jumbo v0, "skip_popup"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1652
    :cond_10
    :try_start_2
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1653
    :catch_2
    move-exception v9

    .line 1654
    .restart local v9    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1657
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_11
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 397
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "callingPackage":Ljava/lang/String;
    const-string/jumbo v2, "com.android.packageinstaller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    const-string/jumbo v2, "com.samsung.android.packageinstaller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 403
    if-nez v2, :cond_0

    .line 405
    const-string/jumbo v2, "com.google.android.packageinstaller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 403
    if-eqz v2, :cond_3

    .line 406
    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->privateModeSummaryUpdate()V

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 413
    const-string/jumbo v3, "personal_mode_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    .line 412
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->buildPreferenceForCOM()V

    .line 420
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->setLinkedDataView()V

    .line 422
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_2

    .line 423
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 426
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateLockscreenNotificationsForProfile()V

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->updateAlwaysOnScreenSummary()V

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 431
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    .line 430
    const/16 v4, 0xc

    .line 429
    invoke-static {v2, v4, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 432
    .local v1, "showAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mLockscreenSecNotification:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 435
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "LockscreenAndSecurity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 396
    return-void

    .line 408
    .end local v1    # "showAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->mFromPackageInstaller:Z

    goto :goto_0
.end method
