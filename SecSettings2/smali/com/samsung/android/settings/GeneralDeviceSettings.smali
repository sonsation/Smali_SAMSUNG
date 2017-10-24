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
    .line 388
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/GeneralDeviceSettings$2;-><init>()V

    .line 387
    sput-object v0, Lcom/samsung/android/settings/GeneralDeviceSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 398
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/GeneralDeviceSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 111
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$1;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 548
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$4;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 58
    return-void
.end method

.method private setDiagnostic(Z)V
    .locals 5
    .param p1, "v"    # Z

    .prologue
    .line 536
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 537
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "samsung_errorlog_agree"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 542
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v1, "i2":Landroid/content/Intent;
    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 535
    return-void

    .line 536
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "i2":Landroid/content/Intent;
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    new-instance v4, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 235
    const/4 v2, 0x0

    .line 237
    .local v2, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 238
    .local v1, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$AccountSettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 241
    const v4, 0x7f0b10bc

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 243
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_0

    .line 244
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .end local v2    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 245
    .local v2, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "menu"

    const-string/jumbo v5, "backup"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iput-object v0, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 249
    const v4, 0x7f0b0b06

    iput v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 252
    .end local v2    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 253
    .local v3, "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 256
    const v4, 0x7f0b171a

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 258
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 259
    if-eqz v2, :cond_1

    .line 260
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 262
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 264
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 266
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v3    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "sSalesCode":Ljava/lang/String;
    const v7, 0x7f080078

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->addPreferencesFromResource(I)V

    .line 133
    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 137
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 138
    const-string/jumbo v7, "battery_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    .line 139
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 140
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 141
    const-string/jumbo v7, "storage_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    .line 142
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 143
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 144
    const-string/jumbo v7, "memory_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    .line 145
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 146
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 153
    :goto_0
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    .line 154
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_0

    .line 155
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 156
    const-string/jumbo v10, "samsung_errorlog_agree"

    .line 155
    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 158
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/GeneralDeviceSettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$5;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    const-string/jumbo v7, "reset_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 178
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 179
    :cond_2
    const-string/jumbo v7, "reset_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 182
    :cond_3
    const/4 v0, 0x0

    .line 183
    .local v0, "c":Landroid/content/Context;
    const/4 v4, 0x0

    .line 184
    .local v4, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, ""

    .line 186
    .local v1, "collectionString":Ljava/lang/String;
    const-string/jumbo v6, "com.sec.android.app.setupwizard"

    .line 187
    .local v6, "vzwPackageName":Ljava/lang/String;
    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 190
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v6, v9}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 191
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v9, "diagnostic_terms_vzw"

    const-string/jumbo v10, "string"

    invoke-virtual {v4, v9, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    .end local v0    # "c":Landroid/content/Context;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_4
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    .line 202
    const-string/jumbo v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 201
    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 203
    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v7

    .line 201
    if-eqz v7, :cond_7

    .line 204
    :cond_6
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 207
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 208
    :cond_8
    const-string/jumbo v7, "device_info_contact_us"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 212
    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v9, "CscFeature_Common_SupportSamsungAdId"

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_a

    .line 213
    const-string/jumbo v7, "samsung_ad_id"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 217
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 218
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_ConfigMarketInfoVariation"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Disable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 217
    if-nez v7, :cond_b

    .line 219
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    .line 217
    if-eqz v7, :cond_c

    .line 220
    :cond_b
    const-string/jumbo v7, "marketing_information"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 223
    :cond_c
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_d

    const-string/jumbo v7, "device_info_contact_us"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_d

    const-string/jumbo v7, "samsung_ad_id"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_d

    const-string/jumbo v7, "marketing_information"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_d

    .line 224
    const-string/jumbo v7, "support"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 228
    :cond_d
    new-instance v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 124
    return-void

    .line 148
    .end local v1    # "collectionString":Ljava/lang/String;
    .end local v6    # "vzwPackageName":Ljava/lang/String;
    :cond_e
    const-string/jumbo v7, "battery_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v7, "storage_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v7, "memory_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move v7, v8

    .line 155
    goto/16 :goto_1

    .line 195
    .restart local v1    # "collectionString":Ljava/lang/String;
    .restart local v6    # "vzwPackageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v7, "GeneralDeviceSettings"

    const-string/jumbo v9, "error getting resource"

    invoke-static {v7, v9, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 193
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "GeneralDeviceSettings"

    const-string/jumbo v9, "error getting activity of create package context"

    invoke-static {v7, v9, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "GeneralManagement"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 307
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, "battery_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "storage_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 310
    const-string/jumbo v8, "memory_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 309
    if-eqz v8, :cond_5

    .line 312
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

    .line 313
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 314
    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, "smartManagerPkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 317
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 318
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "battery_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 319
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_BATTERY"

    .line 325
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 328
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_4

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 329
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    .line 359
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

    .line 320
    .local v0, "action":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "smartManagerPkgName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "storage_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 321
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_STORAGE"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 323
    .local v0, "action":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_RAM"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 331
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

    .line 336
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

    .line 337
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Contact us is clicked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 340
    .restart local v3    # "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100304

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Activity Not Found"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 346
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v8, "marketing_information"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 348
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Marketing information is clicked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 351
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.osp.app.signin"

    .line 352
    const-string/jumbo v9, "com.osp.app.signin.ReceiveMarketingActivity"

    .line 351
    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 354
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Marketing information launch error"

    invoke-static {v8, v9, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 272
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "GeneralManagement"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 281
    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 278
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    :cond_0
    return-void
.end method

.method public showReportDiagnosticinfoDialog()V
    .locals 13

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "c":Landroid/content/Context;
    const/4 v7, 0x0

    .line 489
    .local v7, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, ""

    .line 490
    .local v1, "collectionString":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    .line 492
    .local v8, "sales_code":Ljava/lang/String;
    const-string/jumbo v10, "VZW"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 494
    .local v6, "isVZW":Z
    :goto_0
    const-string/jumbo v9, "com.sec.android.app.setupwizard"

    .line 495
    .local v9, "vzwPackageName":Ljava/lang/String;
    const-string/jumbo v4, "com.sec.android.app.SecSetupWizard"

    .line 498
    .local v4, "globalPackageName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 499
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 501
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 502
    const/4 v11, 0x2

    .line 501
    invoke-virtual {v10, v9, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 503
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 504
    const-string/jumbo v11, "diagnostic_terms_vzw"

    const-string/jumbo v12, "string"

    invoke-virtual {v7, v11, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 503
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 525
    .end local v0    # "c":Landroid/content/Context;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 526
    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error log collection disclaimer is null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setDiagnostic(Z)V

    .line 486
    :goto_2
    return-void

    .line 492
    .end local v4    # "globalPackageName":Ljava/lang/String;
    .end local v6    # "isVZW":Z
    .end local v9    # "vzwPackageName":Ljava/lang/String;
    .local v0, "c":Landroid/content/Context;
    .local v7, "resources":Landroid/content/res/Resources;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isVZW":Z
    goto :goto_0

    .line 506
    .restart local v4    # "globalPackageName":Ljava/lang/String;
    .restart local v9    # "vzwPackageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 508
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 509
    const/4 v11, 0x2

    .line 508
    invoke-virtual {v10, v4, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 511
    .local v0, "c":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    .line 512
    const-string/jumbo v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 511
    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 514
    const-string/jumbo v11, "error_log_collection_k_serviceinfo"

    const-string/jumbo v12, "string"

    invoke-virtual {v7, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 513
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 521
    .end local v0    # "c":Landroid/content/Context;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 522
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting Resource"

    invoke-static {v10, v11, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 519
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 520
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting activity of create package context"

    invoke-static {v10, v11, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 529
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "com.samsung.settings.ReportDiagnosticinfo"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 530
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
