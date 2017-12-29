.class public Lcom/samsung/android/settings/DockSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DockSettings$1;,
        Lcom/samsung/android/settings/DockSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutomaticUnlock:Landroid/preference/SwitchPreference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverInfomation:Landroid/preference/PreferenceScreen;

.field private mCoverNote:Landroid/preference/CheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mFastWirelessCharging:Landroid/preference/SwitchPreference;

.field private mLedCoverNotifications:Landroid/preference/PreferenceScreen;

.field private mLedIconEditor:Landroid/preference/PreferenceScreen;

.field private mSViewWallpaper:Landroid/preference/PreferenceScreen;

.field private mShowNotifications:Landroid/preference/PreferenceScreen;

.field private mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

.field private mShowShortCuts:Landroid/preference/PreferenceScreen;

.field private mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

.field private showWireLessChargeMenu:I


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->sendDownloadPopupEventBoardcast()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DockSettings;->updateBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 518
    new-instance v0, Lcom/samsung/android/settings/DockSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DockSettings$2;-><init>()V

    .line 517
    sput-object v0, Lcom/samsung/android/settings/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 117
    new-instance v0, Lcom/samsung/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DockSettings$1;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    return-void
.end method

.method private createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 493
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b03a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 495
    const v1, 0x7f0b03aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 497
    new-instance v1, Lcom/samsung/android/settings/DockSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$3;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    .line 496
    const v2, 0x7f0b0700

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    new-instance v1, Lcom/samsung/android/settings/DockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$4;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private initDockSettings()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 250
    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 251
    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/preference/PreferenceScreen;

    .line 252
    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    .line 253
    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    .line 254
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    .line 255
    const-string/jumbo v1, "cover_show_shortcuts"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowShortCuts:Landroid/preference/PreferenceScreen;

    .line 256
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    .line 257
    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    .line 258
    const-string/jumbo v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    .line 259
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    .line 260
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/preference/PreferenceScreen;

    .line 261
    const-string/jumbo v1, "smart_accessory_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    .line 264
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b0398

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 268
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 280
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 281
    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 283
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 284
    const-string/jumbo v1, "cover_show_shortcuts"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 358
    :cond_1
    :goto_0
    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    :cond_2
    const-string/jumbo v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    .line 363
    const-string/jumbo v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 366
    const-string/jumbo v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 373
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_wireless_charger_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    .line 374
    iget v1, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v1, v4, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 375
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 382
    const-string/jumbo v1, "smart_accessory"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "smart_accessory_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_4

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 388
    .local v0, "covertype":I
    if-ne v0, v6, :cond_1b

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b03a3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 248
    .end local v0    # "covertype":I
    :cond_4
    :goto_3
    return-void

    .line 269
    :cond_5
    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v1, "cover_show_shortcuts"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 292
    .restart local v0    # "covertype":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingAutomaticUnlock(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 293
    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 309
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 310
    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 311
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 313
    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 315
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverDualClockOptionOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 317
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 319
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 320
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 324
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 326
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 327
    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 339
    :cond_b
    :goto_6
    if-eq v0, v5, :cond_15

    .line 340
    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 342
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_7

    .line 296
    if-nez v0, :cond_d

    .line 297
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b03a0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_4

    .line 298
    :cond_d
    if-eq v0, v4, :cond_e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 299
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b0394

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    .line 298
    :cond_f
    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    .line 300
    if-ne v0, v5, :cond_10

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b039f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    .line 302
    :cond_10
    if-ne v0, v6, :cond_11

    .line 303
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b03a1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    .line 304
    :cond_11
    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    .line 305
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b039e

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_4

    .line 322
    :cond_12
    const-string/jumbo v1, "cover_show_shortcuts"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_5

    .line 329
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 330
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v1, :cond_b

    .line 332
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_6

    .line 335
    :cond_14
    const-string/jumbo v1, "cover_show_sec_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6

    .line 344
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 345
    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 347
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 348
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 351
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v1

    .line 351
    if-eqz v1, :cond_1

    .line 353
    :cond_18
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    .end local v0    # "covertype":I
    :cond_19
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 377
    :cond_1a
    const-string/jumbo v1, "fast_charing_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 391
    .restart local v0    # "covertype":I
    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    .line 393
    const v2, 0x7f0b0a71

    .line 392
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_3

    .line 395
    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/preference/PreferenceScreen;

    .line 396
    const v2, 0x7f0b0a70

    .line 395
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_3
.end method

