.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AutomaticStorageManagerSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mDaysToRetain:Lcom/android/settings/SecDropDownPreference;

.field private mDeletionHelper:Landroid/preference/Preference;

.field private mFreedBytes:Landroid/preference/Preference;

.field private mStorageManagerSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static daysValueToIndex(I[Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "indices"    # [Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 194
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, "thisValue":I
    if-ne p0, v1, :cond_0

    .line 196
    return v0

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "thisValue":I
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private maybeShowWarning()V
    .locals 4

    .prologue
    .line 205
    const-string/jumbo v2, "ro.storage_manager.enabled"

    const/4 v3, 0x0

    .line 204
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 206
    .local v1, "warningUnneeded":Z
    if-eqz v1, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object v0

    .line 210
    .local v0, "fragment":Lcom/android/settings/deletionhelper/ActivationWarningFragment;
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "ActivationWarningFragment"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f0b1bc2

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    const-string/jumbo v8, "days"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SecDropDownPreference;

    iput-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Lcom/android/settings/SecDropDownPreference;

    .line 98
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string/jumbo v8, "freed_bytes"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/preference/Preference;

    .line 102
    const-string/jumbo v8, "deletion_helper"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDeletionHelper:Landroid/preference/Preference;

    .line 103
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDeletionHelper:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    const-string/jumbo v8, "storage_manager_active"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mStorageManagerSwitch:Landroid/preference/SwitchPreference;

    .line 106
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mStorageManagerSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 110
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v8, "automatic_storage_manager_days_to_retain"

    .line 111
    const/16 v9, 0x5a

    .line 109
    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 113
    .local v7, "value":I
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "stringValues":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v7, v6}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->daysValueToIndex(I[Ljava/lang/String;)I

    move-result v9

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v8, "automatic_storage_manager_bytes_cleared"

    .line 116
    invoke-static {v1, v8, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 120
    .local v2, "freedBytes":J
    const-string/jumbo v8, "automatic_storage_manager_last_run"

    .line 119
    invoke-static {v1, v8, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 122
    .local v4, "lastRunMillis":J
    cmp-long v8, v2, v10

    if-eqz v8, :cond_0

    cmp-long v8, v4, v10

    if-nez v8, :cond_1

    .line 125
    :cond_0
    const-string/jumbo v8, "automatic"

    invoke-virtual {p0, v8}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "activity":Landroid/app/Activity;
    iget-object v8, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mFreedBytes:Landroid/preference/Preference;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 131
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 132
    const/16 v10, 0x10

    invoke-static {v0, v4, v5, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 130
    const v10, 0x7f0b1ec7

    .line 129
    invoke-virtual {v0, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->addPreferencesFromResource(I)V

    .line 86
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "storage_manager_active"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 151
    .local v0, "checked":Z
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x1e9

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 155
    const-string/jumbo v4, "automatic_storage_manager_enabled"

    if-eqz v0, :cond_2

    move v1, v2

    .line 154
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->maybeShowWarning()V

    .line 167
    .end local v0    # "checked":Z
    :cond_0
    :goto_1
    return v2

    .line 148
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "days"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 163
    const-string/jumbo v3, "automatic_storage_manager_days_to_retain"

    .line 164
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 162
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 155
    .restart local v0    # "checked":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 180
    const-string/jumbo v1, "deletion_helper"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    const-string/jumbo v2, "automatic_storage_manager_enabled"

    .line 140
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 142
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mStorageManagerSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    .line 137
    return-void

    .line 140
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isChecked":Z
    goto :goto_0
.end method
