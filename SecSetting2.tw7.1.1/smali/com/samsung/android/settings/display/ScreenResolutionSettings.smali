.class public Lcom/samsung/android/settings/display/ScreenResolutionSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ScreenResolutionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;
    }
.end annotation


# static fields
.field private static sScreenResolutionCancel:I

.field private static sScreenResolutionDone:I


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mSaveButton:Landroid/widget/Button;

.field private mScreenChangeState:Z

.field private mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->sScreenResolutionCancel:I

    return v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->sScreenResolutionDone:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->sScreenResolutionCancel:I

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->sScreenResolutionDone:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    .line 195
    new-instance v0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 33
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method initswitchBtn()V
    .locals 8

    .prologue
    const v7, 0x7f02064e

    const/4 v3, 0x0

    .line 133
    const-string/jumbo v5, "ScreenResolutionSettings"

    const-string/jumbo v6, "PSM initswitchBtn"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    .line 136
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 137
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    const v6, 0x7f0400a4

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 138
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 139
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "customView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/Toolbar;

    .line 142
    .local v4, "parent":Landroid/widget/Toolbar;
    invoke-virtual {v4, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 143
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    const v5, 0x7f11023a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 145
    .local v2, "headerBar":Landroid/widget/LinearLayout;
    const v5, 0x7f02010e

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 147
    .end local v2    # "headerBar":Landroid/widget/LinearLayout;
    :cond_0
    const v5, 0x7f11023b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    .line 148
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 149
    const v5, 0x7f11023c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    .line 150
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 152
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    const v6, 0x7f0b0511

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 179
    const-string/jumbo v6, "show_button_background"

    .line 178
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 180
    .local v3, "isEnabledShowBtnBg":Z
    :cond_1
    if-eqz v3, :cond_2

    .line 181
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 182
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 132
    .end local v3    # "isEnabledShowBtnBg":Z
    .end local v4    # "parent":Landroid/widget/Toolbar;
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    .line 68
    const v1, 0x7f0800de

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->addPreferencesFromResource(I)V

    .line 69
    const-string/jumbo v1, "screen_resolution_seekbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    .line 71
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v0

    .line 72
    .local v0, "currentResolution":I
    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo v1, "selected_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    :cond_0
    const-string/jumbo v1, "WQHD,FHD,HD"

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setMax(I)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    .line 87
    :goto_0
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 62
    return-void

    .line 83
    :cond_2
    const-string/jumbo v1, "screen_resolution_seekbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->initswitchBtn()V

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenResolution"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 123
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 120
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 106
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "low_power"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 110
    .local v0, "isPSMEnabled":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 111
    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "ScreenResolution"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 103
    return-void

    .line 109
    .end local v0    # "isPSMEnabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isPSMEnabled":Z
    goto :goto_0

    :cond_3
    move v1, v3

    .line 111
    goto :goto_1

    :cond_4
    move v2, v3

    .line 112
    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    const-string/jumbo v0, "selected_value"

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method
