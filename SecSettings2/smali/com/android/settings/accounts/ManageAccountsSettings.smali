.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManageAccountsSettings$1;,
        Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;

.field private mInstallReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 787
    new-instance v0, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 4

    .prologue
    .line 623
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 624
    .local v1, "prefs":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 625
    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceGroup;)V

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "pairedAccountType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 631
    if-eqz v1, :cond_1

    .line 632
    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceGroup;)V

    .line 622
    :cond_1
    return-void
.end method

.method private checkSCloudSyncSettingAvailable()Z
    .locals 10

    .prologue
    .line 211
    const-string/jumbo v0, "com.samsung.android.scloud"

    .line 212
    .local v0, "SAMSUNG_BACKUP_PACKAGENAME":Ljava/lang/String;
    const-string/jumbo v1, "sync_account_setting_version"

    .line 213
    .local v1, "SCLOUD_SYNCSETTINGMETA":Ljava/lang/String;
    const v2, 0x98bd90

    .line 214
    .local v2, "SYNC_SUPPORTED_VERSION":I
    const/4 v5, 0x0

    .line 217
    .local v5, "isSyncSettingAvailable":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.scloud"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 218
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 219
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 220
    .local v6, "metaDataMap":Landroid/os/Bundle;
    const-string/jumbo v7, "sync_account_setting_version"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "sync_account_setting_version"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const v8, 0x98bd90

    if-lt v7, v8, :cond_0

    .line 221
    const-string/jumbo v7, "CloudSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sync account setting version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "sync_account_setting_version"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    const/4 v5, 0x1

    .line 229
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "metaDataMap":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v5

    .line 225
    :catch_0
    move-exception v4

    .line 226
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkSCloudSyncSettingSupported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "isSCloudSettingEnable":Z
    if-eqz p1, :cond_0

    .line 235
    const-string/jumbo v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSCloudSettingEnable account_type ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v0, "com.osp.app.signin"

    .line 237
    .local v0, "SACCOUNT_TYPE":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->checkSCloudSyncSettingAvailable()Z

    move-result v2

    .line 237
    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    .end local v0    # "SACCOUNT_TYPE":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 239
    .restart local v0    # "SACCOUNT_TYPE":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 750
    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v9, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 752
    .local v0, "authDesc":Landroid/accounts/AuthenticatorDescription;
    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p1, p2, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 753
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 754
    return v7

    .line 756
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 757
    .local v4, "resolvedActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 759
    .local v5, "resolvedAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-boolean v8, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_2

    .line 760
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 761
    return v6

    .line 762
    :cond_1
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 763
    iget-object v9, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 762
    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 764
    return v6

    .line 767
    :cond_2
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 768
    .local v1, "authenticatorAppInf":Landroid/content/pm/ApplicationInfo;
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, v9, :cond_3

    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0

    .line 769
    .end local v1    # "authenticatorAppInf":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 770
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "AccountSettings"

    const-string/jumbo v8, "Intent considered unsafe due to exception."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    return v7
.end method

