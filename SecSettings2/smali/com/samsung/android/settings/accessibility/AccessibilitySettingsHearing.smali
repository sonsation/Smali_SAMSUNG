.class public Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$1;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$2;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$3;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$EmptyView;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

.field private mAllSoundOffDialog:Landroid/app/AlertDialog;

.field private mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

.field private mAudioCategory:Landroid/preference/PreferenceScreen;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mFlashNotification:Landroid/database/ContentObserver;

.field private mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

.field private mLightNotification:Landroid/preference/PreferenceScreen;

.field private mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

.field private mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

.field private final mTurnOffAllSound:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->supportAnsweringMachine()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;I)V
    .locals 0
    .param p1, "selectedOption"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->showConfirmDialog(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 646
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$3;-><init>()V

    .line 645
    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    .line 119
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$1;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    .line 126
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$2;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    .line 133
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCurConfig:Landroid/content/res/Configuration;

    .line 729
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$4;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 75
    return-void
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 696
    const-string/jumbo v1, "persist.omc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "country_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const-string/jumbo v1, "AccessibilitySettings_Hearing"

    const-string/jumbo v2, "country code is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 706
    :cond_1
    return-object v0
.end method

.method private getSalesCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 710
    const-string/jumbo v1, "persist.omc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    const-string/jumbo v1, "AccessibilitySettings_Hearing"

    const-string/jumbo v2, "sales code is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 720
    :cond_1
    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    const-string/jumbo v0, "audio_preference_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    .line 424
    const-string/jumbo v0, "sound_detector_plus_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 426
    const-string/jumbo v0, "flash_notification_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 429
    const-string/jumbo v0, "light_notification_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mLightNotification:Landroid/preference/PreferenceScreen;

    .line 431
    const-string/jumbo v0, "all_sound_off_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 434
    const-string/jumbo v0, "call_hearing_aid"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 437
    const-string/jumbo v0, "samsung_captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 438
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 441
    const-string/jumbo v0, "google_captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 445
    const-string/jumbo v0, "sound_balance"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    .line 447
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    const v3, 0x7f0b01ec

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    :cond_0
    const-string/jumbo v0, "mono_audio_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    .line 452
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 454
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.android.app.advsounddetector"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v0

    .line 457
    if-eqz v0, :cond_3

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v0

    if-nez v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mLightNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Setting_SupportHAC"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    .line 464
    if-nez v0, :cond_8

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 470
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.android.video"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_9

    .line 473
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_7
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    .line 483
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 484
    const-string/jumbo v4, "mono_audio_db"

    .line 483
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 485
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    const-string/jumbo v4, "all_sound_off"

    .line 485
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 487
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    const-string/jumbo v4, "flash_notification"

    .line 487
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 490
    const-string/jumbo v4, "hearing_aid"

    .line 489
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 419
    return-void

    .line 467
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 472
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 470
    if-eqz v0, :cond_6

    goto :goto_1

    :cond_a
    move v0, v2

    .line 483
    goto :goto_2

    :cond_b
    move v0, v2

    .line 485
    goto :goto_3

    :cond_c
    move v0, v2

    .line 487
    goto :goto_4

    :cond_d
    move v1, v2

    .line 489
    goto :goto_5
.end method

.method private showConfirmDialog(I)V
    .locals 5
    .param p1, "selectedOption"    # I

    .prologue
    const/4 v4, 0x0

    .line 611
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 612
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0255

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 614
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 620
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0438

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$11;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 628
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 610
    return-void

    .line 617
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private supportAnsweringMachine()Z
    .locals 2

    .prologue
    .line 639
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 640
    const-string/jumbo v1, "CscFeature_VoiceCall_SupportAutoAnsweringMemo"

    .line 639
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    const-string/jumbo v1, "TRUE"

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateDefaultPreferences()V
    .locals 8

    .prologue
    const v7, 0x7f0b1953

    const v6, 0x7f0b1952

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 175
    const-string/jumbo v5, "mono_audio_db"

    .line 174
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 176
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 177
    const-string/jumbo v5, "all_sound_off"

    .line 176
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 178
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 179
    const-string/jumbo v5, "flash_notification"

    .line 178
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 180
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 181
    const-string/jumbo v5, "hearing_aid"

    .line 180
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 185
    const-string/jumbo v4, "accessibility_captioning_enabled"

    .line 184
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 186
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 187
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 194
    :cond_0
    :goto_4
    const/4 v0, 0x1

    .line 195
    .local v0, "mSecCaptionStatus":I
    const-string/jumbo v1, "USA"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "CAN"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    const-string/jumbo v1, "XAR"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 195
    if-nez v1, :cond_1

    .line 196
    const-string/jumbo v1, "XAC"

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 195
    if-eqz v1, :cond_9

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 198
    const-string/jumbo v4, "accessibility_sec_captioning_enabled"

    .line 197
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 203
    :goto_5
    if-ne v0, v2, :cond_a

    .line 204
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 205
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 212
    :cond_2
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    .line 173
    :goto_7
    return-void

    .end local v0    # "mSecCaptionStatus":I
    :cond_4
    move v1, v3

    .line 174
    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 176
    goto/16 :goto_1

    :cond_6
    move v1, v3

    .line 178
    goto/16 :goto_2

    :cond_7
    move v1, v3

    .line 180
    goto/16 :goto_3

    .line 189
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 190
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 200
    .restart local v0    # "mSecCaptionStatus":I
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 201
    const-string/jumbo v4, "accessibility_sec_captioning_enabled"

    .line 200
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_5

    .line 207
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 208
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_6

    .line 215
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    goto :goto_7
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    return-void

    .line 139
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->addPreferencesFromResource(I)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->initializeAllPreferences()V

    .line 153
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 146
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "dialogId"    # I

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v10, :cond_0

    .line 497
    const/4 v10, 0x0

    return-object v10

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 500
    .local v7, "mSharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x1030132

    invoke-direct {v1, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 501
    .local v1, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {v1, v10}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 503
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0401e9

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 504
    .local v5, "layout_flash":Landroid/view/View;
    const v10, 0x7f110566

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 505
    .local v8, "mcheck_flash":Landroid/widget/CheckBox;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 507
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    sparse-switch p1, :sswitch_data_0

    .line 598
    const/4 v10, 0x0

    return-object v10

    .line 510
    :sswitch_0
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    const/4 v11, 0x0

    .line 510
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 514
    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$5;

    invoke-direct {v11, p0, v2, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$5;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    const v12, 0x7f0b1492

    .line 510
    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 526
    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$6;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$6;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    const/high16 v12, 0x1040000

    .line 510
    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 531
    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$7;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$7;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    .line 510
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 541
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 542
    .local v6, "mDialog":Landroid/app/Dialog;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 543
    return-object v6

    .line 546
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "mDialog":Landroid/app/Dialog;
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b0252

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 549
    .local v9, "message":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    aput-object v9, v12, v13

    const v13, 0x7f0b0254

    invoke-virtual {v11, v13, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 549
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 551
    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$8;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    const v12, 0x7f0b107b

    .line 549
    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 579
    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$9;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$9;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    const/high16 v12, 0x1040000

    .line 549
    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 585
    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$10;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing$10;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;)V

    .line 549
    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    .line 596
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    return-object v10

    .line 507
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0xd724a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->releaseMediaPlayer()V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Hearing"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 229
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 220
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 262
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 263
    .local v11, "value":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mMonoAudioCheckbox:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 264
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v7, "mono_intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "mono_audio_db"

    if-eqz v11, :cond_0

    const/4 v12, 0x1

    :goto_0
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    const-string/jumbo v13, "mono"

    if-eqz v11, :cond_1

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v13}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f10027e

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-eqz v11, :cond_2

    const/16 v12, 0x3e8

    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 269
    const-string/jumbo v12, "AccessibilitySettings_Hearing"

    const-string/jumbo v13, "Mono Audio broadcast"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v12, 0x1

    return v12

    .line 265
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 266
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 268
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 271
    .end local v7    # "mono_intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAllSoundOffCheckbox:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 272
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v12, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v4, "all_sound_off_intent":Landroid/content/Intent;
    if-eqz v11, :cond_6

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 275
    const/16 v12, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->showDialog(I)V

    .line 276
    const/4 v12, 0x0

    return v12

    .line 278
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "all_sound_off"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    const-string/jumbo v12, "mute"

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->supportAnsweringMachine()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "callsettings_answer_memo"

    const/4 v14, 0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 284
    .local v10, "selectedOption":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->showConfirmDialog(I)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "callsettings_answer_memo"

    const/4 v14, 0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    .end local v10    # "selectedOption":I
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v4, v13}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f10025e

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-eqz v11, :cond_9

    const/16 v12, 0x3e8

    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 301
    const-string/jumbo v12, "AccessibilitySettings_Hearing"

    const-string/jumbo v13, "All sound off broadcast"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v12, 0x1

    return v12

    .line 290
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "sound_detector"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_7

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "doorbell_detector"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 292
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0b0258

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 293
    const/4 v12, 0x0

    return v12

    .line 295
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "all_sound_off"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    const-string/jumbo v12, "mute"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 300
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 303
    .end local v4    # "all_sound_off_intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotificationCheckbox:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 304
    const/4 v9, 0x0

    .line 305
    .local v9, "notSupportMotionList":[Ljava/lang/String;
    const-string/jumbo v2, "merged_mute_or_pause_switch"

    .line 306
    .local v2, "KEY_MERGED_MUTE_PAUSE":Ljava/lang/String;
    const/4 v1, 0x1

    .line 309
    .local v1, "BOOL_MERGED_MUTE_PAUSE":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "Motion":Ljava/lang/String;
    const-string/jumbo v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, "notSupportMotionList":[Ljava/lang/String;
    const/4 v12, 0x0

    array-length v13, v9

    :goto_5
    if-ge v12, v13, :cond_b

    aget-object v8, v9, v12

    .line 314
    .local v8, "motion":Ljava/lang/String;
    const-string/jumbo v14, "merged_mute_or_pause_switch"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 315
    const/4 v1, 0x0

    .line 320
    .end local v8    # "motion":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string/jumbo v13, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 321
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string/jumbo v13, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 322
    :cond_c
    if-eqz v1, :cond_11

    .line 328
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 329
    .local v6, "isMotionEnabled":Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "master_motion"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_d

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "motion_overturn"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_14

    .line 332
    :cond_d
    :goto_6
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 334
    :cond_e
    if-eqz v11, :cond_15

    .line 335
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_f

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0b03fd

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f0b01ee

    invoke-virtual {v13, v15, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 339
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "motion_merged_mute_pause"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "motion_overturn"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "flash_notification"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "master_motion"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "com.android.settings"

    const-string/jumbo v14, "FLNO"

    invoke-static {v12, v13, v14}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10025a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const/16 v14, 0x3e8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 355
    .end local v6    # "isMotionEnabled":Ljava/lang/Boolean;
    :goto_7
    const/4 v12, 0x1

    return v12

    .line 313
    .restart local v8    # "motion":Ljava/lang/String;
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 323
    .end local v8    # "motion":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "flash_notification"

    if-eqz v11, :cond_12

    const/4 v12, 0x1

    :goto_8
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f10025a

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-eqz v11, :cond_13

    const/16 v12, 0x3e8

    :goto_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 325
    const/4 v12, 0x1

    return v12

    .line 323
    :cond_12
    const/4 v12, 0x0

    goto :goto_8

    .line 324
    :cond_13
    const/4 v12, 0x0

    goto :goto_9

    .line 331
    .restart local v6    # "isMotionEnabled":Ljava/lang/Boolean;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "motion_merged_mute_pause"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_e

    goto/16 :goto_6

    .line 347
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "flash_notification"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10025a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_7

    .line 351
    .end local v6    # "isMotionEnabled":Ljava/lang/Boolean;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "flash_notification"

    if-eqz v11, :cond_17

    const/4 v12, 0x1

    :goto_a
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f10025a

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-eqz v11, :cond_18

    const/16 v12, 0x3e8

    :goto_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 351
    :cond_17
    const/4 v12, 0x0

    goto :goto_a

    .line 352
    :cond_18
    const/4 v12, 0x0

    goto :goto_b

    .line 356
    .end local v1    # "BOOL_MERGED_MUTE_PAUSE":Z
    .end local v2    # "KEY_MERGED_MUTE_PAUSE":Ljava/lang/String;
    .end local v3    # "Motion":Ljava/lang/String;
    .end local v9    # "notSupportMotionList":[Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mToggleHearingAidPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 357
    if-eqz v11, :cond_1a

    const/4 v5, 0x1

    .line 358
    .local v5, "hac":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "hearing_aid"

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioManager:Landroid/media/AudioManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "HACSetting="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v5, :cond_1b

    const-string/jumbo v12, "ON"

    :goto_d
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f10025f

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-eqz v11, :cond_1c

    const/16 v12, 0x3e8

    :goto_e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 361
    const/4 v12, 0x1

    return v12

    .line 357
    .end local v5    # "hac":I
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "hac":I
    goto :goto_c

    .line 359
    :cond_1b
    const-string/jumbo v12, "OFF"

    goto :goto_d

    .line 360
    :cond_1c
    const/4 v12, 0x0

    goto :goto_e

    .line 362
    .end local v5    # "hac":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 363
    if-eqz v11, :cond_1f

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_captioning_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 366
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    if-nez v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v13, 0x7f0b1952

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 372
    :cond_1e
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f100263

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-eqz v11, :cond_20

    const/16 v12, 0x3e8

    :goto_10
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 373
    const/4 v12, 0x1

    return v12

    .line 368
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_captioning_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 370
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    if-nez v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v13, 0x7f0b1953

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_f

    .line 372
    :cond_20
    const/4 v12, 0x0

    goto :goto_10

    .line 374
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 375
    if-eqz v11, :cond_23

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_sec_captioning_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 378
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    if-nez v12, :cond_22

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v13, 0x7f0b1952

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 384
    :cond_22
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f100261

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-eqz v11, :cond_24

    const/16 v12, 0x3e8

    :goto_12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 385
    const/4 v12, 0x1

    return v12

    .line 380
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_sec_captioning_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 382
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v12

    if-nez v12, :cond_22

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v13, 0x7f0b1953

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_11

    .line 384
    :cond_24
    const/4 v12, 0x0

    goto :goto_12

    .line 387
    :cond_25
    const/4 v12, 0x0

    return v12
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSamsungCaptioningPreferenceScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v2, p2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.video.ACTION_START_CC_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 396
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.video"

    const-string/jumbo v4, "com.samsung.android.video.player.activity.SubtitleSetting"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 397
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->startActivity(Landroid/content/Intent;)V

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100260

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 400
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mSoundDetectorPlusPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceScreen;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.accessibility.SOUND_DETECTOR_PLUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .restart local v1    # "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 408
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->startActivity(Landroid/content/Intent;)V

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1389

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 410
    :catch_1
    move-exception v0

    .line 411
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->prepareMediaPlayer()V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->updateDefaultPreferences()V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    const-string/jumbo v1, "flash_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mFlashNotification:Landroid/database/ContentObserver;

    .line 164
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "all_sound_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mTurnOffAllSound:Landroid/database/ContentObserver;

    .line 166
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Hearing"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 254
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsHearing;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->releaseMediaPlayer()V

    .line 235
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 233
    return-void
.end method
