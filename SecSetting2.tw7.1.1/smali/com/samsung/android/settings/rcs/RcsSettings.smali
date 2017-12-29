.class public Lcom/samsung/android/settings/rcs/RcsSettings;
.super Landroid/preference/PreferenceFragment;
.source "RcsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mImsManager:Lcom/sec/ims/ImsManager;

.field mIsDefaultSms:Z

.field private mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mSettingsTreeParent:Landroid/preference/PreferenceScreen;

.field mSwitchRcs:Z

.field private mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;
    .param p3, "wirelessSettings"    # Lcom/samsung/android/settings/WirelessSettings;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 33
    const-class v0, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 37
    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 39
    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 42
    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 52
    iput-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    .line 60
    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    .line 73
    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 74
    iput-object p3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 77
    const-string/jumbo v1, "rcs_settings"

    .line 76
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 79
    const-string/jumbo v1, "rcs_settings_partial_branded"

    .line 78
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 81
    const-string/jumbo v1, "rcs_settings_partial_branded_cpr"

    .line 80
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 69
    return-void
.end method


# virtual methods
.method public disableAllRcsSettingsPreference()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableAllRcsSettingsPreference: disable for all brand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    return-void
.end method

.method public enableRcs(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/sec/ims/ImsManager;->enableRcs(Z)V

    .line 230
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    move-object v0, p1

    .line 177
    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    .line 178
    .local v0, "mSwithchPerference":Lcom/android/settings/SecSettingsSwitchPreference;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    .line 179
    const-string/jumbo v1, "com.samsung.android.messaging"

    .line 180
    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    .line 179
    invoke-static {v1, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    .line 181
    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    if-eqz v1, :cond_1

    .line 182
    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->enableRcs(Z)V

    .line 191
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/rcs/RcsSettings;->selectRcsVersion(Landroid/preference/Preference;)V

    .line 193
    return v3

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WirelessSettings;->callRcsDefaultSms()V

    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->enableRcs(Z)V

    goto :goto_0
.end method

.method public selectRcsVersion(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 200
    const-string/jumbo v1, "rcs_settings_partial_branded"

    .line 199
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    .line 203
    const-string/jumbo v1, "rcs_settings_partial_branded_cpr"

    .line 202
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto :goto_0
.end method

.method public setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V
    .locals 5
    .param p1, "mSwithchPerference"    # Lcom/android/settings/SecSettingsSwitchPreference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    const-string/jumbo v1, "com.samsung.android.messaging"

    .line 210
    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {v1, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "mIsEnabled":Z
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1, v4}, Lcom/sec/ims/ImsManager;->isRcsEnabled(Z)Z

    move-result v0

    .line 215
    .end local v0    # "mIsEnabled":Z
    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {p1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 217
    invoke-virtual {p1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 218
    invoke-virtual {p1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 219
    const v1, 0x7f0b1d08

    invoke-virtual {p1, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 222
    invoke-virtual {p1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 223
    invoke-virtual {p1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 224
    const v1, 0x7f0b0d62

    invoke-virtual {p1, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 225
    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-nez v1, :cond_1

    .line 226
    const v1, 0x7f0b0d67

    invoke-virtual {p1, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public updateRcsSettingsVisibility()V
    .locals 6

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "rcsEnabledInCsc":Z
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->isRcsEnabledInCsc()Z

    move-result v1

    .line 93
    .local v1, "rcsEnabledInCsc":Z
    if-nez v1, :cond_0

    .line 94
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: RCS is not enabled in CSC"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    .line 97
    return-void

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcsUiForOpen()Z

    move-result v2

    .line 101
    .local v2, "rcsUiForOpen":Z
    const-string/jumbo v3, "dsds"

    const-string/jumbo v4, "persist.radio.multisim.config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    .local v0, "multisim":Z
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRcsSettingsVisibility: rcsUiForOpen is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRcsSettingsVisibility: multisim is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 105
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: RCS is not enabled in DS & OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    .line 107
    return-void

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: update for RCSe"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 114
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    .line 89
    :cond_2
    :goto_0
    return-void

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isPartialBranded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: update for Partial Branded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isSupportCPR()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 123
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto :goto_0

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 130
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto :goto_0

    .line 136
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateRcsSettingsVisibility: update for Full Branded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 140
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Lcom/android/settings/SecSettingsSwitchPreference;)V

    goto/16 :goto_0
.end method
