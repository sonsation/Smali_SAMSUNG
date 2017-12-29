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

.field private mUserPreference:Landroid/preference/PreferenceScreen;


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
    .line 475
    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/CloudAccountSettings$2;-><init>()V

    .line 474
    sput-object v0, Lcom/samsung/android/settings/CloudAccountSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 484
    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/CloudAccountSettings$3;-><init>()V

    .line 483
    sput-object v0, Lcom/samsung/android/settings/CloudAccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/CloudAccountSettings$1;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 557
    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/CloudAccountSettings$4;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 66
    return-void
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 422
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 423
    const/4 v1, 0x1

    return v1

    .line 425
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f03f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    new-instance v2, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 362
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 379
    .local v1, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v0, "intentData":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 383
    const v2, 0x7f0b1427

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 385
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 387
    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 390
    .end local v0    # "intentData":Landroid/content/Intent;
    .end local v1    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 334
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v5, 0x7f08003c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->addPreferencesFromResource(I)V

    .line 121
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    const-string/jumbo v5, "cloud_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 123
    .local v4, "tabletSummary":Landroid/preference/Preference;
    const v5, 0x7f0b0d22

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 126
    .end local v4    # "tabletSummary":Landroid/preference/Preference;
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 129
    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledJanskyService(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    const-string/jumbo v5, "jansky_settings"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v5, "cloud_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 134
    :cond_1
    const-string/jumbo v5, "smartswitch_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    .line 136
    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 137
    const-string/jumbo v5, "cloud_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v5, "my_profile_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    const-string/jumbo v5, "privacy_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v5, "privacy_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v5, "smartswitch_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->checkMyProfile(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 148
    const-string/jumbo v5, "my_profile_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v5, "account_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 157
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 159
    .local v1, "isRemovedAccount":Z
    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    const-string/jumbo v5, "account_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x1

    .line 165
    :cond_4
    const-string/jumbo v5, "user_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/preference/PreferenceScreen;

    .line 166
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 168
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 169
    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v5

    .line 166
    if-nez v5, :cond_5

    .line 170
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    .line 166
    if-eqz v5, :cond_6

    .line 171
    :cond_5
    const-string/jumbo v5, "user_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 172
    if-eqz v1, :cond_6

    .line 173
    const-string/jumbo v5, "privacy_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 176
    :cond_6
    const/4 v2, 0x0

    .line 177
    .local v2, "isRemovedPrivacy":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_7

    .line 178
    const-string/jumbo v5, "privacy_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 179
    const/4 v2, 0x1

    .line 182
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "functions":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SMART_SWITCH"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 184
    const-string/jumbo v5, "setupwizard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 183
    if-nez v5, :cond_8

    .line 184
    const-string/jumbo v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 183
    if-nez v5, :cond_8

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_b

    .line 186
    :cond_8
    :goto_1
    const-string/jumbo v5, "smartswitch_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 187
    if-eqz v2, :cond_9

    .line 188
    const-string/jumbo v5, "privacy_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    .line 192
    :cond_9
    new-instance v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 194
    const-string/jumbo v5, "desktopmode"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 116
    return-void

    .line 151
    .end local v0    # "functions":Ljava/lang/String;
    .end local v1    # "isRemovedAccount":Z
    .end local v2    # "isRemovedPrivacy":Z
    :cond_a
    const-string/jumbo v5, "my_profile_preference"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 152
    .local v3, "myProfile":Landroid/preference/Preference;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b1217

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 185
    .end local v3    # "myProfile":Landroid/preference/Preference;
    .restart local v0    # "functions":Ljava/lang/String;
    .restart local v1    # "isRemovedAccount":Z
    .restart local v2    # "isRemovedPrivacy":Z
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v5

    .line 183
    if-eqz v5, :cond_9

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 412
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "CloudAndAccounts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 411
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 15
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 199
    const-string/jumbo v12, "cloud_preference"

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 200
    .local v3, "cloudPreference":Landroid/preference/Preference;
    const-string/jumbo v12, "my_profile_preference"

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 201
    .local v11, "profilePreference":Landroid/preference/Preference;
    iget-object v12, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "com.sec.android.easyMover"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 203
    const/4 v10, 0x0

    .line 204
    .local v10, "mMessage":Ljava/lang/CharSequence;
    const v12, 0x7f0b0d87

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "appName":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const v13, 0x7f0b0522

    invoke-virtual {p0, v13, v12}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "mMessage":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 207
    .local v9, "mAlertDlg":Landroid/app/AlertDialog;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 209
    const/4 v13, 0x1

    .line 207
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 210
    new-instance v13, Lcom/samsung/android/settings/CloudAccountSettings$5;

    invoke-direct {v13, p0}, Lcom/samsung/android/settings/CloudAccountSettings$5;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const v14, 0x7f0b0700

    .line 207
    invoke-virtual {v12, v14, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 239
    new-instance v13, Lcom/samsung/android/settings/CloudAccountSettings$6;

    invoke-direct {v13, p0}, Lcom/samsung/android/settings/CloudAccountSettings$6;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const/high16 v14, 0x1040000

    .line 207
    invoke-virtual {v12, v14, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    .line 329
    .end local v2    # "appName":Ljava/lang/String;
    .end local v9    # "mAlertDlg":Landroid/app/AlertDialog;
    .end local v10    # "mMessage":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v12

    return v12

    .line 247
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "com.sec.android.easyMover"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 248
    .local v7, "i":Landroid/content/Intent;
    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v7    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 256
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 257
    const-string/jumbo v12, "CloudAccountSettings"

    const-string/jumbo v13, "not found activity"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v7    # "i":Landroid/content/Intent;
    :cond_2
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 260
    .end local v7    # "i":Landroid/content/Intent;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "com.samsung.android.scloud"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 262
    const/4 v5, 0x0

    .line 263
    .local v5, "dialogTitle":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 264
    .local v4, "dialogMessage":Ljava/lang/CharSequence;
    const v12, 0x7f0b0563

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .restart local v2    # "appName":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const v13, 0x7f0b0527

    invoke-virtual {p0, v13, v12}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "dialogTitle":Ljava/lang/CharSequence;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const v13, 0x7f0b0528

    invoke-virtual {p0, v13, v12}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "dialogMessage":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 268
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 271
    const/4 v13, 0x1

    .line 268
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 272
    new-instance v13, Lcom/samsung/android/settings/CloudAccountSettings$7;

    invoke-direct {v13, p0}, Lcom/samsung/android/settings/CloudAccountSettings$7;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const v14, 0x7f0b0700

    .line 268
    invoke-virtual {v12, v14, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 301
    new-instance v13, Lcom/samsung/android/settings/CloudAccountSettings$8;

    invoke-direct {v13, p0}, Lcom/samsung/android/settings/CloudAccountSettings$8;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const/high16 v14, 0x1040000

    .line 268
    invoke-virtual {v12, v14, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 322
    .end local v1    # "alertDialog":Landroid/app/AlertDialog;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v4    # "dialogMessage":Ljava/lang/CharSequence;
    .end local v5    # "dialogTitle":Ljava/lang/CharSequence;
    :goto_1
    iget-object v12, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f03fa

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 322
    invoke-static {v12, v13}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 309
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "com.samsung.android.scloud"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 310
    .restart local v7    # "i":Landroid/content/Intent;
    if-eqz v7, :cond_5

    .line 311
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 317
    .end local v7    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v6

    .line 318
    .restart local v6    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 319
    const-string/jumbo v12, "CloudAccountSettings"

    const-string/jumbo v13, "not found activity"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v7    # "i":Landroid/content/Intent;
    :cond_5
    :try_start_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 314
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v12, "com.samsung.android.scloud"

    const-string/jumbo v13, "com.samsung.android.scloud.app.ui.splash.SplashActivity"

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 324
    .end local v7    # "i":Landroid/content/Intent;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_6
    if-eqz v11, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 325
    iget-object v12, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f03fb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 325
    invoke-static {v12, v13}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 397
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "CloudAndAccounts"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 399
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 401
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 394
    :cond_2
    return-void

    .line 399
    :cond_3
    const/4 v0, 0x0

    .local v0, "isDesktopMode":Z
    goto :goto_0

    .end local v0    # "isDesktopMode":Z
    :cond_4
    move v1, v3

    .line 401
    goto :goto_1

    :cond_5
    move v2, v3

    .line 403
    goto :goto_2
.end method
