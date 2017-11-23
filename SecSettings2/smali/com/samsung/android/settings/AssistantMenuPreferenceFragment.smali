.class public Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$1;,
        Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;,
        Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;,
        Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;
    }
.end annotation


# instance fields
.field private bSupportHoverZoom:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

.field private mAssistantMenuObserver:Landroid/database/ContentObserver;

.field private mAssistantPlus:Landroid/preference/Preference;

.field private mEditMenu:Landroid/preference/Preference;

.field private mFmMagnifierObserver:Landroid/database/ContentObserver;

.field mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

.field private mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

.field mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

.field private mMagnifier_settings:Landroid/preference/PreferenceCategory;

.field private mPadSize:Lcom/android/settings/SecDropDownPreference;

.field private mPointerSize:Lcom/android/settings/SecDropDownPreference;

.field private mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

.field private mPreferenceFragmentActivity:Landroid/app/Activity;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Lcom/android/settings/SecDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->refreshImageView(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->updatePointerSizeMenuStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    .line 156
    new-instance v0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    .line 163
    new-instance v0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    .line 72
    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 590
    return-void
.end method

.method private refreshImageView(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 608
    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setHoverZoomImageLevel(I)V

    .line 611
    const-string/jumbo v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMagnifierImage.setMagnifierLevel(level) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 550
    return-void
.end method

.method private updateAssistantMenuSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 556
    const-string/jumbo v3, "assistant_menu"

    .line 555
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 557
    .local v0, "assistantMenu_state":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "FmMagnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 558
    .local v1, "fmMAgnifier_state":I
    if-nez v0, :cond_1

    .line 559
    iget-boolean v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 561
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 562
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 554
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    .line 565
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 566
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 567
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePointerSizeMenuStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 540
    const-string/jumbo v3, "assistant_menu"

    .line 539
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 541
    .local v0, "assistantMenu_state":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "FmMagnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 542
    .local v1, "fmMAgnifier_state":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 538
    :cond_0
    return-void
.end method


# virtual methods
.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 470
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 471
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assistant_menu"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 472
    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 475
    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->installSwitchBarToggleSwitch()V

    .line 466
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const-string/jumbo v3, "AssistantMenuPreferenceFragment"

    const-string/jumbo v6, "onCreate()"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v6, "com.sec.feature.overlaymagnifier"

    invoke-static {v3, v6}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    .line 211
    const v3, 0x7f0800bd

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->addPreferencesFromResource(I)V

    .line 250
    const-string/jumbo v3, "menu_edit"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    .line 251
    const-string/jumbo v3, "eam_active"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    .line 253
    const-string/jumbo v3, "fmpointer_speed"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    .line 254
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "assistant_menu_pointer_speed"

    invoke-static {v3, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 257
    .local v2, "val":I
    const/4 v0, 0x0

    .line 258
    .local v0, "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    .line 259
    const v7, 0x7f0b01f7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 260
    const v7, 0x7f0b01f8

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 261
    const v7, 0x7f0b01f9

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 258
    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 263
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v7, "1"

    aput-object v7, v6, v4

    const-string/jumbo v7, "2"

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 264
    if-nez v2, :cond_9

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b01f7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .end local v0    # "entry":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 272
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    .end local v2    # "val":I
    :cond_1
    const-string/jumbo v3, "fmpointer_size"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    .line 298
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "assistant_menu_pointer_size"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 300
    .restart local v2    # "val":I
    const/4 v0, 0x0

    .line 301
    .restart local v0    # "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v9, [Ljava/lang/CharSequence;

    .line 302
    const v7, 0x7f0b01f5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 303
    const v7, 0x7f0b01f6

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 301
    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 305
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v9, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v7, "1"

    aput-object v7, v6, v4

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 306
    if-nez v2, :cond_b

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b01f5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .end local v0    # "entry":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 312
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 334
    .end local v2    # "val":I
    :cond_3
    const-string/jumbo v3, "fmpad_size"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    .line 335
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_5

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "assistant_menu_pad_size"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 337
    .restart local v2    # "val":I
    const/4 v0, 0x0

    .line 338
    .restart local v0    # "entry":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    .line 339
    const v7, 0x7f0b02a7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 340
    const v7, 0x7f0b02a8

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 341
    const v7, 0x7f0b02a9

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 338
    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 343
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v7, "1"

    aput-object v7, v6, v4

    const-string/jumbo v7, "2"

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 344
    if-nez v2, :cond_c

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b02a7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .end local v0    # "entry":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 352
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/SecDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 377
    .end local v2    # "val":I
    :cond_5
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v6, 0x7f0b01f2

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 380
    :cond_6
    const-string/jumbo v3, "magnifier_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 382
    const v6, 0x7f0b0297

    .line 381
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "magnifier":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    const-string/jumbo v3, "magnifier_size"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SecDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    .line 385
    iget-boolean v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v3, :cond_17

    .line 386
    new-instance v6, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "assistant_menu"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_e

    move v3, v4

    :goto_3
    invoke-direct {v6, p0, v7, v3}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;Landroid/content/Context;Z)V

    iput-object v6, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    .line 387
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setOrder(I)V

    .line 388
    new-instance v3, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hover_zoom_value"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    .line 389
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setOrder(I)V

    .line 391
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 392
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 394
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    if-eqz v3, :cond_8

    .line 395
    const/4 v0, 0x0

    .line 396
    .restart local v0    # "entry":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_11

    .line 397
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    .line 398
    const v7, 0x7f0b02a7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 399
    const v7, 0x7f0b02a8

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 400
    const v7, 0x7f0b02a9

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 397
    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 402
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    new-array v6, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v7, "1"

    aput-object v7, v6, v4

    const-string/jumbo v7, "2"

    aput-object v7, v6, v9

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "hover_zoom_magnifier_size"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 404
    .restart local v2    # "val":I
    if-nez v2, :cond_f

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .end local v0    # "entry":Ljava/lang/String;
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 412
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    :goto_5
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    new-instance v4, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$6;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    .end local v2    # "val":I
    :cond_8
    :goto_6
    return-void

    .line 266
    .end local v1    # "magnifier":Ljava/lang/String;
    .restart local v0    # "entry":Ljava/lang/String;
    .restart local v2    # "val":I
    :cond_9
    if-ne v2, v4, :cond_a

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b01f8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto/16 :goto_0

    .line 268
    .local v0, "entry":Ljava/lang/String;
    :cond_a
    if-ne v2, v9, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b01f9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto/16 :goto_0

    .line 308
    .local v0, "entry":Ljava/lang/String;
    :cond_b
    if-ne v2, v4, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b01f6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto/16 :goto_1

    .line 346
    .local v0, "entry":Ljava/lang/String;
    :cond_c
    if-ne v2, v4, :cond_d

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b02a8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto/16 :goto_2

    .line 348
    .local v0, "entry":Ljava/lang/String;
    :cond_d
    if-ne v2, v9, :cond_4

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b02a9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto/16 :goto_2

    .end local v0    # "entry":Ljava/lang/String;
    .end local v2    # "val":I
    .restart local v1    # "magnifier":Ljava/lang/String;
    :cond_e
    move v3, v5

    .line 386
    goto/16 :goto_3

    .line 406
    .local v0, "entry":Ljava/lang/String;
    .restart local v2    # "val":I
    :cond_f
    if-ne v2, v4, :cond_10

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_4

    .line 408
    .local v0, "entry":Ljava/lang/String;
    :cond_10
    if-ne v2, v9, :cond_7

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_4

    .line 414
    .end local v2    # "val":I
    .local v0, "entry":Ljava/lang/String;
    :cond_11
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 415
    const v7, 0x7f0b02a7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 416
    const v7, 0x7f0b02a8

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 417
    const v7, 0x7f0b02a9

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 418
    const v7, 0x7f0b0202

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 419
    const v7, 0x7f0b01ff

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 414
    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 421
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "0"

    aput-object v7, v6, v5

    const-string/jumbo v5, "1"

    aput-object v5, v6, v4

    const-string/jumbo v5, "2"

    aput-object v5, v6, v9

    const-string/jumbo v5, "3"

    aput-object v5, v6, v10

    const-string/jumbo v5, "4"

    const/4 v7, 0x4

    aput-object v5, v6, v7

    invoke-virtual {v3, v6}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v3, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 423
    .restart local v2    # "val":I
    if-nez v2, :cond_13

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .end local v0    # "entry":Ljava/lang/String;
    :cond_12
    :goto_7
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 435
    iget-object v3, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 425
    .restart local v0    # "entry":Ljava/lang/String;
    :cond_13
    if-ne v2, v4, :cond_14

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_7

    .line 427
    .local v0, "entry":Ljava/lang/String;
    :cond_14
    if-ne v2, v9, :cond_15

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_7

    .line 429
    .local v0, "entry":Ljava/lang/String;
    :cond_15
    if-ne v2, v10, :cond_16

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_7

    .line 431
    .local v0, "entry":Ljava/lang/String;
    :cond_16
    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_7

    .line 460
    .end local v0    # "entry":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 535
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 536
    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->removeSwitchBarToggleSwitch()V

    .line 534
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$7;-><init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 571
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->pause()V

    .line 499
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 500
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 501
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 496
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "fmpointer_speed1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 519
    .local v1, "value":I
    const-string/jumbo v2, "AssistantMenuPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changed speed value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v1    # "value":I
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 521
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "AssistantMenuPreferenceFragment"

    const-string/jumbo v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    const-class v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 604
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    const-class v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 480
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 481
    new-instance v0, Lcom/samsung/android/settings/AssistantMenuEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/AssistantMenuEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    .line 482
    invoke-direct {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->resume()V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    const-string/jumbo v1, "assistant_menu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    .line 485
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 490
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    const-string/jumbo v1, "FmMagnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 492
    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    .line 490
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 529
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 527
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    :cond_0
    return-void
.end method