.method private isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    .line 569
    if-eqz v1, :cond_0

    .line 571
    invoke-static {p2, p3, p1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 569
    :cond_0
    return v0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 559
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 560
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 561
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget-object v3, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    const/4 v3, 0x1

    return v3

    .line 559
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 12
    .param p1, "sync"    # Z

    .prologue
    .line 376
    iget-object v10, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 377
    .local v9, "userId":I
    invoke-static {v9}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 378
    .local v8, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v10, "force"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 382
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 384
    .local v6, "pref":Landroid/preference/Preference;
    instance-of v10, v6, Lcom/android/settings/AccountPreference;

    if-eqz v10, :cond_5

    .line 385
    check-cast v6, Lcom/android/settings/AccountPreference;

    .end local v6    # "pref":Landroid/preference/Preference;
    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 387
    .local v0, "account":Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v10, v8

    if-ge v4, v10, :cond_2

    .line 388
    aget-object v7, v8, v4

    .line 389
    .local v7, "sa":Landroid/content/SyncAdapterType;
    aget-object v10, v8, v4

    iget-object v10, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 390
    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v10, v9}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v10

    .line 389
    if-eqz v10, :cond_0

    .line 392
    if-eqz p1, :cond_1

    .line 393
    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v10, v9, v2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 387
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 396
    :cond_1
    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v10, v9}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    .line 400
    .end local v7    # "sa":Landroid/content/SyncAdapterType;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v10

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v5

    .line 401
    .local v5, "pairedAccount":Landroid/accounts/Account;
    if-eqz v5, :cond_5

    .line 402
    const/4 v4, 0x0

    :goto_3
    array-length v10, v8

    if-ge v4, v10, :cond_5

    .line 403
    aget-object v7, v8, v4

    .line 404
    .restart local v7    # "sa":Landroid/content/SyncAdapterType;
    aget-object v10, v8, v4

    iget-object v10, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v11, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 405
    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    .line 404
    if-eqz v10, :cond_3

    .line 406
    if-eqz p1, :cond_4

    .line 407
    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v10, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 402
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 409
    :cond_4
    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_4

    .line 382
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "j":I
    .end local v5    # "pairedAccount":Landroid/accounts/Account;
    .end local v7    # "sa":Landroid/content/SyncAdapterType;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x102000a

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 375
    return-void
.end method

