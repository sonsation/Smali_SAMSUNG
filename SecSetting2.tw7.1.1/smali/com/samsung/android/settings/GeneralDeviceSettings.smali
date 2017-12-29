.class public Lcom/samsung/android/settings/GeneralDeviceSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GeneralDeviceSettings$1;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$2;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$3;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$4;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mBatterySettingsPref:Landroid/preference/PreferenceScreen;

.field mContext:Landroid/content/Context;

.field private mDateTimePref:Landroid/preference/Preference;

.field private mDiagnosticInfo:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMemorySettingsPref:Landroid/preference/PreferenceScreen;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mStorageSettingsPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GeneralDeviceSettings;Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setDiagnostic(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/GeneralDeviceSettings$2;-><init>()V

    .line 431
    sput-object v0, Lcom/samsung/android/settings/GeneralDeviceSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 442
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/GeneralDeviceSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$1;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 599
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$4;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 62
    return-void
.end method

.method private setDiagnostic(Z)V
    .locals 5
    .param p1, "v"    # Z

    .prologue
    .line 587
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 588
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "samsung_errorlog_agree"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 593
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v1, "i2":Landroid/content/Intent;
    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 586
    return-void

    .line 587
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "i2":Landroid/content/Intent;
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method private updateLanguageAndInputPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 306
    const-string/jumbo v2, "device_info_language_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 307
    .local v0, "languagePref":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 308
    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getSamsungkeypadBadgeCount(Landroid/content/Context;)I

    move-result v1

    .line 309
    .local v1, "temp":I
    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getSamsungkeypadBadgeCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_1

    .line 310
    const v2, 0x7f040243

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 303
    .end local v1    # "temp":I
    :cond_0
    return-void

    .line 312
    .restart local v1    # "temp":I
    :cond_1
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f03f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 252
    new-instance v4, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const/4 v2, 0x0

    .line 255
    .local v2, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    const/4 v0, 0x0

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .end local v1    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 258
    .local v1, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$AccountSettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 261
    const v4, 0x7f0b1428

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 263
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 272
    .end local v2    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_1
    :goto_0
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 273
    .local v3, "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 276
    const v4, 0x7f0b1aca

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 277
    if-eqz v1, :cond_2

    .line 278
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 280
    :cond_2
    if-eqz v2, :cond_3

    .line 281
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 283
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 285
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 287
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 250
    return-void

    .line 264
    .restart local v2    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_5
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .end local v2    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 265
    .local v2, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "menu"

    const-string/jumbo v5, "backup"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iput-object v0, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 269
    const v4, 0x7f0b0cee

    iput v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "sSalesCode":Ljava/lang/String;
    const v9, 0x7f08007b

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->addPreferencesFromResource(I)V

    .line 141
    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 145
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 146
    const-string/jumbo v9, "battery_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    .line 147
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 148
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 149
    const-string/jumbo v9, "storage_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    .line 150
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 151
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 152
    const-string/jumbo v9, "memory_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    .line 153
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 154
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 161
    :goto_0
    const-string/jumbo v9, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    .line 162
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_0

    .line 163
    iget-object v11, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 164
    const-string/jumbo v12, "samsung_errorlog_agree"

    .line 163
    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 166
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    new-instance v11, Lcom/samsung/android/settings/GeneralDeviceSettings$5;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$5;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_1

    .line 182
    const-string/jumbo v9, "reset_category"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v9, "reset_preference"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 186
    :cond_1
    const/4 v0, 0x0

    .line 187
    .local v0, "c":Landroid/content/Context;
    const/4 v5, 0x0

    .line 188
    .local v5, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, ""

    .line 190
    .local v1, "collectionString":Ljava/lang/String;
    const-string/jumbo v8, "com.sec.android.app.setupwizard"

    .line 191
    .local v8, "vzwPackageName":Ljava/lang/String;
    const-string/jumbo v9, "VZW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "diagnostic_data_version"

    invoke-static {v9, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "diagnosticDataVersion":Ljava/lang/String;
    const-string/jumbo v7, "diagnostic_terms_vzw"

    .line 195
    .local v7, "stringId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "diagnostic_terms_vzw_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 199
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v8, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 200
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v11, "string"

    invoke-virtual {v5, v7, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    .end local v0    # "c":Landroid/content/Context;
    .end local v2    # "diagnosticDataVersion":Ljava/lang/String;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v7    # "stringId":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    .line 211
    const-string/jumbo v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 210
    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 212
    const-string/jumbo v9, "VZW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v9

    .line 210
    if-eqz v9, :cond_6

    .line 213
    :cond_5
    const-string/jumbo v9, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 216
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 217
    :cond_7
    const-string/jumbo v9, "device_info_contact_us"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 221
    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v11, "CscFeature_Common_SupportSamsungAdId"

    invoke-virtual {v9, v11, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_9

    .line 222
    const-string/jumbo v9, "samsung_ad_id"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 226
    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 227
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v11, "CscFeature_Common_ConfigMarketInfoVariation"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "Disable"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 226
    if-nez v9, :cond_a

    .line 228
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v9

    .line 226
    if-eqz v9, :cond_b

    .line 229
    :cond_a
    const-string/jumbo v9, "marketing_information"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 232
    :cond_b
    const-string/jumbo v9, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "device_info_contact_us"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "samsung_ad_id"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "marketing_information"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-nez v9, :cond_c

    .line 233
    const-string/jumbo v9, "support"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 236
    :cond_c
    const-string/jumbo v9, "device_info_date_time_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDateTimePref:Landroid/preference/Preference;

    .line 237
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDateTimePref:Landroid/preference/Preference;

    if-eqz v9, :cond_d

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isAvailableNewTimeZone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 239
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDateTimePref:Landroid/preference/Preference;

    const v10, 0x7f040243

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 246
    :cond_d
    :goto_3
    new-instance v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 132
    return-void

    .line 156
    .end local v1    # "collectionString":Ljava/lang/String;
    .end local v8    # "vzwPackageName":Ljava/lang/String;
    :cond_e
    const-string/jumbo v9, "battery_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v9, "storage_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v9, "memory_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move v9, v10

    .line 163
    goto/16 :goto_1

    .line 204
    .restart local v1    # "collectionString":Ljava/lang/String;
    .restart local v8    # "vzwPackageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 205
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v9, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting resource"

    invoke-static {v9, v11, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const-string/jumbo v9, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 201
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 202
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting activity of create package context"

    invoke-static {v9, v11, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const-string/jumbo v9, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 241
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDateTimePref:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "GeneralManagement"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 349
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, "battery_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "storage_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 352
    const-string/jumbo v8, "memory_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 351
    if-eqz v8, :cond_5

    .line 354
    :cond_0
    const-string/jumbo v8, "GeneralDeviceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is clicked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 356
    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "smartManagerPkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 359
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 360
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "battery_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 361
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_BATTERY"

    .line 367
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 370
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_4

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 371
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    .line 401
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "smartManagerPkgName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    return v8

    .line 362
    .local v0, "action":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "smartManagerPkgName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "storage_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 363
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_STORAGE"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 365
    .local v0, "action":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_RAM"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 373
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string/jumbo v8, "GeneralDeviceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start sm not available : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 378
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "smartManagerPkgName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "device_info_contact_us"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 379
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Contact us is clicked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 382
    .restart local v3    # "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f03f5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Activity Not Found"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 388
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v8, "marketing_information"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 390
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Marketing information is clicked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 393
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.osp.app.signin"

    .line 394
    const-string/jumbo v9, "com.osp.app.signin.ReceiveMarketingActivity"

    .line 393
    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 396
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 397
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Marketing information launch error"

    invoke-static {v8, v9, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 293
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->updateLanguageAndInputPreference()V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "GeneralManagement"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 323
    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 320
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 341
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    :cond_0
    return-void
.end method

.method public showReportDiagnosticinfoDialog()V
    .locals 15

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "c":Landroid/content/Context;
    const/4 v8, 0x0

    .line 534
    .local v8, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, ""

    .line 535
    .local v1, "collectionString":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 537
    .local v9, "sales_code":Ljava/lang/String;
    const-string/jumbo v12, "VZW"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v7, 0x1

    .line 539
    .local v7, "isVZW":Z
    :goto_0
    const-string/jumbo v11, "com.sec.android.app.setupwizard"

    .line 540
    .local v11, "vzwPackageName":Ljava/lang/String;
    const-string/jumbo v5, "com.sec.android.app.SecSetupWizard"

    .line 543
    .local v5, "globalPackageName":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "diagnostic_data_version"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "diagnosticDataVersion":Ljava/lang/String;
    const-string/jumbo v10, "diagnostic_terms_vzw"

    .line 546
    .local v10, "stringId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 547
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "diagnostic_terms_vzw_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 552
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 553
    const/4 v13, 0x2

    .line 552
    invoke-virtual {v12, v11, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 554
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 555
    const-string/jumbo v13, "string"

    invoke-virtual {v8, v10, v13, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 554
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 576
    .end local v0    # "c":Landroid/content/Context;
    .end local v2    # "diagnosticDataVersion":Ljava/lang/String;
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v10    # "stringId":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 577
    const-string/jumbo v12, "GeneralDeviceSettings"

    const-string/jumbo v13, "error log collection disclaimer is null"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setDiagnostic(Z)V

    .line 531
    :goto_2
    return-void

    .line 537
    .end local v5    # "globalPackageName":Ljava/lang/String;
    .end local v7    # "isVZW":Z
    .end local v11    # "vzwPackageName":Ljava/lang/String;
    .local v0, "c":Landroid/content/Context;
    .local v8, "resources":Landroid/content/res/Resources;
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "isVZW":Z
    goto :goto_0

    .line 557
    .restart local v5    # "globalPackageName":Ljava/lang/String;
    .restart local v11    # "vzwPackageName":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 559
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 560
    const/4 v13, 0x2

    .line 559
    invoke-virtual {v12, v5, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 562
    .local v0, "c":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    .line 563
    const-string/jumbo v13, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 562
    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 564
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 565
    const-string/jumbo v13, "error_log_collection_k_serviceinfo"

    const-string/jumbo v14, "string"

    invoke-virtual {v8, v13, v14, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 564
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 572
    .end local v0    # "c":Landroid/content/Context;
    .end local v8    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 573
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v12, "GeneralDeviceSettings"

    const-string/jumbo v13, "error getting Resource"

    invoke-static {v12, v13, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 570
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 571
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v12, "GeneralDeviceSettings"

    const-string/jumbo v13, "error getting activity of create package context"

    invoke-static {v12, v13, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 580
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.samsung.settings.ReportDiagnosticinfo"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 581
    .local v6, "i":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
