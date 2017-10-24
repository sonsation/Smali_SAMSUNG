.class public Lcom/samsung/android/settings/multisound/SelectAudioApplications;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SelectAudioApplications.java"


# instance fields
.field private mAppList:[Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x150

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    .line 61
    iget-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "audio"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    .line 64
    new-instance v0, Lcom/samsung/android/settings/UnclickablePreference;

    iget-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v0, v7, v9}, Lcom/samsung/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    .local v0, "descryptionPreference":Lcom/samsung/android/settings/UnclickablePreference;
    const v7, 0x7f0b0a4a

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    .line 66
    iget-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    iget-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMediaAppList()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAppList:[Ljava/lang/String;

    .line 72
    iget-object v9, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAppList:[Ljava/lang/String;

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v5, v9, v7

    .line 73
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v8, "SelectAudioApplications"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v6, Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;)V

    .line 78
    .local v6, "pref":Lcom/samsung/android/settings/notification/RadioPreference;
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v8, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 79
    .local v4, "mediaAppInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 80
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x1

    invoke-virtual {v8, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/notification/RadioPreference;->setKey(Ljava/lang/String;)V

    .line 88
    new-instance v8, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 72
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v4    # "mediaAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "SelectAudioApplications"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to find "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 111
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pref":Lcom/samsung/android/settings/notification/RadioPreference;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->updateRadioState()V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 118
    return-void
.end method

.method public updateRadioState()V
    .locals 5

    .prologue
    .line 124
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multisound_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "selectedApp":Ljava/lang/String;
    if-nez v2, :cond_0

    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 127
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/notification/RadioPreference;

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    .line 129
    .local v1, "radioPref":Lcom/samsung/android/settings/notification/RadioPreference;
    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/RadioPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 126
    .end local v1    # "radioPref":Lcom/samsung/android/settings/notification/RadioPreference;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .restart local v1    # "radioPref":Lcom/samsung/android/settings/notification/RadioPreference;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_1

    .line 123
    .end local v1    # "radioPref":Lcom/samsung/android/settings/notification/RadioPreference;
    :cond_3
    return-void
.end method