.method private showAccountsIfNeeded()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 583
    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 582
    invoke-virtual {v1, v11}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v6

    .line 584
    .local v6, "accounts":[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 585
    iput-object v12, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 586
    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 587
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v6

    .local v8, "n":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 588
    aget-object v2, v6, v7

    .line 590
    .local v2, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    :cond_1
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 593
    .local v4, "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 594
    .local v10, "showAccount":Z
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 595
    const/4 v10, 0x0

    .line 596
    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    array-length v12, v11

    move v1, v5

    :goto_1
    if-ge v1, v12, :cond_2

    aget-object v9, v11, v1

    .line 597
    .local v9, "requestedAuthority":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 598
    const/4 v10, 0x1

    .line 604
    .end local v9    # "requestedAuthority":Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 605
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 607
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 608
    .local v0, "preference":Lcom/android/settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 609
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_3

    .line 610
    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 587
    .end local v0    # "preference":Lcom/android/settings/AccountPreference;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "showAccount":Z
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 596
    .restart local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "requestedAuthority":Ljava/lang/String;
    .restart local v10    # "showAccount":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 614
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v4    # "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "requestedAuthority":Ljava/lang/String;
    .end local v10    # "showAccount":Z
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_6

    .line 615
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 580
    :goto_2
    return-void

    .line 618
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->finish()V

    goto :goto_2
.end method

.method private showSyncState()V
    .locals 38

    .prologue
    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    if-eqz v34, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->isFinishing()Z

    move-result v34

    if-eqz v34, :cond_1

    :cond_0
    return-void

    .line 440
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    .line 443
    .local v33, "userId":I
    invoke-static/range {v33 .. v33}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v13

    .line 445
    .local v13, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/4 v7, 0x0

    .line 446
    .local v7, "anySyncFailed":Z
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 449
    .local v14, "date":Ljava/util/Date;
    invoke-static/range {v33 .. v33}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v26

    .line 450
    .local v26, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v32, Ljava/util/HashSet;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashSet;-><init>()V

    .line 451
    .local v32, "userFacing":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "k":I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v21, v0

    .local v21, "n":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 452
    aget-object v24, v26, v17

    .line 453
    .local v24, "sa":Landroid/content/SyncAdapterType;
    invoke-virtual/range {v24 .. v24}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v34

    if-eqz v34, :cond_2

    .line 454
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 457
    .end local v24    # "sa":Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    .local v12, "count":I
    :goto_1
    if-ge v15, v12, :cond_1c

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v23

    .line 459
    .local v23, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v34, v0

    if-nez v34, :cond_5

    .line 457
    :cond_4
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v5, v23

    .line 463
    check-cast v5, Lcom/android/settings/AccountPreference;

    .line 464
    .local v5, "accountPref":Lcom/android/settings/AccountPreference;
    invoke-virtual {v5}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 465
    .local v4, "account":Landroid/accounts/Account;
    const/16 v27, 0x0

    .line 466
    .local v27, "syncCount":I
    const-wide/16 v18, 0x0

    .line 467
    .local v18, "lastSuccessTime":J
    const/16 v29, 0x0

    .line 468
    .local v29, "syncIsFailing":Z
    invoke-virtual {v5}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v8

    .line 469
    .local v8, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v30, 0x0

    .line 470
    .local v30, "syncingNow":Z
    if-eqz v8, :cond_c

    .line 471
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v30    # "syncingNow":Z
    .local v10, "authority$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 472
    .local v9, "authority":Ljava/lang/String;
    move/from16 v0, v33

    invoke-static {v4, v9, v0}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v25

    .line 474
    .local v25, "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1, v4, v9}, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncEnabled(ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result v28

    .line 475
    .local v28, "syncEnabled":Z
    invoke-static {v4, v9}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    .line 476
    .local v11, "authorityIsPending":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v9}, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 477
    .local v6, "activelySyncing":Z
    if-eqz v25, :cond_9

    if-eqz v28, :cond_9

    .line 479
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_9

    .line 480
    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v34

    .line 481
    const/16 v35, 0x1

    .line 480
    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_8

    const/16 v34, 0x1

    :goto_4
    move/from16 v20, v34

    .line 482
    .local v20, "lastSyncFailed":Z
    :goto_5
    if-eqz v20, :cond_6

    if-eqz v6, :cond_a

    .line 486
    :cond_6
    :goto_6
    or-int v30, v30, v6

    .line 487
    .local v30, "syncingNow":Z
    if-eqz v25, :cond_7

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v34, v0

    cmp-long v34, v18, v34

    if-gez v34, :cond_7

    .line 488
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    .line 490
    :cond_7
    if-eqz v28, :cond_b

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    const/16 v34, 0x1

    :goto_7
    add-int v27, v27, v34

    goto :goto_3

    .line 480
    .end local v20    # "lastSyncFailed":Z
    .end local v30    # "syncingNow":Z
    :cond_8
    const/16 v34, 0x0

    goto :goto_4

    .line 477
    :cond_9
    const/16 v20, 0x0

    goto :goto_5

    .line 482
    .restart local v20    # "lastSyncFailed":Z
    :cond_a
    if-nez v11, :cond_6

    .line 483
    const/16 v29, 0x1

    .line 484
    const/4 v7, 0x1

    goto :goto_6

    .line 490
    .restart local v30    # "syncingNow":Z
    :cond_b
    const/16 v34, 0x0

    goto :goto_7

    .line 493
    .end local v6    # "activelySyncing":Z
    .end local v9    # "authority":Ljava/lang/String;
    .end local v10    # "authority$iterator":Ljava/util/Iterator;
    .end local v11    # "authorityIsPending":Z
    .end local v20    # "lastSyncFailed":Z
    .end local v25    # "status":Landroid/content/SyncStatusInfo;
    .end local v28    # "syncEnabled":Z
    .local v30, "syncingNow":Z
    :cond_c
    const-string/jumbo v34, "AccountSettings"

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 494
    const-string/jumbo v34, "AccountSettings"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "no syncadapters found for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v30    # "syncingNow":Z
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v34

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v22

    .line 500
    .local v22, "pairedAccount":Landroid/accounts/Account;
    if-eqz v22, :cond_17

    .line 501
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_8
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_17

    .line 502
    aget-object v24, v26, v16

    .line 503
    .restart local v24    # "sa":Landroid/content/SyncAdapterType;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 504
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v25

    .line 505
    .restart local v25    # "status":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 506
    invoke-static/range {v33 .. v33}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v34

    .line 505
    if-eqz v34, :cond_12

    .line 507
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v34

    if-lez v34, :cond_11

    const/16 v28, 0x1

    .line 508
    .local v28, "syncEnabled":Z
    :goto_9
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    .line 509
    .restart local v11    # "authorityIsPending":Z
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 510
    .restart local v6    # "activelySyncing":Z
    if-eqz v25, :cond_14

    if-eqz v28, :cond_14

    .line 512
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_14

    .line 513
    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v34

    .line 514
    const/16 v35, 0x1

    .line 513
    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_13

    const/16 v34, 0x1

    :goto_a
    move/from16 v20, v34

    .line 515
    .restart local v20    # "lastSyncFailed":Z
    :goto_b
    if-eqz v20, :cond_e

    if-eqz v6, :cond_15

    .line 519
    :cond_e
    :goto_c
    or-int v30, v30, v6

    .line 520
    .local v30, "syncingNow":Z
    if-eqz v25, :cond_f

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v34, v0

    cmp-long v34, v18, v34

    if-gez v34, :cond_f

    .line 521
    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v18, v0

    .line 523
    :cond_f
    if-eqz v28, :cond_16

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    const/16 v34, 0x1

    :goto_d
    add-int v27, v27, v34

    .line 501
    .end local v6    # "activelySyncing":Z
    .end local v11    # "authorityIsPending":Z
    .end local v20    # "lastSyncFailed":Z
    .end local v25    # "status":Landroid/content/SyncStatusInfo;
    .end local v28    # "syncEnabled":Z
    .end local v30    # "syncingNow":Z
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 507
    .restart local v25    # "status":Landroid/content/SyncStatusInfo;
    :cond_11
    const/16 v28, 0x0

    .restart local v28    # "syncEnabled":Z
    goto :goto_9

    .line 505
    .end local v28    # "syncEnabled":Z
    :cond_12
    const/16 v28, 0x0

    .restart local v28    # "syncEnabled":Z
    goto :goto_9

    .line 513
    .restart local v6    # "activelySyncing":Z
    .restart local v11    # "authorityIsPending":Z
    :cond_13
    const/16 v34, 0x0

    goto :goto_a

    .line 510
    :cond_14
    const/16 v20, 0x0

    goto :goto_b

    .line 515
    .restart local v20    # "lastSyncFailed":Z
    :cond_15
    if-nez v11, :cond_e

    .line 516
    const/16 v29, 0x1

    .line 517
    const/4 v7, 0x1

    goto :goto_c

    .line 523
    .restart local v30    # "syncingNow":Z
    :cond_16
    const/16 v34, 0x0

    goto :goto_d

    .line 528
    .end local v6    # "activelySyncing":Z
    .end local v11    # "authorityIsPending":Z
    .end local v16    # "j":I
    .end local v20    # "lastSyncFailed":Z
    .end local v24    # "sa":Landroid/content/SyncAdapterType;
    .end local v25    # "status":Landroid/content/SyncStatusInfo;
    .end local v28    # "syncEnabled":Z
    .end local v30    # "syncingNow":Z
    :cond_17
    if-eqz v29, :cond_18

    .line 529
    const/16 v34, 0x2

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 530
    :cond_18
    if-nez v27, :cond_19

    .line 531
    const/16 v34, 0x1

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 532
    :cond_19
    if-lez v27, :cond_1b

    .line 533
    if-eqz v30, :cond_1a

    .line 534
    const/16 v34, 0x3

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 536
    :cond_1a
    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 537
    const-wide/16 v34, 0x0

    cmp-long v34, v18, v34

    if-lez v34, :cond_4

    .line 538
    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    .line 539
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 540
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/accounts/ManageAccountsSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    .line 541
    .local v31, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    .line 542
    const/16 v36, 0x0

    aput-object v31, v35, v36

    const v36, 0x7f0b16f9

    .line 541
    move-object/from16 v0, v34

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 546
    .end local v31    # "timeString":Ljava/lang/String;
    :cond_1b
    const/16 v34, 0x1

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 550
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountPref":Lcom/android/settings/AccountPreference;
    .end local v8    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "lastSuccessTime":J
    .end local v22    # "pairedAccount":Landroid/accounts/Account;
    .end local v23    # "pref":Landroid/preference/Preference;
    .end local v27    # "syncCount":I
    .end local v29    # "syncIsFailing":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v35, v0

    if-eqz v7, :cond_1d

    const/16 v34, 0x0

    :goto_e
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 436
    return-void

    .line 550
    :cond_1d
    const/16 v34, 0x8

    goto :goto_e
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 9
    .param p1, "acctPref"    # Lcom/android/settings/AccountPreference;

    .prologue
    const/4 v6, 0x1

    .line 245
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->checkSCloudSyncSettingSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string/jumbo v7, "com.samsung.android.scloud.SCLOUD_MAIN"

    .line 247
    .local v7, "SCLOUD_SYNC_SETTING_INTENT":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "relative_link"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    const v0, 0x8000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v8}, Lcom/android/settings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void

    .line 254
    .end local v7    # "SCLOUD_SYNC_SETTING_INTENT":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string/jumbo v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 258
    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const v3, 0x7f0b16ea

    move-object v5, p0

    .line 257
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 244
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "prefs"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 677
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 678
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 679
    .local v3, "pref":Landroid/preference/Preference;
    instance-of v5, v3, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 680
    check-cast v5, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v5}, Lcom/android/settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceGroup;)V

    .line 682
    :cond_0
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 683
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 698
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 699
    const-string/jumbo v6, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 698
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 702
    new-instance v5, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;

    .line 703
    const-class v6, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 704
    const v7, 0x7f0b10bb

    .line 702
    invoke-direct {v5, p0, v6, v7}, Lcom/android/settings/accounts/ManageAccountsSettings$FragmentStarter;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 739
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/high16 v6, 0x10000

    .line 706
    invoke-virtual {v2, v1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 708
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_3

    .line 709
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 712
    :cond_3
    const-string/jumbo v5, "account"

    iget-object v6, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 713
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 714
    new-instance v5, Lcom/android/settings/accounts/ManageAccountsSettings$2;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 675
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0xb

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 575
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 176
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 181
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 778
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 780
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 781
    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 782
    .local v0, "accPref":Lcom/android/settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 778
    .end local v0    # "accPref":Lcom/android/settings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "account_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string/jumbo v2, "account_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 119
    :cond_0
    const v2, 0x7f08009b

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 123
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.coreapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v2, "com.samsung.android.coreapps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x0

    .line 271
    const v2, 0x7f0b0338

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 272
    .local v1, "syncNow":Landroid/view/MenuItem;
    const v2, 0x7f0b0339

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 275
    .local v0, "syncCancel":Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 264
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 156
    const v2, 0x7f040180

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 164
    .local v0, "list":Landroid/widget/ListView;
    invoke-static {p2, v1, v0, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 165
    return-object v1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onDestroy()V

    .line 135
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.coreapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException while unregister"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 364
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 366
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    .line 367
    return v1

    .line 369
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    .line 370
    return v1

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 187
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 202
    instance-of v0, p2, Lcom/android/settings/AccountPreference;

    if-eqz v0, :cond_0

    .line 203
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 207
    const/4 v0, 0x1

    return v0

    .line 205
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 18
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 280
    invoke-super/range {p0 .. p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 288
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 289
    .local v13, "syncNow":Landroid/view/MenuItem;
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 291
    .local v12, "syncCancel":Landroid/view/MenuItem;
    if-eqz v13, :cond_b

    if-eqz v12, :cond_b

    .line 292
    const/4 v4, 0x0

    .line 293
    .local v4, "isSyncableAccount":Z
    const/4 v3, 0x0

    .line 294
    .local v3, "isSyncEnabled":Z
    const/4 v5, 0x0

    .line 296
    .local v5, "isSyncing":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 297
    .local v14, "userId":I
    invoke-static {v14}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v11

    .line 298
    .local v11, "syncAdapters":[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v15

    if-ge v1, v15, :cond_9

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 300
    .local v9, "pref":Landroid/preference/Preference;
    instance-of v15, v9, Lcom/android/settings/AccountPreference;

    if-nez v15, :cond_1

    .line 298
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .restart local v9    # "pref":Landroid/preference/Preference;
    :cond_1
    check-cast v9, Lcom/android/settings/AccountPreference;

    .end local v9    # "pref":Landroid/preference/Preference;
    invoke-virtual {v9}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    .line 305
    .local v7, "originalAccount":Landroid/accounts/Account;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v15, v11

    if-ge v6, v15, :cond_0

    .line 306
    aget-object v10, v11, v6

    .line 307
    .local v10, "sa":Landroid/content/SyncAdapterType;
    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_5

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v15, v14}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_5

    .line 308
    const/4 v4, 0x1

    .line 309
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v15, v14}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 310
    const/4 v3, 0x1

    .line 312
    :cond_2
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v15}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 313
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v15, v14}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    .line 312
    if-eqz v15, :cond_4

    .line 314
    :cond_3
    const/4 v5, 0x1

    .line 318
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string/jumbo v16, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v17, "isGoogleAccountsAutoSyncAllowed"

    invoke-static/range {v15 .. v17}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 319
    .local v2, "isGoogleAccountsAutoSyncAllowed":I
    const/4 v15, -0x1

    if-eq v2, v15, :cond_5

    const/4 v15, 0x1

    if-eq v2, v15, :cond_5

    .line 320
    if-eqz v10, :cond_5

    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v15, :cond_5

    const-string/jumbo v15, "com.google"

    iget-object v0, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 319
    if-eqz v15, :cond_5

    .line 321
    const/4 v4, 0x0

    .line 326
    .end local v2    # "isGoogleAccountsAutoSyncAllowed":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v15

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/accounts/SnsAccountManager;->getPairedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v8

    .line 327
    .local v8, "pairedAccount":Landroid/accounts/Account;
    if-eqz v8, :cond_8

    if-eqz v10, :cond_8

    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 328
    iget-object v15, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v0, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v10}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v15, v14}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_8

    .line 329
    const/4 v4, 0x1

    .line 330
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v15, v14}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 331
    const/4 v3, 0x1

    .line 333
    :cond_6
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v15}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 334
    iget-object v15, v10, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v8, v15, v14}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    .line 333
    if-eqz v15, :cond_8

    .line 335
    :cond_7
    const/4 v5, 0x1

    .line 305
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 342
    .end local v6    # "j":I
    .end local v7    # "originalAccount":Landroid/accounts/Account;
    .end local v8    # "pairedAccount":Landroid/accounts/Account;
    .end local v10    # "sa":Landroid/content/SyncAdapterType;
    :cond_9
    if-eqz v4, :cond_a

    .line 343
    invoke-static {v14}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v15

    if-eqz v15, :cond_c

    if-nez v3, :cond_c

    .line 344
    :cond_a
    const/4 v15, 0x1

    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 345
    const/4 v15, 0x0

    invoke-interface {v12, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 346
    const/4 v15, 0x0

    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 347
    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 348
    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x66

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    .end local v1    # "i":I
    .end local v3    # "isSyncEnabled":Z
    .end local v4    # "isSyncableAccount":Z
    .end local v5    # "isSyncing":Z
    .end local v11    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .end local v14    # "userId":I
    :cond_b
    :goto_2
    return-void

    .line 351
    .restart local v1    # "i":I
    .restart local v3    # "isSyncEnabled":Z
    .restart local v4    # "isSyncableAccount":Z
    .restart local v5    # "isSyncing":Z
    .restart local v11    # "syncAdapters":[Landroid/content/SyncAdapterType;
    .restart local v14    # "userId":I
    :cond_c
    if-eqz v5, :cond_d

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    invoke-interface {v12, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    const/4 v15, 0x1

    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 354
    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 355
    invoke-interface {v13}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0xff

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 351
    :cond_d
    const/4 v15, 0x1

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showSyncState()V

    .line 145
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 197
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->showSyncState()V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 427
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 423
    :cond_0
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
