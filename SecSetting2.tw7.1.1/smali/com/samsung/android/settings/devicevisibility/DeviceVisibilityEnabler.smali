.class public Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;
.super Ljava/lang/Object;
.source "DeviceVisibilityEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceVisibilityObserver:Landroid/database/ContentObserver;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->updateSwitchPreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceVisibilityPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0730

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 37
    :cond_0
    return-void
.end method

.method private updateSwitchPreference()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    const-string/jumbo v1, "DeviceVisibilityEnabler"

    const-string/jumbo v4, "updateSwitchPreference"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    .line 99
    .local v0, "state":I
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 100
    iget-object v4, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 101
    iget-object v4, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-ne v0, v2, :cond_2

    const v1, 0x7f0b1d08

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-ne v0, v2, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 96
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    const v1, 0x7f0b0731

    goto :goto_1

    :cond_3
    move v2, v3

    .line 103
    goto :goto_2
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "isChecked"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    const-string/jumbo v6, "DeviceVisibilityEnabler"

    const-string/jumbo v9, "onPreferenceChange"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "isChecked":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 68
    .local v3, "isCheckedState":Z
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "Settings"

    invoke-static {v6, v9}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iget-object v9, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    .line 70
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0f03f0

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 71
    const v11, 0x7f0f03f2

    .line 70
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 72
    if-eqz v3, :cond_1

    const/16 v6, 0x3e8

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 69
    invoke-static {v9, v10, v11, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 73
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v5

    .line 74
    .local v5, "state":I
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->hasPermissions(Landroid/content/Context;)Z

    move-result v1

    .line 75
    .local v1, "hasPermissions":Z
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->isQcFirstLaunched(Landroid/content/Context;)Z

    move-result v4

    .line 77
    .local v4, "isFirstLaunch":Z
    if-eqz v1, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v3, :cond_3

    .line 78
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "DEVICE_VISIBILITY_STATE_VALUE"

    if-eqz v3, :cond_2

    move v6, v8

    :goto_1
    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string/jumbo v6, "com.samsung.android.oneconnect"

    .line 82
    const-string/jumbo v8, "com.samsung.android.oneconnect.ui.SettingsPermissionActivity"

    .line 81
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_2
    return v7

    .end local v1    # "hasPermissions":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "isFirstLaunch":Z
    .end local v5    # "state":I
    :cond_1
    move v6, v7

    .line 72
    goto :goto_0

    .restart local v1    # "hasPermissions":Z
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "isFirstLaunch":Z
    .restart local v5    # "state":I
    :cond_2
    move v6, v7

    .line 80
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v6, "DeviceVisibilityEnabler"

    const-string/jumbo v8, "ActivityNotFoundException - SettingsPermissionActivity"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 90
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    move v7, v8

    .line 91
    :cond_4
    const-string/jumbo v9, "Settings"

    .line 90
    invoke-static {v6, v7, v9}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;ILjava/lang/String;)V

    .line 93
    return v8
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 57
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->updateSwitchPreference()V

    .line 46
    return-void
.end method
