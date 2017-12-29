.class public Lcom/samsung/android/settings/OtherSecuritySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "OtherSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/OtherSecuritySettings$1;,
        Lcom/samsung/android/settings/OtherSecuritySettings$2;,
        Lcom/samsung/android/settings/OtherSecuritySettings$PWState;,
        Lcom/samsung/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-OtherSecuritySettings$PWStateSwitchesValues:[I

.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_SECURITY_CLEARCREDENTIALS:I

.field private static SETTINGS_SECURITY_INSTALLFORMDEVICESTORAGE:I

.field private static SETTINGS_SECURITY_PASSWORDVISIBLE:I

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private isClicked:Z

.field private isKapOn:Z

.field private kapPreference:Landroid/preference/SwitchPreference;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPassword:Ljava/lang/String;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

.field private mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

.field private mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mSecurityPolicyUpdates:Landroid/preference/Preference;

.field private mSecurityReports:Landroid/preference/SwitchPreference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSimLockPreferences:Landroid/preference/Preference;

.field private mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mZenAccess:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/OtherSecuritySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/OtherSecuritySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-OtherSecuritySettings$PWStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->-com-samsung-android-settings-OtherSecuritySettings$PWStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->-com-samsung-android-settings-OtherSecuritySettings$PWStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->values()[Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CONFIRM:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->NEW:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->-com-samsung-android-settings-OtherSecuritySettings$PWStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/OtherSecuritySettings;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/OtherSecuritySettings;->setLockToAppEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/OtherSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->updateSIMLockEnable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    sput-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 177
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 178
    const-string/jumbo v1, "show_password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "security_reports"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "knox_active_protection"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 177
    sput-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 183
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    .line 1078
    new-instance v0, Lcom/samsung/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;-><init>()V

    .line 1077
    sput-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 201
    iput-boolean v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isKapOn:Z

    .line 216
    iput-boolean v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isClicked:Z

    .line 225
    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 228
    new-instance v0, Lcom/samsung/android/settings/OtherSecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$1;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1328
    new-instance v0, Lcom/samsung/android/settings/OtherSecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$2;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 126
    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f0b0d94

    const/16 v3, 0x64

    .line 838
    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-getcom-samsung-android-settings-OtherSecuritySettings$PWStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 837
    :goto_0
    return-void

    .line 840
    :pswitch_0
    const-string/jumbo v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 841
    const-string/jumbo v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CONFIRM:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 843
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    const v1, 0x7f0b0d96

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 843
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 848
    :pswitch_1
    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 849
    const-string/jumbo v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "2new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 850
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 854
    :pswitch_2
    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->NEW:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 855
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0d93

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 856
    const v2, 0x7f0b0d97

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 5

    .prologue
    const v3, 0x7f0b0d92

    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 810
    const-string/jumbo v2, "SYSTEM_PHONE_PASSWORD"

    .line 809
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "phone_password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 813
    sget-object v1, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->NEW:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 814
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0d93

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 815
    const v3, 0x7f0b0d97

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    .line 814
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 808
    :goto_0
    return-void

    .line 817
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 818
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 819
    const v2, 0x7f0b0d95

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    .line 818
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 29

    .prologue
    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 277
    .local v18, "root":Landroid/preference/PreferenceScreen;
    if-eqz v18, :cond_0

    .line 278
    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 280
    :cond_0
    const v25, 0x7f080101

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 283
    sget v25, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    if-nez v25, :cond_2

    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    .line 286
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-nez v25, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v25

    const-string/jumbo v26, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const v26, 0x7f0b0d92

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const-string/jumbo v26, "mPhonePasswordPreference"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 290
    new-instance v16, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 291
    .local v16, "phonePasswordCat":Landroid/preference/PreferenceCategory;
    const v25, 0x7f0b0d91

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 292
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 300
    .end local v16    # "phonePasswordCat":Landroid/preference/PreferenceCategory;
    :cond_1
    const v25, 0x7f0800bc

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    .line 302
    const-string/jumbo v25, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 303
    const-string/jumbo v25, "manage_zen_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->refreshNotificationListeners()V

    .line 307
    if-nez v18, :cond_3

    return-object v18

    .line 283
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 310
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    .line 312
    .local v21, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "carrier_config"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 311
    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 313
    .local v5, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 314
    .local v4, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v25, "sim_lock"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0b1681

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    const-string/jumbo v25, "sim_lock_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0b1680

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    const-string/jumbo v25, "gsm.sim.state"

    const-string/jumbo v26, "UNKNOW"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 317
    .local v14, "mSimStateProp":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v25

    const-string/jumbo v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 318
    const-string/jumbo v25, "sim_lock"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    :goto_1
    const-string/jumbo v25, "screen_pinning_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v27, "lock_to_app_enabled"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_14

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 337
    const-string/jumbo v26, "lock_to_app_enabled"

    const/16 v27, 0x0

    .line 336
    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_4

    .line 338
    const-string/jumbo v25, "screen_pinning_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0b1d08

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 338
    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    :cond_4
    const-string/jumbo v25, "show_password"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 344
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-eqz v25, :cond_5

    .line 346
    const-string/jumbo v25, "category_show_passwords"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 345
    check-cast v13, Landroid/preference/PreferenceGroup;

    .line 347
    .local v13, "mShowPasswordCategory":Landroid/preference/PreferenceGroup;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    .end local v13    # "mShowPasswordCategory":Landroid/preference/PreferenceGroup;
    :cond_5
    const-string/jumbo v25, "credentials_reset"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "user"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 354
    .local v22, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "no_config_credentials"

    sget v27, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    invoke-static/range {v25 .. v27}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v25

    if-nez v25, :cond_16

    .line 356
    const-string/jumbo v25, "user_credentials"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 357
    .local v24, "userCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v25, "no_config_credentials"

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v25, "credential_storage_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 359
    .local v6, "credentialStorageType":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v25, "no_config_credentials"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v25, "credentials_install"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 361
    .local v10, "installCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v25, "no_config_credentials"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v25, v0

    const-string/jumbo v26, "no_config_credentials"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v25

    if-eqz v25, :cond_15

    const v20, 0x7f0b1a3e

    .line 367
    .local v20, "storageSummaryRes":I
    :goto_3
    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 378
    .end local v6    # "credentialStorageType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v10    # "installCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v20    # "storageSummaryRes":I
    .end local v24    # "userCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    :goto_4
    const-string/jumbo v25, "security_policy_updates"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    .line 379
    const-string/jumbo v25, "security_reports"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "send_security_reports"

    const/16 v27, -0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 389
    :goto_5
    const-string/jumbo v25, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_18

    const-string/jumbo v25, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 398
    :cond_6
    :goto_6
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v25

    if-eqz v25, :cond_7

    const-string/jumbo v25, "GOOGLE_POLICY"

    const-string/jumbo v26, "selinux.policy_version"

    const-string/jumbo v27, "Unknown"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 399
    :cond_7
    const-string/jumbo v25, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 416
    :goto_7
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 417
    const-string/jumbo v25, "true"

    const-string/jumbo v26, "ro.config.kap"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 416
    if-eqz v25, :cond_8

    .line 418
    const-string/jumbo v25, "true"

    const-string/jumbo v26, "ro.config.kap_default_on"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 434
    :cond_8
    const-string/jumbo v25, "knox_security_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_9
    :goto_8
    const-string/jumbo v25, "advanced_security"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 444
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    sget v26, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 450
    :cond_a
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/UCMHelpUtils;->isSmartcardAvailable(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 452
    const-string/jumbo v25, "smartcard_credential_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->removePreference(Ljava/lang/String;)V

    .line 458
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v25

    .line 459
    const-class v26, Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x1

    .line 458
    invoke-virtual/range {v25 .. v28}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 461
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a
    sget-object v25, Lcom/samsung/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_20

    .line 462
    sget-object v25, Lcom/samsung/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v25, v25, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 463
    .local v17, "pref":Landroid/preference/Preference;
    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 461
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 319
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v9    # "i":I
    .end local v17    # "pref":Landroid/preference/Preference;
    .end local v22    # "um":Landroid/os/UserManager;
    :cond_d
    const-string/jumbo v25, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v25

    if-nez v25, :cond_e

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v25

    const-string/jumbo v26, "CscFeature_Setting_DisableSimCardLock"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 320
    :cond_e
    const-string/jumbo v25, "sim_lock"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 321
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->isSimIccReady()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 324
    :cond_10
    const-string/jumbo v25, "sim_lock"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 322
    :cond_11
    const-string/jumbo v25, "sim_lock"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 325
    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v25

    if-eqz v25, :cond_13

    const-string/jumbo v25, "NETWORK_LOCKED"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 326
    const-string/jumbo v25, "sim_lock"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 329
    :cond_13
    const-string/jumbo v25, "sim_lock"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 333
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 366
    .restart local v6    # "credentialStorageType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .restart local v10    # "installCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    .restart local v22    # "um":Landroid/os/UserManager;
    .restart local v24    # "userCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    :cond_15
    const v20, 0x7f0b1a3f

    goto/16 :goto_3

    .line 370
    .end local v6    # "credentialStorageType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v10    # "installCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v24    # "userCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    :cond_16
    const-string/jumbo v25, "credentials_management"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 369
    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 371
    .local v7, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string/jumbo v25, "credentials_reset"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    const-string/jumbo v25, "credentials_install"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    const-string/jumbo v25, "credential_storage_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    const-string/jumbo v25, "user_credentials"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 384
    .end local v7    # "credentialsManager":Landroid/preference/PreferenceGroup;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 390
    :cond_18
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v25

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-nez v25, :cond_6

    .line 391
    :cond_19
    const-string/jumbo v25, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceGroup;

    .line 392
    .local v19, "securityUpdateServiceCategory":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 401
    .end local v19    # "securityUpdateServiceCategory":Landroid/preference/PreferenceGroup;
    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v25

    if-nez v25, :cond_1b

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const v26, 0x7f0b0d7c

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_7

    .line 404
    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-nez v25, :cond_1c

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const v26, 0x7f0b0d7d

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_7

    .line 407
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const v26, 0x7f0b0d7e

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_7

    .line 419
    :cond_1d
    :try_start_1
    const-string/jumbo v25, "knox_active_protection"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->kapPreference:Landroid/preference/SwitchPreference;

    .line 420
    new-instance v12, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct {v12}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    .line 421
    .local v12, "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->kapPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    if-eqz v12, :cond_9

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->kapPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0b1212

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 423
    invoke-virtual {v12}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnabled()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->isKapOn:Z

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->kapPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->isKapOn:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->isKapOn:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    .line 426
    invoke-virtual {v12}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->kapPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0b1210

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setSummary(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 436
    .end local v12    # "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    :catch_0
    move-exception v8

    .line 437
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v25, "OtherSecuritySettings"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "KAP Mode failed: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 428
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    :cond_1e
    :try_start_2
    invoke-virtual {v12}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->kapPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0b1211

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setSummary(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 445
    .end local v12    # "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    :cond_1f
    const-string/jumbo v25, "manage_trust_agents"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 446
    .local v15, "manageAgents":Landroid/preference/Preference;
    if-eqz v15, :cond_a

    invoke-virtual {v3, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 467
    .end local v15    # "manageAgents":Landroid/preference/Preference;
    .restart local v9    # "i":I
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v11

    .line 468
    .local v11, "isKioskContainer":Z
    if-eqz v11, :cond_21

    .line 469
    const-string/jumbo v25, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 470
    if-eqz v3, :cond_21

    .line 471
    const-string/jumbo v25, "usage_access"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 472
    .local v23, "usageAccess":Landroid/preference/Preference;
    if-eqz v23, :cond_21

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 478
    .end local v23    # "usageAccess":Landroid/preference/Preference;
    :cond_21
    const-string/jumbo v25, "2016A"

    const-string/jumbo v26, "ro.build.scafe.version"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_25

    .line 480
    const/4 v9, 0x0

    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_24

    .line 481
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/preference/PreferenceCategory;

    move/from16 v25, v0

    if-eqz v25, :cond_22

    .line 482
    if-nez v9, :cond_23

    .line 483
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f040052

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 480
    :cond_22
    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 485
    :cond_23
    const-string/jumbo v25, "advanced_security"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_22

    .line 486
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 493
    :cond_24
    const-string/jumbo v25, "screen_pinning_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 496
    :cond_25
    return-object v18
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0b0abc

    const v5, 0x7f0b0abd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1046
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1047
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1046
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1049
    .local v0, "quality":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1054
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 1070
    :cond_1
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1057
    :sswitch_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 1058
    const v2, 0x7f0b1479

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1057
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1062
    :sswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    .line 1063
    const v2, 0x7f0b147b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1062
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1065
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1066
    new-array v1, v4, [Ljava/lang/Object;

    .line 1067
    const v2, 0x7f0b1477

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1066
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1054
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private isScreenLockUsed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1040
    const v2, 0x7f0b0abc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1041
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1042
    const-string/jumbo v3, "lock_to_app_exit_locked"

    .line 1041
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1040
    .end local v0    # "def":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "def":I
    goto :goto_0
.end method

.method private isSimIccReady()Z
    .locals 5

    .prologue
    .line 518
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 520
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 522
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 523
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 524
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 525
    const/4 v4, 0x1

    return v4

    .line 530
    .end local v0    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private isSimReady()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 537
    const/4 v0, 0x0

    .line 539
    .local v0, "simState":I
    iget-object v4, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 540
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 541
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 542
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 543
    if-eq v0, v7, :cond_0

    .line 544
    if-eqz v0, :cond_0

    .line 545
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 546
    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    .line 547
    return v7

    .line 551
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v6
.end method

.method private refreshNotificationListeners()V
    .locals 2

    .prologue
    .line 557
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 556
    :cond_0
    return-void
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 576
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 573
    :cond_0
    return-void
.end method

.method private screenPinningDisablePopup()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 983
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0aba

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 984
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    const v10, 0x7f0b0523

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 985
    .local v7, "title":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 986
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 987
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b035a

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 990
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 991
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 992
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 993
    .local v3, "dialogView":Landroid/view/ViewGroup;
    const v8, 0x7f110111

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 994
    .local v2, "descText":Landroid/widget/TextView;
    const v8, 0x7f110112

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 995
    .local v1, "descList":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    const v10, 0x7f0b0339

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1000
    new-instance v9, Lcom/samsung/android/settings/OtherSecuritySettings$3;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$3;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    const v10, 0x104000a

    .line 998
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1007
    new-instance v9, Lcom/samsung/android/settings/OtherSecuritySettings$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$4;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    const/high16 v10, 0x1040000

    .line 998
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1012
    new-instance v9, Lcom/samsung/android/settings/OtherSecuritySettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$5;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    .line 998
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 982
    return-void
.end method

.method private setLockToAppEnabled(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1027
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_to_app_enabled"

    .line 1028
    if-eqz p1, :cond_1

    move v0, v1

    .line 1027
    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1030
    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz p1, :cond_2

    const v0, 0x7f0b1d08

    :goto_1
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 1032
    if-eqz p1, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lock_to_app_exit_locked"

    .line 1035
    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->isScreenLockUsed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1034
    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1026
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1028
    goto :goto_0

    .line 1030
    :cond_2
    const v0, 0x7f0b1d09

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1035
    goto :goto_2
.end method

.method private updateSIMLockEnable()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 897
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 898
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->isSimReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 899
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getSRoamingVirtualSlot(Landroid/content/Context;)I

    move-result v0

    .line 900
    .local v0, "isSRoamingEnable":I
    sget v2, Lcom/android/settings/Utils;->SOFTSIM_STATUS_ENABLE:I

    if-ne v0, v2, :cond_1

    .line 901
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 896
    .end local v0    # "isSRoamingEnable":I
    :cond_0
    :goto_0
    return-void

    .line 902
    .restart local v0    # "isSRoamingEnable":I
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 903
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isSimReady()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 980
    const v0, 0x7f0b1bd6

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 500
    move-object v1, p2

    .line 501
    .local v1, "status":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 503
    :cond_0
    return-object p2

    .line 505
    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 506
    return-object v0

    .line 508
    :cond_2
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 509
    return-object p2

    .line 512
    :cond_3
    return-object p2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 870
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 871
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 872
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 880
    :cond_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 884
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 885
    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    .line 886
    const/16 v1, 0x66

    if-ne p1, v1, :cond_3

    .line 887
    :cond_2
    if-ne p2, v3, :cond_3

    .line 888
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/OtherSecuritySettings;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    .line 893
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 869
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 247
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 250
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 260
    if-eqz p1, :cond_0

    .line 261
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 260
    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 266
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 242
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 622
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 621
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 746
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "OtherSecuritySettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 745
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 910
    const/4 v7, 0x1

    .line 911
    .local v7, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 912
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v9, "show_password"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 913
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0f02ac

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_PASSWORDVISIBLE:I

    .line 914
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    sget v13, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_PASSWORDVISIBLE:I

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x3e8

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v12, v13, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 915
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "show_password"

    .line 916
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_0

    move v10, v11

    .line 915
    :cond_0
    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 975
    :cond_1
    :goto_1
    return v7

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    move v9, v10

    .line 914
    goto :goto_0

    .line 918
    :cond_3
    const-string/jumbo v9, "security_reports"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 919
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "send_security_reports"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_4

    const/4 v8, 0x1

    .line 920
    .local v8, "state":Z
    :goto_2
    const-string/jumbo v9, "OtherSecuritySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "state in db: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-eqz v8, :cond_5

    .line 924
    const/4 v8, 0x0

    .line 925
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "send_security_reports"

    invoke-static {v9, v11, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 940
    :goto_3
    const-string/jumbo v9, "OtherSecuritySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state for intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f02b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 942
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.android.setting.intent.send_security_report_checked"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 943
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "IS_SEND_SECURITY_REPORT"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 944
    const-string/jumbo v9, "ACTIONBAR_TEXT_COLOR"

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 945
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 919
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "state":Z
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "state":Z
    goto :goto_2

    .line 927
    :cond_5
    const-string/jumbo v9, "Utils"

    const-string/jumbo v11, "other security settings: KEY_SECURITY_REPORTS"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 929
    iget-object v9, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 930
    const/4 v7, 0x0

    .line 935
    :cond_6
    const/4 v8, 0x1

    goto :goto_3

    .line 947
    .end local v8    # "state":Z
    :cond_7
    const-string/jumbo v9, "screen_pinning_settings"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 948
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "access_control_use"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_8

    const/4 v1, 0x1

    .local v1, "accessControlEnabled":Z
    :goto_4
    move-object/from16 v9, p2

    .line 949
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v1, :cond_9

    .line 950
    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->screenPinningDisablePopup()V

    goto/16 :goto_1

    .line 948
    .end local v1    # "accessControlEnabled":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "accessControlEnabled":Z
    goto :goto_4

    .line 952
    :cond_9
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/OtherSecuritySettings;->setLockToAppEnabled(Z)V

    goto/16 :goto_1

    .line 954
    .end local v1    # "accessControlEnabled":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    const-string/jumbo v9, "knox_active_protection"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 955
    new-instance v5, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct {v5}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    .line 957
    .local v5, "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 958
    .local v4, "isChecked":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 959
    iget-boolean v9, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isKapOn:Z

    if-nez v9, :cond_b

    .line 960
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 961
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/android/settings/KnoxActiveProtectionEulaActivity;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 962
    const/high16 v9, 0x20000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 963
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 970
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_b
    :goto_5
    iget-object v9, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->kapPreference:Landroid/preference/SwitchPreference;

    iget-boolean v10, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isKapOn:Z

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 971
    .end local v4    # "isChecked":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 972
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 966
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "isChecked":Ljava/lang/Boolean;
    :cond_c
    const/4 v9, 0x0

    :try_start_1
    iput-boolean v9, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isKapOn:Z

    .line 967
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 968
    iget-object v9, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->kapPreference:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b1211

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 756
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "trust_agent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 759
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 760
    .local v2, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 762
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v6, 0x7e

    .line 761
    invoke-virtual {v2, v6, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 763
    .local v0, "confirmationLaunched":Z
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 767
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_0
    iput-object v8, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 805
    .end local v0    # "confirmationLaunched":Z
    .end local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_0
    :goto_1
    return v7

    .line 768
    .restart local v0    # "confirmationLaunched":Z
    .restart local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :catch_0
    move-exception v1

    .line 769
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 773
    .end local v0    # "confirmationLaunched":Z
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 775
    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->StartPassword()V

    goto :goto_1

    .line 777
    :cond_2
    const-string/jumbo v5, "smartCardConfig"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 779
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 780
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.sec.smartcard.pinservice.action.SMARTCARDCREDENTIALSETTINGSPAGE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 782
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 783
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 786
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string/jumbo v5, "sim_lock_settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 787
    iget-boolean v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isClicked:Z

    if-nez v5, :cond_0

    .line 788
    iput-boolean v7, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isClicked:Z

    .line 789
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 791
    :cond_4
    const-string/jumbo v5, "credentials_install"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 792
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f02b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_INSTALLFORMDEVICESTORAGE:I

    .line 793
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_INSTALLFORMDEVICESTORAGE:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 794
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 795
    :cond_5
    const-string/jumbo v5, "credentials_reset"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 796
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f02b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_CLEARCREDENTIALS:I

    .line 797
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_CLEARCREDENTIALS:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 798
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 803
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5
.end method

.method public onResume()V
    .locals 25

    .prologue
    .line 635
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 636
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->isClicked:Z

    .line 639
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/4 v5, 0x0

    .line 644
    .local v5, "blockUnsignedAppInstall":Z
    :goto_0
    if-nez v5, :cond_0

    .line 645
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 647
    .local v4, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_d

    const/4 v5, 0x0

    .line 651
    .end local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "blockUnsignedAppInstall":Z
    :cond_0
    :goto_1
    const/4 v12, 0x1

    .line 652
    .local v12, "isScreenPinningState":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    .line 653
    .local v8, "isDesktopMode":Z
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v21, "false"

    const/16 v22, 0x0

    aput-object v21, v19, v22

    .line 654
    .local v19, "selectionArg":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string/jumbo v22, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 655
    const-string/jumbo v23, "isScreenPinningAllowedAsUser"

    .line 654
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 656
    .local v11, "isScreenPinningAllowed":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    .line 657
    if-nez v11, :cond_e

    .line 658
    const/4 v12, 0x0

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 665
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v22, v0

    if-eqz v12, :cond_2

    if-eqz v8, :cond_f

    :cond_2
    const/16 v21, 0x0

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 669
    const/16 v18, 0x0

    .line 670
    .local v18, "resetCredentialsSetEnabled":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->getProfiles(I)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "pi$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 671
    .local v16, "pi":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Landroid/security/KeyStore;->isEmpty(II)Z

    move-result v21

    if-nez v21, :cond_3

    .line 672
    const/16 v18, 0x1

    .line 676
    .end local v16    # "pi":Landroid/content/pm/UserInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 683
    .local v6, "context":Landroid/content/Context;
    const-string/jumbo v21, "content://com.sec.knox.provider/CertificatePolicy"

    const-string/jumbo v22, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v6, v0, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 684
    .local v14, "isUserRemoveCertificatesAllowed":I
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "false"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 685
    .local v20, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v21, "content://com.sec.knox.provider2/vpnPolicy"

    const-string/jumbo v22, "isUserChangeProfilesAllowed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v6, v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 687
    .local v13, "isUserChangeProfilesAllowed":I
    if-eqz v14, :cond_5

    if-nez v13, :cond_6

    .line 688
    :cond_5
    const-string/jumbo v21, "OtherSecuritySettings"

    const-string/jumbo v22, "onResume() UserChange(or Remove) has disallowed by IT admin."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 695
    .end local v6    # "context":Landroid/content/Context;
    .end local v13    # "isUserChangeProfilesAllowed":I
    .end local v14    # "isUserRemoveCertificatesAllowed":I
    .end local v17    # "pi$iterator":Ljava/util/Iterator;
    .end local v18    # "resetCredentialsSetEnabled":Z
    .end local v20    # "selectionArgs":[Ljava/lang/String;
    :cond_6
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 696
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v21, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string/jumbo v21, "com.samsung.android.softsim.ServiceStatus"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v21

    if-eqz v21, :cond_7

    const-string/jumbo v21, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 699
    const-string/jumbo v21, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->updateSIMLockEnable()V

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 714
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 716
    const-string/jumbo v23, "show_password"

    const/16 v24, 0x1

    .line 715
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 721
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string/jumbo v22, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v23, "isPasswordVisibilityEnabled"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 722
    .local v9, "isPasswordVisibilityEnabled":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 723
    if-nez v9, :cond_a

    .line 724
    const-string/jumbo v21, "OtherSecuritySettings"

    const-string/jumbo v22, "onResume() showPassword has disabled because IT admin blocked."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 731
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v15

    .line 732
    .local v15, "mUserManager":Landroid/os/UserManager;
    const-string/jumbo v21, "no_adjust_volume"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v10

    .line 733
    .local v10, "isRestricted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    move-object/from16 v22, v0

    if-eqz v10, :cond_11

    const/16 v21, 0x0

    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 738
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->buildPreferenceForCOM()V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v23, v0

    const-string/jumbo v24, "OtherSecuritySettings"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 634
    return-void

    .line 642
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "isDesktopMode":Z
    .end local v9    # "isPasswordVisibilityEnabled":I
    .end local v10    # "isRestricted":Z
    .end local v11    # "isScreenPinningAllowed":I
    .end local v12    # "isScreenPinningState":Z
    .end local v15    # "mUserManager":Landroid/os/UserManager;
    .end local v19    # "selectionArg":[Ljava/lang/String;
    :cond_c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 648
    .restart local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "blockUnsignedAppInstall":Z
    :cond_d
    const/4 v5, 0x1

    .local v5, "blockUnsignedAppInstall":Z
    goto/16 :goto_1

    .line 661
    .end local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "blockUnsignedAppInstall":Z
    .restart local v8    # "isDesktopMode":Z
    .restart local v11    # "isScreenPinningAllowed":I
    .restart local v12    # "isScreenPinningState":Z
    .restart local v19    # "selectionArg":[Ljava/lang/String;
    :cond_e
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 665
    :cond_f
    const/16 v21, 0x1

    goto/16 :goto_3

    .line 715
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 734
    .restart local v9    # "isPasswordVisibilityEnabled":I
    .restart local v10    # "isRestricted":Z
    .restart local v15    # "mUserManager":Landroid/os/UserManager;
    :cond_11
    const/16 v21, 0x1

    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 627
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 629
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 626
    :cond_0
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 825
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 826
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.Password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const-string/jumbo v2, ".title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string/jumbo v2, ".subject"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string/jumbo v2, ".password"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const-string/jumbo v2, ".from"

    const-string/jumbo v3, "FromOtherSecurity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    invoke-virtual {p0, v1, p4}, Lcom/samsung/android/settings/OtherSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .end local v1    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
