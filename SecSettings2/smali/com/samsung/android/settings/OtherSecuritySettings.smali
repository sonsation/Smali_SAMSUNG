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
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    sput-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 175
    const-string/jumbo v1, "show_password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "security_reports"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 174
    sput-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    .line 995
    new-instance v0, Lcom/samsung/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/OtherSecuritySettings$SecuritySearchIndexProvider;-><init>()V

    .line 994
    sput-object v0, Lcom/samsung/android/settings/OtherSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isClicked:Z

    .line 220
    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 223
    new-instance v0, Lcom/samsung/android/settings/OtherSecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$1;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1233
    new-instance v0, Lcom/samsung/android/settings/OtherSecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$2;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 124
    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f0b0bc2

    const/16 v3, 0x64

    .line 778
    invoke-static {}, Lcom/samsung/android/settings/OtherSecuritySettings;->-getcom-samsung-android-settings-OtherSecuritySettings$PWStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 777
    :goto_0
    return-void

    .line 780
    :pswitch_0
    const-string/jumbo v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 781
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

    .line 782
    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CONFIRM:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 783
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    const v1, 0x7f0b0bc4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 783
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 788
    :pswitch_1
    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 789
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

    .line 791
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 790
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 794
    :pswitch_2
    sget-object v0, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->NEW:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 795
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0bc1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 796
    const v2, 0x7f0b0bc5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 778
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
    const v3, 0x7f0b0bc0

    .line 749
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 750
    const-string/jumbo v2, "SYSTEM_PHONE_PASSWORD"

    .line 749
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "phone_password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 753
    sget-object v1, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->NEW:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 754
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0bc1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 755
    const v3, 0x7f0b0bc5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    .line 754
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 748
    :goto_0
    return-void

    .line 757
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/OtherSecuritySettings$PWState;->CURRENT:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    iput-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPWState:Lcom/samsung/android/settings/OtherSecuritySettings$PWState;

    .line 758
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    const v2, 0x7f0b0bc3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    .line 758
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/settings/OtherSecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 26

    .prologue
    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 272
    .local v15, "root":Landroid/preference/PreferenceScreen;
    if-eqz v15, :cond_0

    .line 273
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 275
    :cond_0
    const v22, 0x7f0800f5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 278
    sget v22, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    if-nez v22, :cond_9

    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    .line 281
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    if-nez v22, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const v23, 0x7f0b0bc0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const-string/jumbo v23, "mPhonePasswordPreference"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 285
    new-instance v13, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 286
    .local v13, "phonePasswordCat":Landroid/preference/PreferenceCategory;
    const v22, 0x7f0b0bbf

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 287
    invoke-virtual {v15, v13}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    .end local v13    # "phonePasswordCat":Landroid/preference/PreferenceCategory;
    :cond_1
    const v22, 0x7f0800b3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->addPreferencesFromResource(I)V

    .line 297
    const-string/jumbo v22, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 298
    const-string/jumbo v22, "manage_zen_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->refreshNotificationListeners()V

    .line 302
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 304
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string/jumbo v23, "carrier_config"

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 303
    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 305
    .local v5, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 306
    .local v4, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v22, "sim_lock"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b145e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    const-string/jumbo v22, "sim_lock_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b145d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v22

    const-string/jumbo v23, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 309
    const-string/jumbo v22, "sim_lock"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    :goto_1
    const-string/jumbo v22, "screen_pinning_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v24, "lock_to_app_enabled"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_10

    const/16 v22, 0x1

    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 330
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 331
    const-string/jumbo v23, "lock_to_app_enabled"

    const/16 v24, 0x0

    .line 330
    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_2

    .line 332
    const-string/jumbo v22, "screen_pinning_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b1ad8

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 332
    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    :cond_2
    const-string/jumbo v22, "show_password"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 338
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    if-eqz v22, :cond_3

    .line 340
    const-string/jumbo v22, "category_show_passwords"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 339
    check-cast v11, Landroid/preference/PreferenceGroup;

    .line 341
    .local v11, "mShowPasswordCategory":Landroid/preference/PreferenceGroup;
    invoke-virtual {v15, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 344
    .end local v11    # "mShowPasswordCategory":Landroid/preference/PreferenceGroup;
    :cond_3
    const-string/jumbo v22, "credentials_reset"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string/jumbo v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 348
    .local v19, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string/jumbo v23, "no_config_credentials"

    sget v24, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    invoke-static/range {v22 .. v24}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v22

    if-nez v22, :cond_13

    .line 350
    const-string/jumbo v22, "user_credentials"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 351
    .local v21, "userCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v22, "no_config_credentials"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v22, "credential_storage_type"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 353
    .local v6, "credentialStorageType":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v22, "no_config_credentials"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v22, "credentials_install"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 355
    .local v9, "installCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v22, "no_config_credentials"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v22, v0

    const-string/jumbo v23, "no_config_credentials"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v22

    if-eqz v22, :cond_12

    const v17, 0x7f0b1814

    .line 361
    .local v17, "storageSummaryRes":I
    :goto_4
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 372
    .end local v6    # "credentialStorageType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v9    # "installCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v17    # "storageSummaryRes":I
    .end local v21    # "userCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    :goto_5
    const-string/jumbo v22, "security_policy_updates"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    .line 373
    const-string/jumbo v22, "security_reports"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "send_security_reports"

    const/16 v24, -0x1

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 383
    :goto_6
    const-string/jumbo v22, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_15

    const-string/jumbo v22, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 392
    :cond_4
    :goto_7
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v22

    if-eqz v22, :cond_5

    const-string/jumbo v22, "GOOGLE_POLICY"

    const-string/jumbo v23, "selinux.policy_version"

    const-string/jumbo v24, "Unknown"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 393
    :cond_5
    const-string/jumbo v22, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 410
    :goto_8
    const-string/jumbo v22, "advanced_security"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 411
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    sget v23, Lcom/samsung/android/settings/OtherSecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 417
    :cond_6
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/UCMHelpUtils;->isSmartcardAvailable(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 419
    const-string/jumbo v22, "smartcard_credential_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->removePreference(Ljava/lang/String;)V

    .line 425
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v22

    .line 426
    const-class v23, Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, 0x1

    .line 425
    invoke-virtual/range {v22 .. v25}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 428
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a
    sget-object v22, Lcom/samsung/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v8, v0, :cond_1b

    .line 429
    sget-object v22, Lcom/samsung/android/settings/OtherSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v22, v22, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 430
    .local v14, "pref":Landroid/preference/Preference;
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 428
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 278
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "i":I
    .end local v14    # "pref":Landroid/preference/Preference;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v19    # "um":Landroid/os/UserManager;
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 310
    .restart local v4    # "b":Landroid/os/PersistableBundle;
    .restart local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    const-string/jumbo v22, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v22

    if-nez v22, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Setting_DisableSimCardLock"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 311
    :cond_b
    const-string/jumbo v22, "sim_lock"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 312
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->isSimIccReady()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 315
    :cond_d
    const-string/jumbo v22, "sim_lock"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 313
    :cond_e
    const-string/jumbo v22, "sim_lock"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 318
    :cond_f
    const-string/jumbo v22, "sim_lock"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 322
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 327
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 360
    .restart local v6    # "credentialStorageType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .restart local v9    # "installCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    .restart local v19    # "um":Landroid/os/UserManager;
    .restart local v21    # "userCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    :cond_12
    const v17, 0x7f0b1815

    goto/16 :goto_4

    .line 364
    .end local v6    # "credentialStorageType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v9    # "installCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v21    # "userCredentials":Lcom/samsung/android/settingslib/RestrictedPreference;
    :cond_13
    const-string/jumbo v22, "credentials_management"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 363
    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 365
    .local v7, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string/jumbo v22, "credentials_reset"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    const-string/jumbo v22, "credentials_install"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    const-string/jumbo v22, "credential_storage_type"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    const-string/jumbo v22, "user_credentials"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 378
    .end local v7    # "credentialsManager":Landroid/preference/PreferenceGroup;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 384
    :cond_15
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v22

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mIsPrimary:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 385
    :cond_16
    const-string/jumbo v22, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 386
    .local v16, "securityUpdateServiceCategory":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 395
    .end local v16    # "securityUpdateServiceCategory":Landroid/preference/PreferenceGroup;
    :cond_17
    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v22

    if-nez v22, :cond_18

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0b0baa

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_8

    .line 398
    :cond_18
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-nez v22, :cond_19

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0b0bab

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_8

    .line 401
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0b0bac

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_8

    .line 412
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    :cond_1a
    const-string/jumbo v22, "manage_trust_agents"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 413
    .local v12, "manageAgents":Landroid/preference/Preference;
    if-eqz v12, :cond_6

    invoke-virtual {v3, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 434
    .end local v12    # "manageAgents":Landroid/preference/Preference;
    .restart local v8    # "i":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    .line 435
    .local v10, "isKioskContainer":Z
    if-eqz v10, :cond_1c

    .line 436
    const-string/jumbo v22, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 437
    if-eqz v3, :cond_1c

    .line 438
    const-string/jumbo v22, "usage_access"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 439
    .local v20, "usageAccess":Landroid/preference/Preference;
    if-eqz v20, :cond_1c

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    .end local v20    # "usageAccess":Landroid/preference/Preference;
    :cond_1c
    const-string/jumbo v22, "2016A"

    const-string/jumbo v23, "ro.build.scafe.version"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 447
    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_1f

    .line 448
    invoke-virtual {v15, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/preference/PreferenceCategory;

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 449
    if-nez v8, :cond_1e

    .line 450
    invoke-virtual {v15, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v22

    const v23, 0x7f04004e

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 447
    :cond_1d
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 452
    :cond_1e
    const-string/jumbo v22, "advanced_security"

    invoke-virtual {v15, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    .line 453
    invoke-virtual {v15, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 460
    :cond_1f
    const-string/jumbo v22, "screen_pinning_settings"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 463
    :cond_20
    return-object v15
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0b091a

    const v5, 0x7f0b091b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 963
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 964
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 963
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 966
    .local v0, "quality":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 971
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 987
    :cond_1
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 974
    :sswitch_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 975
    const v2, 0x7f0b1292

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 974
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 979
    :sswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    .line 980
    const v2, 0x7f0b1294

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 979
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 982
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    new-array v1, v4, [Ljava/lang/Object;

    .line 984
    const v2, 0x7f0b1290

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 983
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 971
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

    .line 957
    const v2, 0x7f0b091a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/OtherSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 958
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 959
    const-string/jumbo v3, "lock_to_app_exit_locked"

    .line 958
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 957
    .end local v0    # "def":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "def":I
    goto :goto_0
.end method

.method private isSimIccReady()Z
    .locals 5

    .prologue
    .line 469
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 471
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 473
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 474
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

    .line 475
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    const/4 v4, 0x1

    return v4

    .line 481
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

    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, "simState":I
    iget-object v4, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 491
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 492
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

    .line 493
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 494
    if-eq v0, v7, :cond_0

    .line 495
    if-eqz v0, :cond_0

    .line 496
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 497
    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    .line 498
    return v7

    .line 502
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v6
.end method

.method private refreshNotificationListeners()V
    .locals 2

    .prologue
    .line 508
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 507
    :cond_0
    return-void
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 527
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 524
    :cond_0
    return-void
.end method

.method private screenPinningDisablePopup()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 903
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0918

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 904
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    const v10, 0x7f0b0451

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 905
    .local v7, "title":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 906
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b02bc

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 910
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 911
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 912
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 913
    .local v3, "dialogView":Landroid/view/ViewGroup;
    const v8, 0x7f11010e

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 914
    .local v2, "descText":Landroid/widget/TextView;
    const v8, 0x7f11010f

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 915
    .local v1, "descList":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    const v10, 0x7f0b029b

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 920
    new-instance v9, Lcom/samsung/android/settings/OtherSecuritySettings$3;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$3;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    const v10, 0x104000a

    .line 918
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 927
    new-instance v9, Lcom/samsung/android/settings/OtherSecuritySettings$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$4;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    const/high16 v10, 0x1040000

    .line 918
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 932
    new-instance v9, Lcom/samsung/android/settings/OtherSecuritySettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/OtherSecuritySettings$5;-><init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V

    .line 918
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 902
    return-void
.end method

.method private setLockToAppEnabled(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 944
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_to_app_enabled"

    .line 945
    if-eqz p1, :cond_1

    move v0, v1

    .line 944
    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 947
    iget-object v3, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz p1, :cond_2

    const v0, 0x7f0b1ad8

    :goto_1
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 949
    if-eqz p1, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lock_to_app_exit_locked"

    .line 952
    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->isScreenLockUsed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 951
    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 945
    goto :goto_0

    .line 947
    :cond_2
    const v0, 0x7f0b1ad9

    goto :goto_1

    :cond_3
    move v1, v2

    .line 952
    goto :goto_2
.end method

.method private updateSIMLockEnable()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 837
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 838
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->isSimReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 839
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getSRoamingVirtualSlot(Landroid/content/Context;)I

    move-result v0

    .line 840
    .local v0, "isSRoamingEnable":I
    sget v2, Lcom/android/settings/Utils;->SOFTSIM_STATUS_ENABLE:I

    if-ne v0, v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimLockPreferences:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 836
    .end local v0    # "isSRoamingEnable":I
    :cond_0
    :goto_0
    return-void

    .line 842
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

    .line 843
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
    .line 900
    const v0, 0x7f0b19ad

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 810
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 811
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_1

    if-ne p2, v3, :cond_1

    .line 812
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 820
    :cond_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 824
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    .line 826
    const/16 v1, 0x66

    if-ne p1, v1, :cond_3

    .line 827
    :cond_2
    if-ne p2, v3, :cond_3

    .line 828
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/OtherSecuritySettings;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    .line 833
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 809
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 242
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 245
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 255
    if-eqz p1, :cond_0

    .line 256
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 255
    if-eqz v0, :cond_0

    .line 257
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 261
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 237
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 573
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 572
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 686
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 687
    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "OtherSecuritySettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 685
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 850
    const/4 v3, 0x1

    .line 851
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, "show_password"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 853
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f100203

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_PASSWORDVISIBLE:I

    .line 854
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_PASSWORDVISIBLE:I

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x3e8

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 855
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "show_password"

    .line 856
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v7

    .line 855
    :cond_0
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 895
    :cond_1
    :goto_1
    return v3

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    move v5, v6

    .line 854
    goto :goto_0

    .line 858
    :cond_3
    const-string/jumbo v5, "security_reports"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 859
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "send_security_reports"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_4

    const/4 v4, 0x1

    .line 860
    .local v4, "state":Z
    :goto_2
    const-string/jumbo v5, "OtherSecuritySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state in db: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    if-eqz v4, :cond_5

    .line 864
    const/4 v4, 0x0

    .line 865
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "send_security_reports"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 880
    :goto_3
    const-string/jumbo v5, "OtherSecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100208

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 882
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.setting.intent.send_security_report_checked"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "IS_SEND_SECURITY_REPORT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 884
    const-string/jumbo v5, "ACTIONBAR_TEXT_COLOR"

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 859
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "state":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "state":Z
    goto :goto_2

    .line 867
    :cond_5
    const-string/jumbo v5, "Utils"

    const-string/jumbo v7, "other security settings: KEY_SECURITY_REPORTS"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 869
    iget-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSecurityReports:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 870
    const/4 v3, 0x0

    .line 875
    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    .line 887
    .end local v4    # "state":Z
    :cond_7
    const-string/jumbo v5, "screen_pinning_settings"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 888
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "access_control_use"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_8

    const/4 v0, 0x1

    .local v0, "accessControlEnabled":Z
    :goto_4
    move-object v5, p2

    .line 889
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v0, :cond_9

    .line 890
    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->screenPinningDisablePopup()V

    goto/16 :goto_1

    .line 888
    .end local v0    # "accessControlEnabled":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "accessControlEnabled":Z
    goto :goto_4

    .line 892
    :cond_9
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/OtherSecuritySettings;->setLockToAppEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 696
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "trust_agent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 699
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 700
    .local v2, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 702
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v6, 0x7e

    .line 701
    invoke-virtual {v2, v6, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 703
    .local v0, "confirmationLaunched":Z
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 707
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/OtherSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    iput-object v8, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 745
    .end local v0    # "confirmationLaunched":Z
    .end local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_0
    :goto_1
    return v7

    .line 708
    .restart local v0    # "confirmationLaunched":Z
    .restart local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 713
    .end local v0    # "confirmationLaunched":Z
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 715
    invoke-direct {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->StartPassword()V

    goto :goto_1

    .line 717
    :cond_2
    const-string/jumbo v5, "smartCardConfig"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 719
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 720
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.sec.smartcard.pinservice.action.SMARTCARDCREDENTIALSETTINGSPAGE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 722
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 723
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 726
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string/jumbo v5, "sim_lock_settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 727
    iget-boolean v5, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isClicked:Z

    if-nez v5, :cond_0

    .line 728
    iput-boolean v7, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->isClicked:Z

    .line 729
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 731
    :cond_4
    const-string/jumbo v5, "credentials_install"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 732
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10020f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_INSTALLFORMDEVICESTORAGE:I

    .line 733
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_INSTALLFORMDEVICESTORAGE:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 734
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 735
    :cond_5
    const-string/jumbo v5, "credentials_reset"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 736
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100210

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_CLEARCREDENTIALS:I

    .line 737
    invoke-virtual {p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/OtherSecuritySettings;->SETTINGS_SECURITY_CLEARCREDENTIALS:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 738
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 743
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5
.end method

.method public onResume()V
    .locals 17

    .prologue
    .line 586
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 587
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->isClicked:Z

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->semGetAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v2, 0x0

    .line 595
    .local v2, "blockUnsignedAppInstall":Z
    :goto_0
    if-nez v2, :cond_0

    .line 596
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 598
    .local v1, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v13, ""

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v2, 0x0

    .line 601
    .end local v1    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "blockUnsignedAppInstall":Z
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 603
    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    const-string/jumbo v13, "false"

    const/4 v14, 0x0

    aput-object v13, v11, v14

    .line 604
    .local v11, "selectionArg":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 605
    const-string/jumbo v15, "isScreenPinningAllowedAsUser"

    .line 604
    invoke-static {v13, v14, v15, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 606
    .local v7, "isScreenPinningAllowed":I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_1

    .line 607
    if-nez v7, :cond_c

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 609
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 615
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v13, :cond_3

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v13}, Landroid/security/KeyStore;->isEmptyForSystemCredential()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v14, v13}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 624
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v13, "content://com.sec.knox.provider/CertificatePolicy"

    const-string/jumbo v14, "isUserRemoveCertificatesAllowed"

    invoke-static {v3, v13, v14}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 625
    .local v9, "isUserRemoveCertificatesAllowed":I
    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/String;

    const-string/jumbo v13, "false"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 626
    .local v12, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v13, "content://com.sec.knox.provider2/vpnPolicy"

    const-string/jumbo v14, "isUserChangeProfilesAllowed"

    invoke-static {v3, v13, v14, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 628
    .local v8, "isUserChangeProfilesAllowed":I
    if-eqz v9, :cond_2

    if-nez v8, :cond_3

    .line 629
    :cond_2
    const-string/jumbo v13, "OtherSecuritySettings"

    const-string/jumbo v14, "onResume() UserChange(or Remove) has disallowed by IT admin."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mResetCredentials:Lcom/samsung/android/settingslib/RestrictedPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 636
    .end local v3    # "context":Landroid/content/Context;
    .end local v8    # "isUserChangeProfilesAllowed":I
    .end local v9    # "isUserRemoveCertificatesAllowed":I
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 637
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string/jumbo v13, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 640
    const-string/jumbo v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 643
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->updateSIMLockEnable()V

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 655
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_6

    .line 656
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 657
    const-string/jumbo v15, "show_password"

    const/16 v16, 0x1

    .line 656
    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 661
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v15, "isPasswordVisibilityEnabled"

    invoke-static {v13, v14, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 662
    .local v5, "isPasswordVisibilityEnabled":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_7

    .line 663
    if-nez v5, :cond_7

    .line 664
    const-string/jumbo v13, "OtherSecuritySettings"

    const-string/jumbo v14, "onResume() showPassword has disabled because IT admin blocked."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 666
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 671
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    .line 672
    .local v10, "mUserManager":Landroid/os/UserManager;
    const-string/jumbo v13, "no_adjust_volume"

    invoke-virtual {v10, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    .line 673
    .local v6, "isRestricted":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    if-eqz v13, :cond_8

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mZenAccess:Landroid/preference/Preference;

    if-eqz v6, :cond_f

    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v14, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 678
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->buildPreferenceForCOM()V

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v16, "OtherSecuritySettings"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 585
    return-void

    .line 593
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "isPasswordVisibilityEnabled":I
    .end local v6    # "isRestricted":Z
    .end local v7    # "isScreenPinningAllowed":I
    .end local v10    # "mUserManager":Landroid/os/UserManager;
    .end local v11    # "selectionArg":[Ljava/lang/String;
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 599
    .restart local v1    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "blockUnsignedAppInstall":Z
    :cond_a
    const/4 v2, 0x1

    .local v2, "blockUnsignedAppInstall":Z
    goto/16 :goto_1

    .line 601
    .end local v1    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "blockUnsignedAppInstall":Z
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 611
    .restart local v7    # "isScreenPinningAllowed":I
    .restart local v11    # "selectionArg":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/OtherSecuritySettings;->mScreenPinningPref:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 617
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 656
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 674
    .restart local v5    # "isPasswordVisibilityEnabled":I
    .restart local v6    # "isRestricted":Z
    .restart local v10    # "mUserManager":Landroid/os/UserManager;
    :cond_f
    const/4 v13, 0x1

    goto :goto_6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 578
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 579
    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 580
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/samsung/android/settings/OtherSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 577
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
    .line 765
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 766
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.Password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const-string/jumbo v2, ".title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const-string/jumbo v2, ".subject"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string/jumbo v2, ".password"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string/jumbo v2, ".from"

    const-string/jumbo v3, "FromOtherSecurity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    invoke-virtual {p0, v1, p4}, Lcom/samsung/android/settings/OtherSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .end local v1    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