.method private static isMateCoverAttached(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mate_setting_activation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendDownloadPopupEventBoardcast()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.app.applinker.action.REQUEST_DOWNLOAD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.app.ledcoverdream"

    .line 666
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 668
    .local v2, "pkg":[B
    array-length v4, v2

    add-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 669
    .local v3, "uri":[B
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 670
    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    .line 673
    array-length v4, v2

    const/4 v5, 0x2

    invoke-static {v2, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 674
    const-string/jumbo v4, "URI"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 675
    const-string/jumbo v4, "DEVICE_TYPE"

    const-string/jumbo v5, "cover"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const-string/jumbo v4, "NAME"

    const-string/jumbo v5, "LED Cover"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 678
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 680
    const-string/jumbo v4, "DockSettings"

    const-string/jumbo v5, "show great led download popup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-void
.end method

.method private showDownloadLedCoverAppDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 641
    const/4 v3, 0x0

    .line 642
    .local v3, "dialogTitle":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 643
    .local v2, "dialogMessage":Ljava/lang/CharSequence;
    const v4, 0x7f0b03df

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "appName":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f0b0527

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "dialogTitle":Ljava/lang/CharSequence;
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f0b0528

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "dialogMessage":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 647
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 650
    new-instance v5, Lcom/samsung/android/settings/DockSettings$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/DockSettings$5;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    .line 649
    const v6, 0x7f0b0700

    .line 647
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 655
    new-instance v5, Lcom/samsung/android/settings/DockSettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/DockSettings$6;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const/high16 v6, 0x1040000

    .line 647
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 640
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 237
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 239
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0d98

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 236
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0d9b

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->addPreferencesFromResource(I)V

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->initDockSettings()V

    .line 128
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 484
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 488
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 446
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v6, "automatic_unlock"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 449
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 450
    .local v3, "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "automatic_unlock"

    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    .end local v3    # "value":Z
    :cond_1
    :goto_0
    return v5

    .line 451
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v6, "cover_note"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 452
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 453
    .restart local v3    # "value":Z
    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 454
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "cover_note"

    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    const-string/jumbo v4, "DockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Save KEY_COVER_NOTE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    .end local v3    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v6, "cover_note_weather_unit"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 457
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 459
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "cover_note_weather_unit"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 464
    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 465
    .end local v2    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v6, "fast_wireless_charging"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 466
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 467
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wireless_fast_charging"

    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    return v5

    .line 469
    .end local v3    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v6, "cover_show_sec_notifications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 470
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 471
    .local v0, "isChecked":Z
    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    .line 472
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    .line 473
    if-eqz v0, :cond_a

    const v6, 0x7f0b1d08

    .line 472
    :goto_1
    invoke-virtual {v7, v6}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    .line 474
    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 476
    const-string/jumbo v7, "lock_screen_show_notifications"

    if-eqz v0, :cond_9

    move v4, v5

    .line 475
    :cond_9
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 473
    :cond_a
    const v6, 0x7f0b0a73

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 404
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "automatic_unlock"

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    return v2

    .line 405
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->startMyThemeWallpaperActivity(Landroid/content/Context;)V

    .line 440
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_4

    .line 410
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    .line 411
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 410
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LNCS"

    const-string/jumbo v4, "SViewCover"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_6

    .line 415
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.app.ledcovergrace"

    .line 418
    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace.app.LCoverNotiMainActivity"

    .line 417
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 421
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->showDialog(I)V

    goto :goto_1

    .line 423
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_8

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcoverdream"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->showDownloadLedCoverAppDialog()V

    goto :goto_1

    .line 427
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v0    # "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 433
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    .line 434
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.mateagent"

    const-string/jumbo v3, "com.samsung.android.mateagent.setting.SettingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 435
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 141
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 144
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_0

    .line 145
    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "automatic_unlock"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_a

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 146
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b0397

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 152
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    .line 153
    const-string/jumbo v7, "cover_note"

    invoke-static {v2, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_b

    const/4 v6, 0x0

    .line 154
    .local v6, "value":Z
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    .end local v6    # "value":Z
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    if-eqz v7, :cond_2

    .line 158
    const-string/jumbo v7, "cover_note_weather_unit"

    invoke-static {v2, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 159
    .local v5, "value":I
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 160
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    .end local v5    # "value":I
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_3

    .line 164
    const-string/jumbo v7, "oversea"

    const-string/jumbo v10, "ril.currentplmn"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 165
    .local v1, "isRoamingArea":Z
    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0a88

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0d50

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 166
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "sText":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 174
    .end local v3    # "sText":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 176
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0b0a87

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 181
    .end local v1    # "isRoamingArea":Z
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_4

    .line 182
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 185
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v7, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 187
    const-string/jumbo v10, "lock_screen_show_notifications"

    .line 186
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_d

    const/4 v0, 0x1

    .line 188
    .local v0, "enabled":Z
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v7, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    .line 189
    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_e

    const v7, 0x7f0b1d08

    :goto_4
    invoke-virtual {v10, v7}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    .line 190
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v7, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 194
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v10

    .line 193
    const/16 v11, 0xc

    .line 192
    invoke-static {v7, v11, v10}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    .line 195
    .local v4, "showAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v7, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 198
    .end local v0    # "enabled":Z
    .end local v4    # "showAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_5
    iget v7, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v7, v8, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 199
    const-string/jumbo v7, "wireless_fast_charging"

    invoke-static {v2, v7, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 200
    .restart local v5    # "value":I
    if-ne v5, v13, :cond_6

    .line 201
    const-string/jumbo v7, "wireless_fast_charging"

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    const/4 v5, 0x1

    .line 204
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    if-ne v5, v8, :cond_f

    :goto_5
    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 206
    .end local v5    # "value":I
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v11, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.ledcovergrace"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 211
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b03a7

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 218
    :cond_8
    :goto_6
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_9

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getGalaxyFriendsBadgeCount(Landroid/content/Context;)I

    move-result v7

    if-lez v7, :cond_11

    .line 220
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    const v8, 0x7f040243

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 225
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 140
    :cond_9
    return-void

    :cond_a
    move v7, v9

    .line 145
    goto/16 :goto_0

    .line 153
    :cond_b
    const/4 v6, 0x1

    .restart local v6    # "value":Z
    goto/16 :goto_1

    .line 171
    .end local v6    # "value":Z
    .restart local v1    # "isRoamingArea":Z
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "dualclock_menu_settings"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 171
    invoke-static {v10, v11}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 186
    .end local v1    # "isRoamingArea":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto/16 :goto_3

    .line 189
    :cond_e
    const v7, 0x7f0b0a73

    goto/16 :goto_4

    .end local v0    # "enabled":Z
    .restart local v5    # "value":I
    :cond_f
    move v8, v9

    .line 204
    goto :goto_5

    .line 213
    .end local v5    # "value":I
    :cond_10
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b03a8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6

    .line 222
    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    goto :goto_7
.end method
