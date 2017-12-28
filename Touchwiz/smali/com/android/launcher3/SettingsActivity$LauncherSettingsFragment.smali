.class public Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherSettingsFragment"
.end annotation


# static fields
.field private static final EASY_MODE:I = 0x0

.field private static final HOME_SETTING_SHOW_EASY_MODE_TIPS:Ljava/lang/String; = "home_setting_show_easy_mode_tips"

.field private static final STANDARD_MODE:I = 0x1


# instance fields
.field private mEasyModeDeleteButton:Landroid/widget/ImageView;

.field private mEasyModeSettingButton:Landroid/widget/TextView;

.field private mIsEasyMode:Z

.field private mPreAboutPage:Landroid/preference/Preference;

.field private mPreAppsButtonSetting:Landroid/preference/Preference;

.field private mPreAppsScreenGrid:Landroid/preference/Preference;

.field private mPreDayLiteSetting:Landroid/preference/Preference;

.field private mPreNotificationPanelSetting:Landroid/preference/SwitchPreference;

.field private mPreScreenGrid:Landroid/preference/Preference;

.field private mPreWidget:Landroid/preference/Preference;

.field private mPrefHomeScreenMode:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private setAboutPage()V
    .locals 2

    .prologue
    .line 498
    const-string v1, "pref_about_page"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 499
    .local v0, "prefNotice":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 500
    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$5;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 521
    :cond_0
    return-void
.end method

.method private setAppsButtonSetting()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsButtonSetting:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsButtonSetting:Landroid/preference/Preference;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$6;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    .line 526
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 546
    :cond_0
    return-void
.end method

.method private setAppsScreenMode(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 432
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 434
    .local v4, "xy":[I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 435
    const/4 v5, 0x0

    aget v0, v4, v5

    .line 436
    .local v0, "columns":I
    aget v2, v4, v7

    .line 438
    .local v2, "rows":I
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "currentLanguage":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 441
    const-string v5, "apps_screen_grid_summary"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 452
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 454
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 455
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    new-instance v6, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$3;

    invoke-direct {v6, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$3;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 472
    :cond_0
    return-void

    .line 443
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    const-string v5, "ar"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "fa"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 444
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 445
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 447
    .end local v3    # "summary":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private setBadgeManager()V
    .locals 3

    .prologue
    .line 376
    const-string v2, "badge_manager"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 377
    .local v0, "mBadgeManage":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 378
    new-instance v2, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$1;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 390
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 392
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method private setDayLiteSetting()V
    .locals 6

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 587
    const v1, 0x7f0900cc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.app.spage"

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 587
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    new-instance v2, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$9;

    invoke-direct {v2, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$9;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 607
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setEasyModeSetting(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "easyModeSettingLayout"    # Landroid/view/View;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeDeleteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeDeleteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$10;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeSettingButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$11;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    :cond_1
    return-void
.end method

.method private setHideApps()V
    .locals 2

    .prologue
    .line 475
    const-string v1, "pref_hide_apps"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 476
    .local v0, "prefHideApps":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 477
    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 495
    :cond_0
    return-void
.end method

.method private setHomeScreenGrid(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 659
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 661
    .local v4, "xy":[I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 662
    const/4 v5, 0x0

    aget v0, v4, v5

    .line 663
    .local v0, "columns":I
    aget v2, v4, v7

    .line 665
    .local v2, "rows":I
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "currentLanguage":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 668
    const-string v5, "screen_grid_summary"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 679
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 681
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 682
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    new-instance v6, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$12;

    invoke-direct {v6, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$12;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 699
    :cond_0
    return-void

    .line 670
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    const-string v5, "ar"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "fa"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 671
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 672
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 674
    .end local v3    # "summary":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private setHomeScreenMode()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 401
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$2;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 428
    :cond_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private setNotificationPanelSetting()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreNotificationPanelSetting:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreNotificationPanelSetting:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getNotificationPanelExpansionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreNotificationPanelSetting:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 565
    :cond_0
    return-void
.end method

.method private setWidgetsButtonSetting()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreWidget:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreWidget:Landroid/preference/Preference;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$8;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 583
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->addPreferencesFromResource(I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 290
    const-string v0, "pref_screen_grid"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    .line 291
    const-string v0, "pref_apps_button_setting"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsButtonSetting:Landroid/preference/Preference;

    .line 292
    const-string v0, "pref_notification_panel_setting"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreNotificationPanelSetting:Landroid/preference/SwitchPreference;

    .line 293
    const-string v0, "pref_home_screen_mode"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    .line 294
    const-string v0, "pref_hide_widgets"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreWidget:Landroid/preference/Preference;

    .line 295
    const-string v0, "pref_daylite_setting"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    .line 296
    const-string v0, "pref_apps_screen_grid"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    .line 297
    const-string v0, "pref_about_page"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAboutPage:Landroid/preference/Preference;

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    .line 301
    iget-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 362
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 299
    goto :goto_0

    .line 307
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    invoke-direct {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setHomeScreenGrid(Landroid/os/Bundle;)V

    .line 313
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setHomeScreenMode()V

    .line 314
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setBadgeManager()V

    .line 315
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setHideApps()V

    .line 317
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsButtonSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setAppsButtonSetting()V

    .line 329
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNotificationPanelExpansion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setNotificationPanelSetting()V

    .line 335
    :goto_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAboutPage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAboutPage:Landroid/preference/Preference;

    const v3, 0x7f090002

    invoke-virtual {p0, v3}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const v4, 0x7f090005

    invoke-virtual {p0, v4}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setAboutPage()V

    .line 342
    :goto_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWidgetSetting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setWidgetsButtonSetting()V

    .line 348
    :goto_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageSetting()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.app.spage"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 350
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setDayLiteSetting()V

    .line 355
    :goto_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 356
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 357
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    if-nez v0, :cond_9

    .line 358
    invoke-direct {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setAppsScreenMode(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 320
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setAppsButtonSetting()V

    goto/16 :goto_3

    .line 332
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreNotificationPanelSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAboutPage:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 345
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreWidget:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 352
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 360
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 261
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 263
    .local v2, "root":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 265
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "home_setting_show_easy_mode_tips"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    const v3, 0x7f04002d

    .line 268
    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 269
    .local v0, "easyModeSettingLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 271
    const v3, 0x7f1100a4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeDeleteButton:Landroid/widget/ImageView;

    .line 272
    const v3, 0x7f1100a5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeSettingButton:Landroid/widget/TextView;

    .line 273
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeSettingButton:Landroid/widget/TextView;

    const v4, 0x7f020108

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 276
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setEasyModeSetting(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 279
    .end local v0    # "easyModeSettingLayout":Landroid/widget/LinearLayout;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-object v2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "value"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/model/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "set_boolean_setting"

    .line 371
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 372
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 648
    const-string v1, "screen_grid_summary"

    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 652
    const-string v1, "apps_screen_grid_summary"

    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 655
    return-void
.end method
