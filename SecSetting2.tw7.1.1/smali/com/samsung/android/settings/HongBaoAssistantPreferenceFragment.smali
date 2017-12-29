.class public Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "HongBaoAssistantPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$1;,
        Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;
    }
.end annotation


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHongbaoAssistantObserver:Landroid/database/ContentObserver;

.field private mHongbaoAssistantScreenId:I

.field private mLaunchApp:Landroid/preference/SwitchPreference;

.field private mNotificationSound:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mLaunchApp:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->isAutoLaunchAppEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->isHongbaoAssistantEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->isPlaySoundEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->setNotificationSoundState(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->updatePreferenceEnabledState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mHongbaoAssistantScreenId:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 55
    new-instance v0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    .line 290
    new-instance v0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 52
    return-void
.end method

.method private isAutoLaunchAppEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hongbao_launch_app"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isHongbaoAssistantEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hongbao_assistant"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPlaySoundEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hongbao_notification_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNotificationSoundState(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hongbao_notification_sound"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    if-eqz p1, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "hongbao_alert_sound"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 280
    .local v0, "alertToneIndex":I
    if-ne v0, v5, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "hongbao_alert_sound"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    .end local v0    # "alertToneIndex":I
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 277
    goto :goto_0

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b1d09

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updatePreferenceCheckedState()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->isPlaySoundEnabled()Z

    move-result v1

    .line 153
    .local v1, "isPlaySoundEnabled":Z
    iget-object v2, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hongbao_alert_sound"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "alertToneIndex":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    if-eq v0, v4, :cond_0

    if-eqz v1, :cond_0

    .line 158
    iget-object v2, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getNames()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mLaunchApp:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->isAutoLaunchAppEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 151
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b1d09

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 163
    :cond_1
    if-eq v0, v4, :cond_2

    .line 164
    iget-object v2, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getNames()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b0ea5

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updatePreferenceEnabledState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mLaunchApp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 146
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const v7, 0x7f0b0ea1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 256
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 263
    .local v0, "mSoundNames":[Ljava/lang/String;
    return-object v0

    .line 265
    .end local v0    # "mSoundNames":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0ea4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 272
    .restart local v0    # "mSoundNames":[Ljava/lang/String;
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 83
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 84
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 79
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mHongbaoAssistantScreenId:I

    .line 70
    const-string/jumbo v0, "notification_sound"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    .line 71
    const-string/jumbo v0, "launch_app"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mLaunchApp:Landroid/preference/SwitchPreference;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mNotificationSound:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mLaunchApp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 191
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 184
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "HongbaoAssistant"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 218
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 221
    .local v2, "isChecked":Z
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.HONGBAO_ASSISTANT_LOGGING_ACTION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "screen_id"

    iget v7, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mHongbaoAssistantScreenId:I

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string/jumbo v7, "value_int"

    if-eqz v2, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string/jumbo v4, "notification_sound"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    const-string/jumbo v4, "HongBaoAssistantPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "KEY_NOTIFICATION_SOUND isChecked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->setNotificationSoundState(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f040d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 228
    .local v0, "eventId":I
    const-string/jumbo v4, "event_id"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    return v5

    .end local v0    # "eventId":I
    :cond_0
    move v4, v6

    .line 223
    goto :goto_0

    .line 231
    :cond_1
    const-string/jumbo v4, "launch_app"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    const-string/jumbo v4, "HongBaoAssistantPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "KEY_LAUNCH_APP isChecked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "hongbao_launch_app"

    if-eqz v2, :cond_2

    move v6, v5

    :cond_2
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f040e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 235
    .restart local v0    # "eventId":I
    const-string/jumbo v4, "event_id"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    return v5

    .line 239
    .end local v0    # "eventId":I
    :cond_3
    return v6
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "notification_sound"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.hongbaoassistant"

    const-string/jumbo v5, "com.samsung.hongbaoassistant.SoundPickerActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f040c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 205
    .local v1, "eventId":I
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.HONGBAO_ASSISTANT_LOGGING_ACTION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "screen_id"

    iget v5, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mHongbaoAssistantScreenId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string/jumbo v4, "event_id"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "eventId":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 125
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 127
    const-string/jumbo v2, "hongbao_assistant"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 126
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->isHongbaoAssistantEnabled()Z

    move-result v0

    .line 129
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->updatePreferenceCheckedState()V

    .line 134
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->updatePreferenceEnabledState(Z)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "HongbaoAssistant"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 10
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "red_packet_do_not_show"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    .line 91
    .local v4, "showDialog":Z
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->isHongbaoAssistantEnabled()Z

    move-result v0

    .line 92
    .local v0, "enabled":Z
    const-string/jumbo v5, "HongBaoAssistantPreferenceFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSwitchChanged  showDialog:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isChecked:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " enabled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eq v0, p2, :cond_6

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f040b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 95
    .local v1, "eventId":I
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.HONGBAO_ASSISTANT_LOGGING_ACTION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, "loggingIntent":Landroid/content/Intent;
    const-string/jumbo v5, "screen_id"

    iget v8, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mHongbaoAssistantScreenId:I

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string/jumbo v5, "event_id"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string/jumbo v8, "value_int"

    if-eqz p2, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    .line 101
    iget-object v5, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 102
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.samsung.hongbaoassistant"

    const-string/jumbo v6, "com.samsung.hongbaoassistant.ConfirmActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v1    # "eventId":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "loggingIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 90
    .end local v0    # "enabled":Z
    .end local v4    # "showDialog":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "showDialog":Z
    goto/16 :goto_0

    .restart local v0    # "enabled":Z
    .restart local v1    # "eventId":I
    .restart local v3    # "loggingIntent":Landroid/content/Intent;
    :cond_1
    move v5, v7

    .line 98
    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "hongbao_assistant"

    if-eqz p2, :cond_3

    move v5, v6

    :goto_3
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "red_packet_mode"

    if-eqz p2, :cond_4

    :goto_4
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 109
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.samsung.hongbaoassistant"

    const-string/jumbo v6, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    if-eqz p2, :cond_5

    .line 111
    const-string/jumbo v5, "HongBaoAssistantPreferenceFragment"

    const-string/jumbo v6, "onSwitchChanged startService"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    move v5, v7

    .line 106
    goto :goto_3

    :cond_4
    move v6, v7

    .line 107
    goto :goto_4

    .line 114
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v5, "HongBaoAssistantPreferenceFragment"

    const-string/jumbo v6, "onSwitchChanged stopService"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_2

    .line 119
    .end local v1    # "eventId":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "loggingIntent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v5, "HongBaoAssistantPreferenceFragment"

    const-string/jumbo v6, "Changed form Quick Button."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
