.class public Lcom/samsung/android/settings/location/LocationSettingsEnabler;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettingsEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private final mLocationModeObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mSwitchPref:Landroid/preference/SwitchPreference;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference_"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 73
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mActive:Z

    .line 75
    new-instance v0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    .line 98
    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 99
    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    .line 100
    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 101
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar_"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 73
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mActive:Z

    .line 75
    new-instance v0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    .line 91
    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 93
    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 88
    return-void
.end method

.method private updatePrefSummary(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    if-nez p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 150
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_1
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b17a7

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 155
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b09df

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b17a6

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b09d8

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b17a5

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 169
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b09d5

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b17a4

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onLocationOptionChange(Ljava/lang/Object;Z)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 249
    const-string/jumbo v8, "gps"

    .line 248
    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 250
    .local v3, "isGpsOn":Z
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    .line 251
    const-string/jumbo v8, "content://com.sec.knox.provider/LocationPolicy"

    .line 252
    const-string/jumbo v9, "isGPSStateChangeAllowed"

    .line 250
    invoke-static {v5, v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 253
    .local v4, "isLocationGPSStateChangeAllowed":I
    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    move v2, v7

    .line 254
    .local v2, "isGpsEnforced":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 255
    return v7

    .end local v2    # "isGpsEnforced":Z
    :cond_0
    move v2, v6

    .line 253
    goto :goto_0

    .line 256
    .restart local v2    # "isGpsEnforced":Z
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_2

    .line 257
    iget-object v8, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0f02f8

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz p2, :cond_3

    const/16 v5, 0x3e8

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 260
    :cond_2
    if-eqz p2, :cond_6

    .line 261
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    .line 262
    const-string/jumbo v8, "CscFeature_Common_SupportHuxGpsPromptLocation"

    .line 261
    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->showVzwLocationConsentDialog(Landroid/content/Context;)V

    .line 295
    :goto_2
    return v7

    :cond_3
    move v5, v6

    .line 257
    goto :goto_1

    .line 265
    :cond_4
    const-string/jumbo v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 267
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b09b6

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 269
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b09b7

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 271
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0517

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 272
    new-instance v6, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    .line 271
    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0518

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 279
    new-instance v6, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    .line 278
    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 286
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 288
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    goto :goto_2

    .line 292
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public onModeChanged(IZ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 182
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    .line 188
    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 190
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 194
    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 199
    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 207
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 211
    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 216
    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v1, :cond_4

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    :cond_4
    const-string/jumbo v1, "LocationSettingsEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onModeChanged : mSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 188
    .end local v0    # "enabled":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 207
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 228
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 229
    const-string/jumbo v6, "gps"

    .line 228
    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 230
    .local v1, "isGpsOn":Z
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    .line 231
    const-string/jumbo v6, "content://com.sec.knox.provider/LocationPolicy"

    .line 232
    const-string/jumbo v7, "isGPSStateChangeAllowed"

    const/4 v8, 0x0

    .line 230
    invoke-static {v3, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 233
    .local v2, "isLocationGPSStateChangeAllowed":I
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    move v0, v4

    .line 234
    .local v0, "isGpsEnforced":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 236
    return v5

    .end local v0    # "isGpsEnforced":Z
    :cond_0
    move v0, v5

    .line 233
    goto :goto_0

    .line 238
    .restart local v0    # "isGpsEnforced":Z
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    .line 239
    return v4
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "value"    # Z

    .prologue
    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    .line 243
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 113
    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    .line 112
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 117
    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 119
    iput-boolean v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->refreshLocationMode(Landroid/content/Context;)V

    .line 109
    return-void
.end method
