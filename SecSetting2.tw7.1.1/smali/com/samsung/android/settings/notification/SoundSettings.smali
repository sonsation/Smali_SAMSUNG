.class public Lcom/samsung/android/settings/notification/SoundSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundSettings$10;,
        Lcom/samsung/android/settings/notification/SoundSettings$11;,
        Lcom/samsung/android/settings/notification/SoundSettings$12;,
        Lcom/samsung/android/settings/notification/SoundSettings$13;,
        Lcom/samsung/android/settings/notification/SoundSettings$14;,
        Lcom/samsung/android/settings/notification/SoundSettings$15;,
        Lcom/samsung/android/settings/notification/SoundSettings$1;,
        Lcom/samsung/android/settings/notification/SoundSettings$2;,
        Lcom/samsung/android/settings/notification/SoundSettings$3;,
        Lcom/samsung/android/settings/notification/SoundSettings$4;,
        Lcom/samsung/android/settings/notification/SoundSettings$5;,
        Lcom/samsung/android/settings/notification/SoundSettings$6;,
        Lcom/samsung/android/settings/notification/SoundSettings$7;,
        Lcom/samsung/android/settings/notification/SoundSettings$8;,
        Lcom/samsung/android/settings/notification/SoundSettings$9;,
        Lcom/samsung/android/settings/notification/SoundSettings$H;,
        Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;,
        Lcom/samsung/android/settings/notification/SoundSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DEFAULT_VOLUME:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PSEUDO_DUAL_SPEAKER_ENABLED:Z

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static hasMessagePackage:Ljava/lang/Boolean;

.field private static isWifiOnly:Ljava/lang/Boolean;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mMessagePackageName:Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultVolumeControl:Landroid/preference/SwitchPreference;

.field private mDeviceVibration:Landroid/preference/PreferenceScreen;

.field private mDialKeypadTone:Landroid/preference/SwitchPreference;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

.field private mFeelring:Landroid/preference/Preference;

.field private final mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

.field private mIntervalSoundMode:Landroid/preference/PreferenceScreen;

.field private mIsEmerMode:Z

.field private mKeyboardSound:Landroid/preference/SwitchPreference;

.field private mKeyboardVibration:Landroid/preference/SwitchPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mPhoneRingtone2Preference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mRingtoyou:Landroid/preference/Preference;

.field private mScreenLockSound:Landroid/preference/SwitchPreference;

.field private mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private final mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

.field private mSoundEffects:Landroid/preference/PreferenceScreen;

.field private mStereoSound:Landroid/preference/SwitchPreference;

.field private mSubNtofications:Landroid/preference/PreferenceScreen;

.field private mTcoloring:Landroid/preference/Preference;

.field private mTouchSounds:Landroid/preference/SwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/preference/SwitchPreference;

.field private mVibrationOnTouch:Landroid/preference/SwitchPreference;

.field private mVoiceCapable:Z

