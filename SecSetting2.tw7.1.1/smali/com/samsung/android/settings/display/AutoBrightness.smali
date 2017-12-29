.class public Lcom/samsung/android/settings/display/AutoBrightness;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AutoBrightness.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/AutoBrightness$1;,
        Lcom/samsung/android/settings/display/AutoBrightness$2;,
        Lcom/samsung/android/settings/display/AutoBrightness$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoBrightnessDesc:Lcom/samsung/android/settings/UnclickablePreference;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResetPattern:Landroid/preference/Preference;

.field private mResetPatternDialog:Landroid/app/AlertDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPattern:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/samsung/android/settings/display/AutoBrightness$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/AutoBrightness$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/AutoBrightness;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPatternDialog:Landroid/app/AlertDialog;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mPowerManager:Landroid/os/PowerManager;

    .line 79
    new-instance v0, Lcom/samsung/android/settings/display/AutoBrightness$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/AutoBrightness$1;-><init>(Lcom/samsung/android/settings/display/AutoBrightness;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 269
    new-instance v0, Lcom/samsung/android/settings/display/AutoBrightness$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/AutoBrightness$3;-><init>(Lcom/samsung/android/settings/display/AutoBrightness;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 54
    return-void
.end method

.method private showResetPatternDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v3, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPatternDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPatternDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    return-void

    .line 207
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPatternDialog:Landroid/app/AlertDialog;

    .line 208
    new-instance v0, Lcom/samsung/android/settings/display/AutoBrightness$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/AutoBrightness$4;-><init>(Lcom/samsung/android/settings/display/AutoBrightness;)V

    .line 214
    .local v0, "canceClicklListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/samsung/android/settings/display/AutoBrightness$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/AutoBrightness$5;-><init>(Lcom/samsung/android/settings/display/AutoBrightness;)V

    .line 220
    .local v2, "resetClickListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/samsung/android/settings/display/AutoBrightness$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/AutoBrightness$6;-><init>(Lcom/samsung/android/settings/display/AutoBrightness;)V

    .line 226
    .local v1, "cancelDlgListner":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 227
    const v4, 0x7f0b0655

    .line 226
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 228
    const v4, 0x7f0b0656

    .line 226
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 229
    const v4, 0x7f0b1865

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/AutoBrightness;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 230
    const v4, 0x7f0b050d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/AutoBrightness;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPatternDialog:Landroid/app/AlertDialog;

    .line 233
    iget-object v3, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPatternDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 154
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 156
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string/jumbo v0, "AutoBrightnessSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mContext:Landroid/content/Context;

    .line 101
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/AutoBrightness;->addPreferencesFromResource(I)V

    .line 102
    const-string/jumbo v0, "autobrightness_description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/AutoBrightness;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mAutoBrightnessDesc:Lcom/samsung/android/settings/UnclickablePreference;

    .line 103
    const-string/jumbo v0, "reset_usage_pattern"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/AutoBrightness;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPattern:Landroid/preference/Preference;

    .line 104
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS"

    const/4 v2, 0x2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    const/4 v1, 0x3

    .line 104
    if-ge v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mAutoBrightnessDesc:Lcom/samsung/android/settings/UnclickablePreference;

    const v1, 0x7f0b0652

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setSummary(I)V

    .line 107
    const-string/jumbo v0, "reset_usage_pattern"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/AutoBrightness;->removePreference(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "power"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mPowerManager:Landroid/os/PowerManager;

    .line 113
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 97
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 147
    const-string/jumbo v0, "AutoBrightnessSettings"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DisplayBrightnessAutoOn"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPattern:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->showResetPatternDialog()V

    .line 242
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 119
    const-string/jumbo v1, "AutoBrightnessSettings"

    const-string/jumbo v4, "onResume"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "brightnessMode":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 123
    iget-object v4, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 126
    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 127
    iget-object v5, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 125
    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mResetPattern:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DisplayBrightnessAutoOn"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 117
    return-void

    :cond_0
    move v1, v3

    .line 122
    goto :goto_0

    :cond_1
    move v1, v2

    .line 123
    goto :goto_1

    :cond_2
    move v3, v2

    .line 128
    goto :goto_2
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 13
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v12, 0x64

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 161
    const-string/jumbo v10, "AutoBrightnessSettings"

    const-string/jumbo v11, "preference mAutoBrightnessPreference"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 163
    .local v1, "auto":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 164
    if-nez v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 166
    const-string/jumbo v11, "brightness_user_touch"

    .line 165
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 167
    .local v2, "brightnessUserTouch":I
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 168
    if-eq v2, v8, :cond_3

    .line 169
    const/16 v6, 0x27

    .line 170
    .local v6, "lDefaultNttHomeBrightness":I
    iget-object v10, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I

    move-result-object v5

    .line 172
    .local v5, "homeBrightnessList":[I
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.nttdocomo.android.dhome"

    .line 173
    const-string/jumbo v11, "com.nttdocomo.android.dhome.HomeActivity"

    .line 172
    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v0, "DcmLauncher":Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v4, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/samsung/android/settings/display/AutoBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 178
    .local v3, "currentDefaultHome":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    array-length v10, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 179
    aget v6, v5, v8

    .line 182
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 184
    const-string/jumbo v11, "screen_brightness"

    .line 183
    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    .end local v0    # "DcmLauncher":Landroid/content/ComponentName;
    .end local v2    # "brightnessUserTouch":I
    .end local v3    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v4    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "homeBrightnessList":[I
    .end local v6    # "lDefaultNttHomeBrightness":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "screen_brightness_mode"

    .line 201
    if-eqz v1, :cond_4

    .line 200
    :goto_1
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    return-void

    .line 187
    .restart local v0    # "DcmLauncher":Landroid/content/ComponentName;
    .restart local v2    # "brightnessUserTouch":I
    .restart local v3    # "currentDefaultHome":Landroid/content/ComponentName;
    .restart local v4    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "homeBrightnessList":[I
    .restart local v6    # "lDefaultNttHomeBrightness":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "brightness_pms_marker_screen"

    .line 186
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 189
    .local v7, "pmsBrightness":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 190
    const-string/jumbo v11, "screen_brightness"

    .line 189
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 193
    .end local v0    # "DcmLauncher":Landroid/content/ComponentName;
    .end local v3    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v4    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "homeBrightnessList":[I
    .end local v6    # "lDefaultNttHomeBrightness":I
    .end local v7    # "pmsBrightness":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 194
    const-string/jumbo v11, "brightness_pms_marker_screen"

    .line 193
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 195
    .restart local v7    # "pmsBrightness":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AutoBrightness;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 196
    const-string/jumbo v11, "screen_brightness"

    .line 195
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v2    # "brightnessUserTouch":I
    .end local v7    # "pmsBrightness":I
    :cond_4
    move v8, v9

    .line 201
    goto :goto_1
.end method
