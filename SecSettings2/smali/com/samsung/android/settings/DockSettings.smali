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

.field private mCoverNote:Landroid/preference/CheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mFastWirelessCharging:Landroid/preference/SwitchPreference;

.field private mLedCoverNotifications:Landroid/preference/PreferenceScreen;

.field private mLedIconEditor:Landroid/preference/PreferenceScreen;

.field private mSViewWallpaper:Landroid/preference/PreferenceScreen;

.field private mShowNotifications:Landroid/preference/PreferenceScreen;

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

.method static synthetic -wrap1(Lcom/samsung/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DockSettings;->updateBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lcom/samsung/android/settings/DockSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DockSettings$2;-><init>()V

    .line 408
    sput-object v0, Lcom/samsung/android/settings/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/samsung/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DockSettings$1;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method private createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0300

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    const v1, 0x7f0b0301

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 388
    new-instance v1, Lcom/samsung/android/settings/DockSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$3;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    .line 387
    const v2, 0x7f0b05dd

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    new-instance v1, Lcom/samsung/android/settings/DockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$4;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 201
    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 202
    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/preference/PreferenceScreen;

    .line 203
    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    .line 204
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    .line 205
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    .line 206
    const-string/jumbo v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    .line 207
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    .line 208
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/preference/PreferenceScreen;

    .line 209
    const-string/jumbo v1, "smart_accessory_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    .line 212
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b02f2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 216
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 277
    :goto_0
    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    :cond_1
    const-string/jumbo v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    .line 282
    const-string/jumbo v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 285
    const-string/jumbo v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 292
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_wireless_charger_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    .line 293
    iget v1, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 294
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 300
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    const-string/jumbo v1, "smart_accessory"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "smart_accessory_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 199
    :cond_2
    return-void

    .line 217
    :cond_3
    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 236
    .local v0, "covertype":I
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_5

    .line 237
    if-nez v0, :cond_c

    .line 238
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b02f9

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 244
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 245
    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 246
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 248
    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 250
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverDualClockOptionOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 252
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 254
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 256
    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 258
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 260
    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 262
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 264
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 266
    :cond_b
    if-eq v0, v4, :cond_e

    .line 267
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :cond_c
    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 240
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b02fa

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_3

    .line 241
    :cond_d
    if-ne v0, v4, :cond_5

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b02f8

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    .line 268
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 270
    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_f
    const-string/jumbo v1, "led_icon_editor"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "covertype":I
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 296
    :cond_11
    const-string/jumbo v1, "fast_charing_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static isMateCoverAttached(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mate_setting_activation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 405
    .local v0, "result":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 188
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0bc6

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 187
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0bc9

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->addPreferencesFromResource(I)V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->initDockSettings()V

    .line 110
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 375
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 379
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 345
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v5, "automatic_unlock"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 349
    .local v2, "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "automatic_unlock"

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    .end local v2    # "value":Z
    :cond_1
    :goto_0
    return v4

    .line 350
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v5, "cover_note"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 351
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 352
    .restart local v2    # "value":Z
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "cover_note"

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    const-string/jumbo v3, "DockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Save KEY_COVER_NOTE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    .end local v2    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v5, "cover_note_weather_unit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 356
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 358
    .local v1, "value":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "cover_note_weather_unit"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 364
    .end local v1    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v5, "fast_wireless_charging"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 366
    .restart local v2    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wireless_fast_charging"

    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 308
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1

    .line 309
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

    .line 310
    return v2

    .line 309
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->startMyThemeWallpaperActivity(Landroid/content/Context;)V

    .line 339
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_4

    .line 314
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    .line 315
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 314
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LNCS"

    const-string/jumbo v4, "SViewCover"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_6

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.app.ledcovergrace"

    .line 322
    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace.app.LCoverNotiMainActivity"

    .line 321
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 325
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->showDialog(I)V

    goto :goto_1

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_7

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 332
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    .line 333
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.mateagent"

    const-string/jumbo v3, "com.samsung.android.mateagent.setting.SettingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 334
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 123
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 126
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "automatic_unlock"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 130
    const-string/jumbo v5, "cover_note"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    const/4 v4, 0x0

    .line 131
    .local v4, "value":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    .end local v4    # "value":Z
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 135
    const-string/jumbo v5, "cover_note_weather_unit"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 136
    .local v3, "value":I
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    .end local v3    # "value":I
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    .line 141
    const-string/jumbo v5, "oversea"

    const-string/jumbo v8, "ril.currentplmn"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 142
    .local v0, "isRoamingArea":Z
    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b08f0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0b82

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "sText":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 151
    .end local v2    # "sText":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 154
    .end local v0    # "isRoamingArea":Z
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v5

    .line 155
    if-eqz v5, :cond_3

    .line 156
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 161
    :cond_3
    :goto_3
    iget v5, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v5, v6, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    const-string/jumbo v5, "wireless_fast_charging"

    invoke-static {v1, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 163
    .restart local v3    # "value":I
    if-ne v3, v11, :cond_4

    .line 164
    const-string/jumbo v5, "wireless_fast_charging"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    const/4 v3, 0x1

    .line 167
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    if-ne v3, v6, :cond_b

    :goto_4
    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 169
    .end local v3    # "value":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.app.ledcovergrace"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 174
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0b02fe

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 122
    :cond_6
    :goto_5
    return-void

    :cond_7
    move v5, v7

    .line 126
    goto/16 :goto_0

    .line 130
    :cond_8
    const/4 v4, 0x1

    .restart local v4    # "value":Z
    goto/16 :goto_1

    .line 148
    .end local v4    # "value":Z
    .restart local v0    # "isRoamingArea":Z
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "dualclock_menu_settings"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 148
    invoke-static {v8, v9}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 157
    .end local v0    # "isRoamingArea":Z
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v5

    .line 155
    if-eqz v5, :cond_3

    .line 158
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_3

    .restart local v3    # "value":I
    :cond_b
    move v6, v7

    .line 167
    goto :goto_4

    .line 176
    .end local v3    # "value":I
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0b02ff

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_5
.end method