.field private mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private offset:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/notification/SoundSettings;->PSEUDO_DUAL_SPEAKER_ENABLED:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get14()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mMessagePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->hasMessagePackage:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/media/SemSoundAssistantManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->isWifiOnly:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get4()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/notification/SoundSettings;->hasMessagePackage:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic -set1(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/notification/SoundSettings;->isWifiOnly:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic -set2(Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic -set3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/notification/SoundSettings;->mMessagePackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshDNDmode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshSoundMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->startRingtoneSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 173
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_PSEUDO_DUAL_SPEAKER"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/notification/SoundSettings;->PSEUDO_DUAL_SPEAKER_ENABLED:Z

    .line 196
    new-array v0, v1, [Ljava/lang/String;

    .line 197
    const-string/jumbo v2, "zen_mode"

    aput-object v2, v0, v4

    .line 198
    const-string/jumbo v2, "zen_mode_dnd"

    aput-object v2, v0, v9

    .line 196
    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$1;

    .line 260
    const-string/jumbo v2, "volume_key_control"

    const-string/jumbo v3, "adjust_media_volume_only"

    .line 259
    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/notification/SoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DEFAULT_VOLUME:Lcom/android/settings/notification/SettingPref;

    .line 267
    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$2;

    .line 268
    const-string/jumbo v7, "dial_pad_tones"

    const-string/jumbo v8, "dtmf_tone"

    .line 267
    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    .line 281
    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$3;

    .line 282
    const-string/jumbo v7, "screen_locking_sounds"

    const-string/jumbo v8, "lockscreen_sounds_enabled"

    .line 281
    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 291
    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$4;

    .line 292
    const-string/jumbo v7, "gps_notification_sounds"

    const-string/jumbo v8, "gps_noti_sound_enabled"

    .line 291
    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 303
    new-instance v8, Lcom/samsung/android/settings/notification/SoundSettings$5;

    .line 304
    const-string/jumbo v10, "charging_sounds"

    const-string/jumbo v11, "charging_sounds_enabled"

    .line 303
    new-array v13, v4, [I

    move v12, v9

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/notification/SoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 312
    new-instance v8, Lcom/samsung/android/settings/notification/SoundSettings$6;

    .line 313
    const-string/jumbo v10, "docking_sounds"

    const-string/jumbo v11, "dock_sounds_enabled"

    .line 312
    new-array v13, v4, [I

    move v12, v9

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/notification/SoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 320
    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$7;

    .line 321
    const-string/jumbo v7, "touch_sounds"

    const-string/jumbo v8, "sound_effects_enabled"

    .line 320
    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 339
    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$8;

    .line 340
    const-string/jumbo v7, "keyboard_sound"

    const-string/jumbo v8, "sip_key_feedback_sound"

    .line 339
    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$8;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    .line 347
    new-instance v8, Lcom/samsung/android/settings/notification/SoundSettings$9;

    .line 348
    const-string/jumbo v10, "dock_audio_media"

    const-string/jumbo v11, "dock_audio_media_enabled"

    .line 347
    filled-new-array {v4, v9}, [I

    move-result-object v13

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/notification/SoundSettings$9;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    .line 368
    new-instance v8, Lcom/samsung/android/settings/notification/SoundSettings$10;

    .line 369
    const-string/jumbo v10, "emergency_tone"

    const-string/jumbo v11, "emergency_tone"

    .line 368
    filled-new-array {v9, v1, v4}, [I

    move-result-object v13

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/notification/SoundSettings$10;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    .line 392
    new-instance v5, Lcom/samsung/android/settings/notification/SoundSettings$11;

    .line 393
    const-string/jumbo v7, "folder_sounds"

    const-string/jumbo v8, "folder_sounds_enabled"

    .line 392
    new-array v10, v4, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/notification/SoundSettings$11;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 400
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    .line 401
    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    .line 402
    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    .line 403
    sget-object v2, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    .line 404
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 406
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 408
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 409
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 410
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 411
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 412
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 413
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->PREF_DEFAULT_VOLUME:Lcom/android/settings/notification/SettingPref;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 400
    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 1202
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$13;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$13;-><init>()V

    .line 1201
    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 1648
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$14;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$14;-><init>()V

    .line 1647
    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 223
    iput v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDirect:I

    .line 224
    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 246
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    .line 252
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings$H;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;Lcom/samsung/android/settings/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mHandler:Lcom/samsung/android/settings/notification/SoundSettings$H;

    .line 256
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    .line 907
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$12;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 1657
    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/SoundSettings$15;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 134
    return-void
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 1489
    const-string/jumbo v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 1490
    const-string/jumbo v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside canSetRingtone ringtone uri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Inside cansetringtone ringtone uri not null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1493
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1497
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1498
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const/4 v4, 0x2

    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    .line 1500
    .local v2, "rightSts":I
    if-eqz v2, :cond_0

    .line 1501
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    return v7

    .line 1505
    .end local v2    # "rightSts":I
    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 1506
    .local v3, "rtTemp":Landroid/media/Ringtone;
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    if-nez v3, :cond_1

    .line 1508
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "returning false because rtTemp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "getRingtone() null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    return v7

    .line 1512
    .end local v3    # "rtTemp":Landroid/media/Ringtone;
    :catch_0
    move-exception v1

    .line 1513
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1517
    :cond_2
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 1120
    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1119
    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1122
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    return-object v2
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 889
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private initRingtones()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 895
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 896
    const-string/jumbo v0, "ringtone2"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    .line 897
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    const-string/jumbo v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 899
    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1604
    const-string/jumbo v4, "connectivity"

    .line 1603
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1606
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 1607
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1609
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1611
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1613
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1614
    return v5

    .line 1615
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1616
    return v5

    .line 1617
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1618
    return v5

    .line 1621
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_2
    return v6
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 903
    return-void
.end method

.method private refreshDNDmode()V
    .locals 9

    .prologue
    const v4, 0x7f0b1d08

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1086
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "zen_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    .line 1089
    .local v3, "mSummary":I
    :goto_0
    if-eq v3, v4, :cond_2

    .line 1090
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 1091
    .local v1, "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    .line 1092
    .local v2, "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1093
    const-string/jumbo v7, "twschedule"

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1094
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1098
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1099
    const v3, 0x7f0b0c11

    .line 1101
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v4, :cond_2

    .line 1102
    const v3, 0x7f0b0c06

    .line 1105
    .end local v0    # "i":I
    .end local v1    # "mConfig":Landroid/service/notification/ZenModeConfig;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v4, :cond_3

    .line 1106
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1107
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1108
    const-string/jumbo v8, "zen_mode"

    .line 1107
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 1112
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    .line 1113
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1114
    const-string/jumbo v8, "zen_mode"

    .line 1113
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1085
    :cond_3
    return-void

    .line 1088
    .end local v3    # "mSummary":I
    :cond_4
    const v3, 0x7f0b1d09

    goto :goto_0

    .line 1092
    .restart local v0    # "i":I
    .restart local v1    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .restart local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v3    # "mSummary":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_6
    move v4, v6

    .line 1107
    goto :goto_2

    .line 1110
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_3

    :cond_8
    move v5, v6

    .line 1113
    goto :goto_4
.end method

.method private refreshSoundMode()V
    .locals 8

    .prologue
    const v7, 0x7f0b161d

    const v6, 0x7f0b0c3b

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1057
    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 1058
    .local v0, "ringerMode":I
    if-ne v5, v0, :cond_1

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1063
    :goto_0
    const-string/jumbo v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshSoundMode : ringerMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1067
    if-nez v0, :cond_2

    .line 1068
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1056
    :cond_0
    :goto_1
    return-void

    .line 1061
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1069
    :cond_2
    if-ne v0, v4, :cond_3

    .line 1070
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b0c3a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 1071
    :cond_3
    if-ne v0, v5, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 1075
    :cond_4
    if-eqz v0, :cond_5

    if-ne v0, v4, :cond_6

    .line 1077
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 1079
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    new-instance v1, Lcom/samsung/android/settings/notification/SoundSettings$22;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SoundSettings$22;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1145
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1133
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseListeners()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1152
    iput-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1149
    :cond_0
    return-void
.end method

.method private startRingtoneSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 685
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 686
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string/jumbo v6, "sound title"

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 688
    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "simState1":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, "simState2":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "cardStatus2":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 693
    const-string/jumbo v6, "sound title"

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    .line 684
    return-void

    .line 695
    :cond_0
    const-string/jumbo v6, "3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "3"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 696
    :cond_1
    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 695
    if-eqz v6, :cond_3

    .line 697
    :cond_2
    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 701
    :cond_3
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 700
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 702
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 703
    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v7, v6, :cond_4

    .line 704
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "phone2_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 705
    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 707
    :cond_4
    const-string/jumbo v6, "sim Id"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p1, "originalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 1523
    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1525
    .local v3, "filePath":Ljava/lang/String;
    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1527
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1528
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1529
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 1530
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1535
    .end local v0    # "dotPos":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1536
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1537
    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const-string/jumbo v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1539
    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    return-object v12

    .line 1545
    :cond_1
    if-nez v4, :cond_2

    .line 1546
    const-string/jumbo v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1545
    if-eqz v9, :cond_2

    .line 1547
    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v5, "newSoundFile":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1571
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    const-string/jumbo v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    const-string/jumbo v9, "mime_type"

    const-string/jumbo v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const-string/jumbo v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1576
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1577
    .local v7, "tempUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1578
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1579
    .local v6, "newUri":Landroid/net/Uri;
    const-string/jumbo v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return-object v6

    .line 1549
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "newSoundFile":Ljava/io/File;
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v7    # "tempUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1550
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SoundSettings"

    const-string/jumbo v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1551
    return-object v12
.end method

.method private updateRingtoneData(I)V
    .locals 1
    .param p1, "ringtoneType"    # I

    .prologue
    .line 1585
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1587
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1590
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1591
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 935
    if-nez p0, :cond_0

    .line 936
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-object v3

    .line 939
    :cond_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 940
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10403ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 942
    .local v9, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 943
    const v0, 0x10403ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 973
    :cond_1
    :goto_0
    return-object v9

    .line 945
    :cond_2
    const/4 v6, 0x0

    .line 947
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 949
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 950
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 949
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 958
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 959
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 960
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 968
    :cond_4
    if-eqz v6, :cond_1

    .line 969
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 951
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_1
    const-string/jumbo v0, "settings"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 953
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 954
    :cond_6
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 955
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 956
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 955
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 965
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 968
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_1

    .line 969
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 963
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 968
    .local v8, "sqle":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_1

    .line 969
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 967
    .end local v8    # "sqle":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 968
    if-eqz v6, :cond_7

    .line 969
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 967
    :cond_7
    throw v0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 978
    const v0, 0x7f0b1bcd

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 418
    const/16 v0, 0x150

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    const v6, 0x7f0b0c44

    const/4 v5, 0x0

    .line 1434
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1435
    :cond_0
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_1
    :goto_0
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/SoundSettings;->updateRingtoneData(I)V

    .line 1433
    return-void

    .line 1437
    :cond_2
    const-string/jumbo v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1438
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "Inside cansetringtone false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1440
    return-void

    .line 1444
    :cond_3
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1446
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.vcast.mediamanager.fileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1447
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 1453
    :cond_4
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1455
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SoundSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1457
    if-nez p1, :cond_5

    .line 1458
    const-string/jumbo v2, "SoundSettings"

    const-string/jumbo v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1460
    return-void

    .line 1464
    :cond_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1465
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "is_ringtone"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1468
    const-string/jumbo v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1476
    const/16 v2, 0x80

    if-ne p2, v2, :cond_6

    .line 1477
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1470
    :catch_0
    move-exception v0

    .line 1472
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1479
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time"

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 776
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 777
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b161d

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setTitle(I)V

    .line 787
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    .line 788
    :goto_1
    const/4 v0, 0x0

    .line 790
    .local v0, "countOfLink":I
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 791
    new-instance v6, Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    .line 793
    .local v6, "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 794
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 795
    .local v4, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v7, 0x7f0b0299

    iput v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 797
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 798
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.android.phone"

    const-string/jumbo v8, "com.android.phone.callsettings.AnsweringCall"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string/jumbo v7, "FROM_ACCESSIBILITY"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 803
    const/4 v0, 0x1

    .line 804
    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 807
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "pick_up_switch"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v3, :cond_8

    .line 818
    :cond_1
    :goto_2
    if-lez v0, :cond_2

    .line 819
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 823
    .end local v6    # "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    :cond_2
    if-eqz v3, :cond_3

    .line 824
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 825
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 828
    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 775
    return-void

    .line 779
    .end local v0    # "countOfLink":I
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 780
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    .line 779
    if-eqz v7, :cond_6

    .line 781
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0564

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 783
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0bcc

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    .line 787
    :cond_7
    const/4 v3, 0x0

    .local v3, "isDeskTopMode":Z
    goto/16 :goto_1

    .line 808
    .end local v3    # "isDeskTopMode":Z
    .restart local v0    # "countOfLink":I
    .restart local v6    # "relativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    :cond_8
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 809
    .local v5, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const v7, 0x7f0b0b31

    iput v7, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 810
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 811
    .local v2, "intent2":Landroid/content/Intent;
    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "com.android.settings.Settings$UsefulFeatureActivity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string/jumbo v7, "type"

    const-string/jumbo v8, "pick_up_switch"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 815
    add-int/lit8 v0, v0, 0x1

    .line 816
    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 1364
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1365
    const-string/jumbo v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityResult: requestCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", resultCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    packed-switch p1, :pswitch_data_0

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1368
    :pswitch_0
    if-eq p2, v7, :cond_1

    return-void

    .line 1369
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1370
    .local v2, "pickedUri":Landroid/net/Uri;
    const-string/jumbo v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    .line 1376
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1380
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-eq p2, v7, :cond_2

    return-void

    .line 1381
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1382
    .restart local v2    # "pickedUri":Landroid/net/Uri;
    const-string/jumbo v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->offset:Ljava/lang/String;

    .line 1388
    const/16 v4, 0x80

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1392
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1393
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, "mRingtoneType":Ljava/lang/String;
    const-string/jumbo v4, "Tcoloring"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1396
    const-string/jumbo v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1397
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1398
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1399
    .end local v3    # "u":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v4, "Ringtoyou"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1400
    const-string/jumbo v4, "http://ringtoyou.kt.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1401
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1402
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1403
    .end local v3    # "u":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v4, "FeelRing"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1404
    const-string/jumbo v4, "http://www.musicbellring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1405
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1406
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1408
    .end local v3    # "u":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0b0bdf

    const v12, 0x7f0800b8

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 423
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    .line 426
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    .line 427
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mMessagePackageName:Ljava/lang/String;

    .line 428
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->isWifiOnly:Ljava/lang/Boolean;

    .line 429
    new-instance v8, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 431
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 434
    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/notification/SoundSettings;->addPreferencesFromResource(I)V

    .line 436
    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 438
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/samsung/android/settings/notification/SoundSettings;->mMessagePackageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->hasMessagePackage:Ljava/lang/Boolean;

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->initRingtones()V

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 443
    const-string/jumbo v8, "ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 444
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    .line 445
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 447
    :cond_0
    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    .line 448
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/DefaultRingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 449
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/samsung/android/settings/notification/SoundSettings;)V

    .line 450
    const-string/jumbo v8, "tcoloring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    .line 451
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, "mRingtoneType":Ljava/lang/String;
    const-string/jumbo v8, "Tcoloring"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 453
    const-string/jumbo v8, "tcoloring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 456
    :cond_1
    const-string/jumbo v8, "ringtoyou"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    .line 457
    const-string/jumbo v8, "Ringtoyou"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 458
    const-string/jumbo v8, "ringtoyou"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 461
    :cond_2
    const-string/jumbo v8, "feelring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    .line 462
    const-string/jumbo v8, "FeelRing"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 463
    const-string/jumbo v8, "feelring"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 467
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "download_contents":Ljava/lang/String;
    const-string/jumbo v8, "Ringtone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 469
    const-string/jumbo v8, "download_ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 472
    :cond_4
    const-string/jumbo v8, "emergency_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SecDropDownPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    .line 473
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    if-eqz v8, :cond_5

    .line 474
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmergencyTone:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v8, v11}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 477
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 486
    .local v0, "activity":Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->setHasOptionsMenu(Z)V

    .line 490
    sget-object v9, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_6

    aget-object v6, v9, v8

    .line 491
    .local v6, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v6, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 490
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 494
    .end local v6    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_6
    const-string/jumbo v8, "dial_pad_tones"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    .line 495
    const-string/jumbo v8, "screen_locking_sounds"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    .line 496
    const-string/jumbo v8, "touch_sounds"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    .line 497
    const-string/jumbo v8, "keyboard_sound"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    .line 500
    const-string/jumbo v8, "phone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    .line 501
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 502
    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    .line 503
    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    .line 504
    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    .line 505
    const-string/jumbo v8, "volume_key_control"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/preference/SwitchPreference;

    .line 507
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$16;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$16;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 518
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$17;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$17;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 529
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$18;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$18;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 548
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 549
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v8, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v8, v11, :cond_7

    .line 551
    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 554
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 555
    const-string/jumbo v8, "phone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 556
    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 557
    const-string/jumbo v8, "ringtone_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 561
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 562
    iput-boolean v11, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    .line 566
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 567
    const-string/jumbo v8, "ringtone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 568
    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 573
    :goto_2
    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 574
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v8, :cond_a

    .line 575
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    const v9, 0x7f0b0bb7

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 576
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$19;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$19;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 584
    :cond_a
    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 585
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mZenModeDND:Lcom/samsung/android/settings/SettingsSwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$20;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$20;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 600
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 609
    :cond_b
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 610
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 613
    :cond_c
    const-string/jumbo v8, "interval_sound_mode"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    .line 614
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIntervalSoundMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 616
    sget-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semIsMultiSoundSupported()Z

    move-result v8

    if-nez v8, :cond_d

    .line 617
    const-string/jumbo v8, "multi_sound"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 619
    :cond_d
    sget-boolean v8, Lcom/samsung/android/settings/notification/SoundSettings;->PSEUDO_DUAL_SPEAKER_ENABLED:Z

    if-eqz v8, :cond_18

    .line 620
    const-string/jumbo v8, "stereo_sound"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mStereoSound:Landroid/preference/SwitchPreference;

    .line 621
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mStereoSound:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/notification/SoundSettings$21;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/notification/SoundSettings$21;-><init>(Lcom/samsung/android/settings/notification/SoundSettings;)V

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 640
    :goto_4
    const-string/jumbo v8, "notifications_sub_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    .line 641
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-nez v8, :cond_e

    .line 642
    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.calendar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 641
    if-eqz v8, :cond_19

    .line 643
    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b0bde

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 644
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v8

    if-nez v8, :cond_f

    sget-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->hasMessagePackage:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f

    sget-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->isWifiOnly:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 645
    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b0be1

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 648
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 649
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 657
    :cond_11
    :goto_5
    const-string/jumbo v8, "sound_effect"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    .line 658
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_12

    .line 663
    :cond_12
    iget-boolean v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    if-eqz v8, :cond_1c

    .line 666
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "UPSM"

    invoke-static {v8, v12, v9}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 668
    .local v7, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_1b

    .line 669
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "list$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 670
    .local v3, "list":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6

    .line 542
    .end local v1    # "conf":Landroid/content/res/Configuration;
    .end local v3    # "list":Ljava/lang/String;
    .end local v4    # "list$iterator":Ljava/util/Iterator;
    .end local v7    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isCoinDcPMIC(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 543
    const-string/jumbo v8, "vibration_feedback_intensity"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 545
    :cond_14
    const-string/jumbo v8, "vibrate_on_touch"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 546
    const-string/jumbo v8, "keyboard_vibration"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 570
    .restart local v1    # "conf":Landroid/content/res/Configuration;
    :cond_15
    const-string/jumbo v8, "ringtone2"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 571
    const-string/jumbo v8, "ds_ring_tone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 601
    :cond_16
    const-string/jumbo v8, "dnd_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 603
    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    goto/16 :goto_3

    .line 605
    :cond_17
    const-string/jumbo v8, "zen_mode_dnd"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 633
    :cond_18
    const-string/jumbo v8, "stereo_sound"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 651
    :cond_19
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 652
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_5

    .line 653
    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 654
    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b0be0

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_5

    .line 674
    .restart local v7    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 675
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 681
    .end local v7    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    :goto_7
    new-instance v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 422
    return-void

    .line 676
    .restart local v7    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    const-string/jumbo v8, "vibrations"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1008
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1011
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mIsEmerMode:Z

    if-eqz v0, :cond_0

    .line 1012
    return-void

    .line 1007
    :cond_0
    return-void
.end method

.method public onMusicPickerChosen(I)Landroid/content/Intent;
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1417
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1418
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    const-string/jumbo v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1421
    const-string/jumbo v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1422
    const-string/jumbo v1, "DocumentsUIPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1423
    if-ne p1, v2, :cond_0

    .line 1424
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1425
    const-string/jumbo v1, "SoundSettings"

    const-string/jumbo v2, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE : 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :goto_0
    return-object v0

    .line 1427
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1428
    const-string/jumbo v1, "SoundSettings"

    const-string/jumbo v2, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE_2 : 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1019
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1027
    const/4 v1, 0x0

    return v1

    .line 1021
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "helphub:section"

    const-string/jumbo v2, "ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    .line 1024
    const/4 v1, 0x1

    return v1

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 763
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 767
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->releaseListeners()V

    .line 771
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoundsAndVibration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 762
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 833
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v4, :cond_2

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SoundSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 835
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "extra_prefs_show_button_bar"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 837
    const-string/jumbo v4, "extra_prefs_set_back_text"

    const v5, 0x7f0b1a80

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string/jumbo v4, "wifi_enable_next_on_connect"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 885
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 833
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    if-eq p2, v4, :cond_0

    .line 860
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_7

    .line 861
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "SRKS"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v4, :cond_4

    .line 845
    const-string/jumbo v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 846
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 848
    .end local v3    # "u":Landroid/net/Uri;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v4, :cond_5

    .line 849
    const-string/jumbo v4, "http://ringtoyou.kt.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 850
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 851
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 852
    .end local v3    # "u":Landroid/net/Uri;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mFeelring:Landroid/preference/Preference;

    if-ne p2, v4, :cond_6

    .line 853
    const-string/jumbo v4, "http://www.musicbellring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 854
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 855
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 857
    .end local v3    # "u":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v4, "SoundSettings"

    const-string/jumbo v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_8

    .line 864
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v4, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .local v0, "activityNotFound":Landroid/content/ActivityNotFoundException;
    goto :goto_0

    .line 877
    .end local v0    # "activityNotFound":Landroid/content/ActivityNotFoundException;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_9

    .line 878
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "SVKV"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 879
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_a

    .line 880
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0143

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 881
    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-ne p2, v4, :cond_1

    .line 882
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0142

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 716
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 717
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 719
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshSoundMode()V

    .line 720
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->refreshDNDmode()V

    .line 721
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->registerListeners()V

    .line 724
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mStereoSound:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 725
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mStereoSound:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "pseudo_stereo_sound_settings"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 728
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 729
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f0b161d

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 732
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 734
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "vibrate_when_ringing"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 735
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 736
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "haptic_feedback_enabled"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 737
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    .line 738
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "sip_key_feedback_vibration"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 739
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    .line 740
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-eqz v4, :cond_4

    .line 741
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDefaultVolumeControl:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result v4

    if-ne v4, v5, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 743
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->updateDeviceVibrationName()V

    .line 745
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v7, "no_adjust_volume"

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 746
    .local v0, "isRestricted":Z
    sget-object v8, Lcom/samsung/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_5
    if-ge v7, v9, :cond_c

    aget-object v1, v8, v7

    .line 747
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 748
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_5

    .line 749
    if-eqz v0, :cond_b

    move v4, v6

    :goto_6
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 746
    :cond_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_5

    .end local v0    # "isRestricted":Z
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_6
    move v4, v6

    .line 725
    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 734
    goto :goto_1

    :cond_8
    move v4, v6

    .line 736
    goto :goto_2

    :cond_9
    move v4, v6

    .line 738
    goto :goto_3

    :cond_a
    move v4, v6

    .line 741
    goto :goto_4

    .restart local v0    # "isRestricted":Z
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_b
    move v4, v5

    .line 749
    goto :goto_6

    .line 753
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_c
    sget-object v4, Lcom/samsung/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v5, v4

    :goto_7
    if-ge v6, v5, :cond_d

    aget-object v3, v4, v6

    .line 754
    .local v3, "pref":Lcom/android/settings/notification/SettingPref;
    iget-object v7, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 753
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 758
    .end local v3    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "SoundsAndVibration"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 715
    return-void
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "SoundSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1031
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1034
    .local v7, "temp":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1035
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1037
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1041
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1042
    return-void

    .line 1044
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1046
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1047
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1052
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1030
    :cond_3
    return-void
.end method
