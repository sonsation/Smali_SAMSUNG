.class public Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AdditionalInformationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;
    }
.end annotation


# instance fields
.field private frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private imgView:Landroid/widget/ImageView;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mMusicController:Landroid/preference/SwitchPreference;

.field private mSteps:Landroid/preference/SwitchPreference;

.field private mTodaySchedule:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMusicController:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSteps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mTodaySchedule:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 139
    new-instance v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 21
    return-void
.end method

.method private removeItems()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSteps:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSteps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMusicController:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "add_info_music_control"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 106
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mTodaySchedule:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "add_info_today_schedule"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSteps:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "add_info_steps"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 104
    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1

    :cond_2
    move v1, v2

    .line 107
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 59
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 60
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040023

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "guideView":Landroid/view/View;
    const v2, 0x7f110123

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    .line 63
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    const v3, 0x7f020420

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 66
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 69
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->addPreferencesFromResource(I)V

    .line 44
    const-string/jumbo v0, "key_music_controller"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMusicController:Landroid/preference/SwitchPreference;

    .line 45
    const-string/jumbo v0, "key_today_schedule"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mTodaySchedule:Landroid/preference/SwitchPreference;

    .line 46
    const-string/jumbo v0, "key_steps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSteps:Landroid/preference/SwitchPreference;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMusicController:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mTodaySchedule:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSteps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 39
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 99
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 91
    const-string/jumbo v0, "AdditionalInformationSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "QuickTools"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 116
    .local v1, "value":Z
    const-string/jumbo v4, "key_music_controller"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "add_info_music_control"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMusicController:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    return v3

    .line 120
    :cond_1
    const-string/jumbo v4, "key_today_schedule"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "add_info_today_schedule"

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mTodaySchedule:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 123
    return v3

    .line 124
    :cond_3
    const-string/jumbo v4, "key_steps"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "add_info_steps"

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSteps:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 127
    return v3

    .line 129
    :cond_5
    return v2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateState()V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->removeItems()V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "QuickTools"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 74
    return-void
.end method
