.class public Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DirectionLockSplashActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;,
        Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;,
        Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;
    }
.end annotation


# static fields
.field private static mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;


# instance fields
.field _preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFeedback:Landroid/preference/PreferenceCategory;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSetBeep:Landroid/preference/SwitchPreference;

.field private mSetFingerprint:Landroid/preference/SwitchPreference;

.field private mSetIris:Landroid/preference/SwitchPreference;

.field private mSetLockScreen:Landroid/preference/Preference;

.field private mSetVibration:Landroid/preference/SwitchPreference;

.field private mSetVisibility:Landroid/preference/SwitchPreference;

.field private mSetVoice:Landroid/preference/SwitchPreference;

.field private mShowDescription:Landroid/preference/Preference;

.field mSwitchStateObserver:Landroid/database/ContentObserver;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method static synthetic -get0()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 186
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 265
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    .line 514
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 42
    return-void
.end method

.method private initPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x6

    .line 119
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    .line 120
    const-string/jumbo v0, "lock_screen_visible"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    .line 121
    const-string/jumbo v0, "lock_screen_vibration"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    .line 122
    const-string/jumbo v0, "lock_screen_beep"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    .line 123
    const-string/jumbo v0, "lock_screen_voice"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    .line 124
    const-string/jumbo v0, "lock_screen_fingerprint"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/preference/SwitchPreference;

    .line 125
    const-string/jumbo v0, "lock_screen_iris"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/preference/SwitchPreference;

    .line 126
    const-string/jumbo v0, "descriptionText"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mShowDescription:Landroid/preference/Preference;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mShowDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 130
    const v2, 0x7f0b028c

    .line 129
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    :goto_0
    const-string/jumbo v0, "lock_screen_options_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mFeedback:Landroid/preference/PreferenceCategory;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mFeedback:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b027a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 143
    const v3, 0x7f0b0291

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mShowDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 133
    const v2, 0x7f0b0288

    .line 132
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mShowDescription:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 138
    const v2, 0x7f0b028b

    .line 137
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isVibrationSupport()Z
    .locals 3

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 444
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const/4 v1, 0x1

    return v1

    .line 445
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private removeVibrationPreference()V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->_preferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100293

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method loadSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->toggleSettings()V

    .line 318
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    const-string/jumbo v4, "universal_lock_visible"

    .line 318
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 320
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 321
    const-string/jumbo v4, "universal_lock_vibration"

    .line 320
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 322
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 323
    const-string/jumbo v4, "universal_lock_beep"

    .line 322
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 325
    const-string/jumbo v4, "universal_lock_voice"

    .line 324
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isFingerPrintSwitchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isIrisSwitchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 312
    return-void

    :cond_0
    move v0, v2

    .line 318
    goto :goto_0

    :cond_1
    move v0, v2

    .line 320
    goto :goto_1

    :cond_2
    move v0, v2

    .line 322
    goto :goto_2

    :cond_3
    move v1, v2

    .line 324
    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 355
    const-string/jumbo v0, "DirectionLockSplashActivity"

    const-string/jumbo v1, "onActivityCreated :"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$4;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 353
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 342
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->addPreferencesFromResource(I)V

    .line 344
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 345
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->initPreferences()V

    .line 349
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 339
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 501
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 502
    const-string/jumbo v0, "DirectionLockSplashActivity"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 504
    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 500
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 487
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 490
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 495
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 492
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->finish()V

    .line 493
    const/4 v1, 0x1

    return v1

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DirectionLock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 387
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 384
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 102
    const v3, 0x7f0b1101

    .line 103
    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 104
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 399
    const-string/jumbo v0, "DirectionLockSplashActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->removeVibrationPreference()V

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_vibration"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->setSummary()V

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->loadSettings()V

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->setListeners()V

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "universal_lock_switch_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    .line 435
    const/4 v3, 0x1

    .line 434
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DirectionLock"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 179
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    .line 180
    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 176
    return-void
.end method

.method public setSummary()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getLockTypeSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetLockScreen:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 456
    return-void
.end method

.method public toggleSettings()V
    .locals 4

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 284
    const-string/jumbo v2, "universal_lock_switch_state"

    const/4 v3, 0x0

    .line 283
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 284
    const/4 v2, 0x1

    .line 283
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 285
    .local v0, "switchState":Z
    :goto_0
    const-string/jumbo v1, "DirectionLockSplashActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 288
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 290
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 280
    return-void

    .line 283
    .end local v0    # "switchState":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "switchState":Z
    goto :goto_0
.end method
