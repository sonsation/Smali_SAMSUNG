.class public Lcom/android/settings/applications/UsageAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "UsageAccessDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/UsageAccessDetails$1;
    }
.end annotation


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

.field private mUsageDesc:Lcom/samsung/android/settings/UnclickablePreference;

.field private mUsagePrefs:Landroid/preference/Preference;

.field private mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/UsageAccessDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/UsageAccessDetails;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    .line 203
    new-instance v0, Lcom/android/settings/applications/UsageAccessDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/UsageAccessDetails$1;-><init>(Lcom/android/settings/applications/UsageAccessDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 52
    return-void
.end method

.method private setHasAccess(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 144
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    const/16 v4, 0x2b

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 142
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 187
    const/16 v0, 0xb7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    .line 82
    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 83
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 85
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/UsageAccessDetails;->addPreferencesFromResource(I)V

    .line 86
    const-string/jumbo v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 87
    const-string/jumbo v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    .line 88
    const-string/jumbo v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Lcom/samsung/android/settings/UnclickablePreference;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0b1d72

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b1d73

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    const v2, 0x7f0b1d74

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Lcom/samsung/android/settings/UnclickablePreference;

    const v2, 0x7f0b1d75

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 103
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onPause()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "UsageDataAccessView"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v3}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    const v3, 0x10803ab

    .line 127
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 129
    const v3, 0x1040014

    .line 127
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 130
    const v3, 0x7f0b1dca

    .line 127
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 131
    const v3, 0x7f0b08df

    .line 127
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/UsageAccessDetails;->setHasAccess(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->refreshUi()Z

    .line 137
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 134
    goto :goto_0

    .line 139
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/settings/applications/UsageAccessDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to launch app usage access settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "UsageDataAccessView"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method protected refreshUi()Z
    .locals 7

    .prologue
    .line 149
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v4, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    .line 150
    iget-object v5, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 149
    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    .line 152
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v3}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    .line 153
    .local v0, "hasAccess":Z
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-boolean v4, v4, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->permissionDeclared:Z

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 155
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 158
    iget v5, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUserId:I

    const/16 v6, 0x80

    .line 157
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 159
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    .line 160
    const-string/jumbo v3, "app_ops_settings_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 164
    .local v1, "metaData":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 165
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 164
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 166
    if-eqz v1, :cond_1

    .line 167
    const-string/jumbo v3, "android.settings.metadata.USAGE_ACCESS_REASON"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 166
    if-eqz v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 169
    const-string/jumbo v4, "android.settings.metadata.USAGE_ACCESS_REASON"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 172
    :cond_2
    const-string/jumbo v3, "app_ops_settings_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
