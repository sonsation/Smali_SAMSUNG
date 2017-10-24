.class public Lcom/samsung/android/settings/CloudAccountSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "CloudAccountSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/CloudAccountSettings$1;,
        Lcom/samsung/android/settings/CloudAccountSettings$2;,
        Lcom/samsung/android/settings/CloudAccountSettings$3;,
        Lcom/samsung/android/settings/CloudAccountSettings$4;,
        Lcom/samsung/android/settings/CloudAccountSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSmartSwitch:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/CloudAccountSettings$2;-><init>()V

    .line 356
    sput-object v0, Lcom/samsung/android/settings/CloudAccountSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 366
    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/CloudAccountSettings$3;-><init>()V

    .line 365
    sput-object v0, Lcom/samsung/android/settings/CloudAccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/CloudAccountSettings$1;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 430
    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/CloudAccountSettings$4;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 63
    return-void
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 312
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    return v1

    .line 315
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100308

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    new-instance v2, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 254
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 271
    .local v1, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v0, "intentData":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 275
    const v2, 0x7f0b10bb

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 277
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 279
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 282
    .end local v0    # "intentData":Landroid/content/Intent;
    .end local v1    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 226
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 102
    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->addPreferencesFromResource(I)V

    .line 112
    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 115
    const-string/jumbo v1, "smartswitch_preference"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    .line 117
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const-string/jumbo v1, "cloud_preference"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "account_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string/jumbo v1, "privacy_preference"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "smartswitch_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledJanskyService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const-string/jumbo v1, "jansky_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v1, "cloud_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 132
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    .line 132
    if-nez v1, :cond_2

    .line 136
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    .line 132
    if-eqz v1, :cond_3

    .line 137
    :cond_2
    const-string/jumbo v1, "user_preference"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "privacy_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 141
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    const-string/jumbo v1, "privacy_preference"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "smartswitch_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 146
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "functions":Ljava/lang/String;
    const-string/jumbo v1, "smartswitch_preference"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 156
    const-string/jumbo v1, "desktopmode"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/CloudAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "CloudAndAccounts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    .line 161
    iget-object v6, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.easyMover"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 163
    const/4 v5, 0x0

    .line 164
    .local v5, "mMessage":Ljava/lang/CharSequence;
    const v6, 0x7f0b0b94

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "appName":Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const v7, 0x7f0b0448

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "mMessage":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 167
    .local v4, "mAlertDlg":Landroid/app/AlertDialog;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 170
    new-instance v7, Lcom/samsung/android/settings/CloudAccountSettings$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/CloudAccountSettings$5;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const v8, 0x7f0b05c9

    .line 167
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 199
    new-instance v7, Lcom/samsung/android/settings/CloudAccountSettings$6;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/CloudAccountSettings$6;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const/high16 v8, 0x1040000

    .line 167
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    .line 221
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "mAlertDlg":Landroid/app/AlertDialog;
    .end local v5    # "mMessage":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 207
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.easyMover"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 208
    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 217
    const-string/jumbo v6, "CloudAccountSettings"

    const-string/jumbo v7, "not found activity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "i":Landroid/content/Intent;
    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 287
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 289
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "CloudAndAccounts"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 293
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 286
    :cond_1
    return-void

    .line 291
    :cond_2
    const/4 v0, 0x0

    .local v0, "isDesktopMode":Z
    goto :goto_0

    .line 293
    .end local v0    # "isDesktopMode":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
