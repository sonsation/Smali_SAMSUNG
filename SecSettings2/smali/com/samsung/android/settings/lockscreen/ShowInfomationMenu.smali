.class public Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ShowInfomationMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;,
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field private static INFO_AND_QUICK_TOOLS:I

.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFromCoverSetting:Z

.field private mLockAppShortcut:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mQuickTools:Landroid/preference/PreferenceScreen;

.field private mWeatherSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mQuickTools:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 72
    const-string/jumbo v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    .line 84
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    .line 458
    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;-><init>()V

    .line 457
    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    .line 501
    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;-><init>(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 58
    return-void
.end method

.method private InitValue()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 132
    const-string/jumbo v3, "ShowInfomationMenu"

    const-string/jumbo v6, "onResume() 1"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string/jumbo v3, "lock_screen_dualclock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    .line 134
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "dualclock_menu_settings"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    .line 137
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 138
    const-string/jumbo v3, "oversea"

    const-string/jumbo v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 139
    .local v1, "isRoamingArea":Z
    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b08d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0b61

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "sText":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 148
    .end local v1    # "isRoamingArea":Z
    .end local v2    # "sText":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v3, "lock_screen_menu_owner_infomation"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settingslib/RestrictedPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 149
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 152
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 157
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updateOwnerInfo()V

    .line 160
    :cond_1
    const-string/jumbo v3, "lock_screen_additional_info"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mQuickTools:Landroid/preference/PreferenceScreen;

    .line 161
    const-string/jumbo v3, "lock_app_shortcut"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    .line 163
    const-string/jumbo v3, "lock_screen_settings_weather"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    .line 164
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getRegisteredCityCount(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_9

    .line 166
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->isWeatherState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 167
    const v3, 0x7f0b1952

    .line 166
    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 173
    :cond_2
    :goto_4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v4, 0x7f0b08d2

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setTitle(I)V

    .line 175
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    const v4, 0x7f0b08d7

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(I)V

    .line 131
    :cond_3
    return-void

    :cond_4
    move v3, v5

    .line 136
    goto/16 :goto_0

    .line 144
    .restart local v1    # "isRoamingArea":Z
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "dualclock_menu_settings"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 154
    .end local v1    # "isRoamingArea":Z
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v9}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 155
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_5
    invoke-virtual {v3, v5}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_7
    move v5, v4

    goto :goto_5

    .line 167
    :cond_8
    const v3, 0x7f0b1953

    goto :goto_3

    .line 169
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private RemoveMenu()V
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "ShowInfomationMenu"

    const-string/jumbo v1, "onResume() 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string/jumbo v0, "lock_screen_dualclock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    const-string/jumbo v0, "lock_screen_additional_info"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportWeatherStateSettings()Z

    move-result v0

    if-nez v0, :cond_9

    .line 201
    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v0

    .line 207
    if-eqz v0, :cond_a

    .line 209
    :cond_5
    const-string/jumbo v0, "lock_app_shortcut"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 180
    :cond_6
    :goto_2
    return-void

    .line 185
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 198
    :cond_8
    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_9
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_a
    const-string/jumbo v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockAppShortcut:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static existWeatherWidgetOnLauncher(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 341
    if-nez p0, :cond_0

    .line 342
    const-string/jumbo v1, "ShowInfomationMenu"

    const-string/jumbo v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v10

    .line 346
    :cond_0
    const-string/jumbo v6, "WIDGET_COUNT"

    .line 347
    .local v6, "WEATHER_DAEMON_COLUMN_WIDGET_COUNT":Ljava/lang/String;
    const/4 v8, 0x0

    .line 349
    .local v8, "widgetCnt":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 351
    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 352
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "WIDGET_COUNT"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    .line 351
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 353
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    const-string/jumbo v1, "WIDGET_COUNT"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 357
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-lez v8, :cond_3

    move v1, v9

    :goto_0
    return v1

    :cond_3
    move v1, v10

    goto :goto_0
.end method

.method public static getRegisteredCityCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 437
    const/4 v6, 0x0

    .line 438
    .local v6, "count":I
    if-nez p0, :cond_0

    .line 439
    const/4 v1, -0x1

    return v1

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 443
    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "LOCATION"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 444
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 445
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 448
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 454
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return v6

    .line 451
    :cond_3
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public static getWidgetCount(Landroid/content/Context;)I
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 364
    const/4 v6, 0x0

    .line 365
    .local v6, "count":I
    if-nez p0, :cond_0

    .line 366
    return v6

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 371
    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "WIDGET_COUNT"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 372
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 373
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 380
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 383
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v6

    .line 376
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 377
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isWeatherState(Landroid/content/Context;)Z
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 414
    const/4 v8, 0x0

    .line 415
    .local v8, "result":I
    if-nez p0, :cond_0

    .line 416
    return v10

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 420
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 421
    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 422
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 423
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 430
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 433
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-lez v8, :cond_3

    move v1, v9

    :goto_1
    return v1

    .line 426
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 427
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, v10

    .line 433
    goto :goto_1
.end method

.method public static showWeatherWidgetMessageDialog(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    if-nez p0, :cond_0

    .line 388
    const-string/jumbo v2, "ShowInfomationMenu"

    const-string/jumbo v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 392
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const v2, 0x7f0b08b3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "dialogMsg":Ljava/lang/String;
    :goto_0
    const v2, 0x7f0b08b1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 400
    const/4 v3, 0x1

    .line 398
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 401
    new-instance v3, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;

    invoke-direct {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;-><init>()V

    const v4, 0x7f0b0438

    .line 398
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 386
    return-void

    .line 397
    .end local v1    # "dialogMsg":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0b08b4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dialogMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateOwnerInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 217
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 222
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "info":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v3

    .line 230
    if-eqz v3, :cond_3

    .line 232
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    const v4, 0x7f0b08b2

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 241
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 235
    .local v2, "useQuicktools":Z
    const v1, 0x7f0b10b0

    .line 236
    .local v1, "summary":I
    if-eqz v2, :cond_4

    .line 237
    const v1, 0x7f0b08d8

    .line 239
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->INFO_AND_QUICK_TOOLS:I

    .line 91
    sget v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->INFO_AND_QUICK_TOOLS:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updateOwnerInfo()V

    .line 248
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->addPreferencesFromResource(I)V

    .line 100
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    .line 108
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "InformationAndQuickTools"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 258
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 260
    .local v1, "value":Z
    const-string/jumbo v2, "lock_screen_dualclock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "dualclock_menu_settings"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v1, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v5, v4}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    return v3

    :cond_1
    move v2, v4

    .line 261
    goto :goto_0

    .line 265
    :cond_2
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 14
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v0, "lock_screen_dualclock"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 275
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 274
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->existWeatherWidgetOnLauncher(Landroid/content/Context;)Z

    move-result v7

    .line 283
    .local v7, "existWeatherWidgetToLauncher":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "easy_mode_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v6, 0x1

    .line 284
    .local v6, "easylaunchermode":Z
    :goto_1
    if-nez v7, :cond_3

    if-eqz v6, :cond_5

    .line 285
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    const-string/jumbo v0, "PACKAGE"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 293
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 292
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v6    # "easylaunchermode":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "easylaunchermode":Z
    goto :goto_1

    .line 290
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto :goto_2

    .line 297
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    .end local v6    # "easylaunchermode":Z
    .end local v7    # "existWeatherWidgetToLauncher":Z
    :cond_7
    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_8

    .line 302
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "com.android.settings.WeatherSettings"

    const v3, 0x7f0b08b1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 306
    .end local v5    # "args":Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 310
    :cond_9
    const-string/jumbo v0, "lock_screen_menu_owner_infomation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v11

    .line 312
    .local v11, "prev":Landroid/app/Fragment;
    if-eqz v11, :cond_a

    .line 313
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 316
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 317
    .local v13, "useQuicktools":Z
    const v12, 0x7f0b10b1

    .line 318
    .local v12, "titleRes":I
    if-eqz v13, :cond_b

    .line 319
    const v12, 0x7f0b08d7

    .line 321
    :cond_b
    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v10

    .line 322
    .local v10, "newFragment":Landroid/app/DialogFragment;
    const/16 v0, 0xc8

    invoke-virtual {v10, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v10, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 325
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 324
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_c

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 114
    const-string/jumbo v0, "ShowInfomationMenu"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->InitValue()V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->RemoveMenu()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "InformationAndQuickTools"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 112
    return-void
.end method
