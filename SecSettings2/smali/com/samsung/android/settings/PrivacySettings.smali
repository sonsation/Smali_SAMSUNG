.class public Lcom/samsung/android/settings/PrivacySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/PrivacySettings$1;,
        Lcom/samsung/android/settings/PrivacySettings$2;,
        Lcom/samsung/android/settings/PrivacySettings$3;,
        Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static hasCorrectMyAccount:Z

.field private static mIsSamsungBackupEnabled:Z

.field private static mIsSamsungStorageEnabled:Z


# instance fields
.field private final PWD_MGR_CLSNAME:Ljava/lang/String;

.field private accountManager:Landroid/accounts/AccountManager;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDiagnostics:Landroid/preference/PreferenceScreen;

.field private mEnabled:Z

.field private mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mIntent:Landroid/content/Intent;

.field private mIsConnected:Z

.field private mManageData:Landroid/preference/PreferenceScreen;

.field private mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSamsungBackup:Landroid/preference/Preference;

.field private mSamsungBackupInActive:Landroid/preference/Preference;

.field private mSamsungRestore:Landroid/preference/Preference;

.field private mSamsungStorage:Landroid/preference/Preference;

.field private mSmartSwitch:Landroid/preference/Preference;

.field private mWaitingForConfirmationDialog:Z

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private sAutoRestart:Z

.field private switchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nonVisibleKeys"    # Ljava/util/Collection;

    .prologue
    invoke-static {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onBackUpClicked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onRestoreClicked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onStorageClicked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/PrivacySettings;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/PrivacySettings;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->updateAutoRestartSummary(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 118
    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    .line 119
    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    .line 963
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    .line 962
    sput-object v0, Lcom/samsung/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 132
    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 133
    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    .line 134
    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->sAutoRestart:Z

    .line 151
    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    .line 159
    const-string/jumbo v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    .line 355
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$1;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 466
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$2;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 487
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$3;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 84
    return-void
.end method

.method private addSamsungAccount()V
    .locals 8

    .prologue
    .line 917
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    .line 918
    const-string/jumbo v7, "com.osp.app.signin"

    .line 917
    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 919
    .local v5, "samsungAccount":[Landroid/accounts/Account;
    if-eqz v5, :cond_0

    .line 920
    array-length v6, v5

    if-nez v6, :cond_0

    .line 921
    const-string/jumbo v0, "tj9u972o46"

    .line 922
    .local v0, "clientId":Ljava/lang/String;
    const-string/jumbo v1, "D234AE3C42F092D4334433173AE9E264"

    .line 923
    .local v1, "clientSecret":Ljava/lang/String;
    const-string/jumbo v4, "com.samsung.android.scloud"

    .line 924
    .local v4, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "client_id"

    const-string/jumbo v7, "tj9u972o46"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string/jumbo v6, "client_secret"

    const-string/jumbo v7, "D234AE3C42F092D4334433173AE9E264"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string/jumbo v6, "mypackage"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string/jumbo v6, "OSP_VER"

    const-string/jumbo v7, "OSP_02"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string/jumbo v6, "MODE"

    const-string/jumbo v7, "ADD_ACCOUNT"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const/16 v6, 0x3e9

    :try_start_0
    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .end local v0    # "clientId":Ljava/lang/String;
    .end local v1    # "clientSecret":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 932
    .restart local v0    # "clientId":Ljava/lang/String;
    .restart local v1    # "clientSecret":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 933
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 630
    const/4 v1, 0x1

    return v1

    .line 632
    :cond_0
    const-string/jumbo v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t resolve action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v1, 0x0

    return v1
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 951
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 952
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 953
    const-string/jumbo v1, "PrivacySettings"

    const-string/jumbo v2, "Device owner case. Backup and Restore needs to be disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v1, 0x1

    return v1

    .line 956
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 781
    const/4 v1, 0x0

    .line 784
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.scloud"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 785
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DisablingSamsungBackup"

    invoke-static {v2}, Lcom/android/settings/Utils;->isDisableSamsungCloudMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.scloud.quota"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 793
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    .line 794
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 780
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    return-void

    .line 786
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 787
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v5, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    goto :goto_0

    .line 796
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 797
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v5, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    goto :goto_1
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v17, "backup"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    .line 1014
    invoke-static/range {v17 .. v17}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    .line 1016
    .local v3, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v9, 0x0

    .line 1019
    .local v9, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1026
    .end local v9    # "isServiceActive":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 1027
    const-string/jumbo v18, "com.google.settings"

    const/16 v19, 0x0

    .line 1026
    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v17

    if-nez v17, :cond_10

    const/16 v16, 0x1

    .line 1029
    .local v16, "vendorSpecific":Z
    :goto_1
    if-eqz v16, :cond_0

    .line 1030
    const-string/jumbo v17, "backup_category"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_0
    if-nez v16, :cond_1

    if-eqz v9, :cond_2

    .line 1034
    :cond_1
    const-string/jumbo v17, "backup_inactive"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_2
    if-nez v16, :cond_11

    if-eqz v9, :cond_11

    .line 1042
    :goto_2
    const-string/jumbo v17, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    .line 1041
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1043
    const-string/jumbo v17, "factory_reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_3
    const-string/jumbo v17, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1047
    const-string/jumbo v17, "network_reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_4
    const-string/jumbo v17, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    .line 1049
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1051
    const-string/jumbo v17, "settings_reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1055
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1056
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x1

    .line 1058
    .local v7, "hasCIQ":Z
    :try_start_1
    const-string/jumbo v17, "com.carrieriq.tmobile.IQToggle"

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1064
    :goto_3
    const/4 v8, 0x0

    .line 1066
    .local v8, "hasMyAccountEnabled":Z
    :try_start_2
    const-string/jumbo v17, "com.tmobile.pr.mytmobile"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1067
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1068
    .local v14, "rawVersion":Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1069
    .local v15, "stringVerson":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 1071
    .local v11, "numVersion":F
    const-string/jumbo v17, "PrivacySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isSkipMyAccount: rawVersion = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", stringVerson = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1072
    const-string/jumbo v19, ", numVersion = "

    .line 1071
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const v17, 0x40666666    # 3.6f

    cmpl-float v17, v11, v17

    if-ltz v17, :cond_12

    const/16 v17, 0x1

    :goto_4
    sput-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 1076
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v8, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1077
    .local v8, "hasMyAccountEnabled":Z
    const-string/jumbo v17, "PrivacySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "hasMyAccountEnabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1086
    .end local v8    # "hasMyAccountEnabled":Z
    .end local v11    # "numVersion":F
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "rawVersion":Ljava/lang/String;
    .end local v15    # "stringVerson":Ljava/lang/String;
    :goto_5
    if-nez v7, :cond_6

    sget-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    if-eqz v17, :cond_7

    :cond_6
    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1087
    :cond_7
    const-string/jumbo v17, "collect_diagnostics"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    .line 1092
    sget-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v17, :cond_9

    const-string/jumbo v17, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1093
    :cond_9
    const-string/jumbo v17, "pref_backUp"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1094
    const-string/jumbo v17, "pref_restore"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_a
    sget-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v17, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1100
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1101
    :cond_b
    const-string/jumbo v17, "pref_auto_clean"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v19, ""

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1108
    .local v6, "functions":Ljava/lang/String;
    const-string/jumbo v17, "category_smart_switch"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1110
    sget-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-eqz v17, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1111
    :cond_d
    const-string/jumbo v17, "pref_storage"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1113
    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->isSupportAutoPowerOnOff()Z

    move-result v17

    if-nez v17, :cond_f

    .line 1114
    const-string/jumbo v17, "pref_auto_power_on_off"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_f
    return-void

    .line 1020
    .end local v6    # "functions":Ljava/lang/String;
    .end local v7    # "hasCIQ":Z
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "vendorSpecific":Z
    .restart local v9    # "isServiceActive":Z
    :catch_0
    move-exception v5

    .line 1021
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v17, "PrivacySettings"

    const-string/jumbo v18, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1026
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v9    # "isServiceActive":Z
    :cond_10
    const/16 v16, 0x0

    .restart local v16    # "vendorSpecific":Z
    goto/16 :goto_1

    .line 1037
    :cond_11
    const-string/jumbo v17, "backup_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1038
    const-string/jumbo v17, "auto_restore"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1039
    const-string/jumbo v17, "configure_account"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1059
    .restart local v7    # "hasCIQ":Z
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v4

    .line 1060
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    .line 1061
    const-string/jumbo v17, "PrivacySettings"

    const-string/jumbo v18, "Package not found : IQToggle"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1074
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v8, "hasMyAccountEnabled":Z
    .restart local v11    # "numVersion":F
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "rawVersion":Ljava/lang/String;
    .restart local v15    # "stringVerson":Ljava/lang/String;
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1081
    .end local v8    # "hasMyAccountEnabled":Z
    .end local v11    # "numVersion":F
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "rawVersion":Ljava/lang/String;
    .end local v15    # "stringVerson":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1082
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 1083
    const-string/jumbo v17, "PrivacySettings"

    const-string/jumbo v18, "NumberFormatException : MyAccount version"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1078
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v4

    .line 1079
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 1080
    const-string/jumbo v17, "PrivacySettings"

    const-string/jumbo v18, "NameNotFoundException : MyAccount"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1097
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_13
    const-string/jumbo v17, "samsung_backup_inactive"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 869
    const-string/jumbo v4, "connectivity"

    .line 868
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 871
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 872
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 874
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 876
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 878
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 879
    return v5

    .line 881
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 882
    return v5

    .line 884
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 885
    return v5

    .line 889
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_2
    return v6
.end method

.method private static isSupportAutoPowerOnOff()Z
    .locals 3

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "result":Z
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTO_POWER_ON_OFF"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    const/4 v0, 0x1

    .line 662
    :cond_0
    return v0
.end method

.method private onBackUpClicked()V
    .locals 5

    .prologue
    .line 802
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 803
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud"

    const-string/jumbo v4, "com.samsung.android.scloud.backup.SamsungBackup"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 804
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 806
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 820
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 801
    return-void

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 817
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 818
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private onRestoreClicked()V
    .locals 5

    .prologue
    .line 823
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 824
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud"

    const-string/jumbo v4, "com.samsung.android.scloud.backup.ManualRestoreActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 825
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.scloud.backup.START_RESTORE_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 828
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 842
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 822
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 839
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 840
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 836
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private onStorageClicked()V
    .locals 5

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/PrivacySettings;->isConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    .line 847
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 848
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud.quota"

    const-string/jumbo v4, "com.samsung.android.scloud.quota.StorageList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 851
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 845
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 862
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 863
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 859
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private samsungAccountExists()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 906
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    .line 907
    const-string/jumbo v2, "com.osp.app.signin"

    .line 906
    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 908
    .local v0, "samsungAccount":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 909
    array-length v1, v0

    if-nez v1, :cond_0

    .line 910
    return v3

    .line 913
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private setBackupEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 541
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    .line 543
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    .line 544
    .local v1, "previousValue":Z
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 545
    if-eq v1, p1, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v1    # "previousValue":Z
    :cond_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrivacySettings"

    const-string/jumbo v3, "Error communicating with BackupManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 768
    if-eqz p1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 767
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b1831

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static shouldRemoveAutoRestart(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 648
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "rate":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    .line 650
    .local v0, "isTablet":Z
    const-string/jumbo v2, "PrivacySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Check the feature for In-Cell model : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-nez v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 652
    :cond_0
    const-string/jumbo v2, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-static {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    .line 651
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_full_data_backup_aware"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1834

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 524
    .local v0, "msg":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    .line 527
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 528
    const v2, 0x7f0b1832

    .line 527
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 529
    const v2, 0x104000a

    .line 527
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 530
    const/high16 v2, 0x1040000

    .line 527
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 512
    return-void

    .line 521
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1833

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p3, "isShow"    # Z

    .prologue
    .line 940
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 941
    if-eqz p3, :cond_1

    .line 942
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateAutoRestartSummary(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const v0, 0x7f0b1ad8

    .line 637
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 639
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 640
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 636
    :goto_1
    return-void

    .line 639
    :cond_0
    const v0, 0x7f0b01d3

    goto :goto_0

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 643
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1

    .line 642
    :cond_2
    const v0, 0x7f0b1ad9

    goto :goto_2
.end method

.method private updateToggles()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 671
    .local v9, "res":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 672
    .local v1, "backupEnabled":Z
    const/4 v2, 0x0

    .line 673
    .local v2, "configIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 674
    .local v3, "configSummary":Ljava/lang/String;
    const/4 v7, 0x0

    .line 675
    .local v7, "manageIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 677
    .local v8, "manageLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    .line 678
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v13, :cond_4

    .line 679
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 680
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 681
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 690
    :goto_0
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v13, :cond_6

    .line 691
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 697
    :cond_0
    :goto_1
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v13, :cond_1

    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-eqz v13, :cond_7

    .line 701
    :cond_1
    :goto_2
    :try_start_0
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    .line 702
    .local v1, "backupEnabled":Z
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v10

    .line 704
    .local v10, "transport":Ljava/lang/String;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v14, "config"

    .line 703
    invoke-direct {p0, v13, v14}, Lcom/samsung/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 706
    .local v2, "configIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "configSummary":Ljava/lang/String;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v14, "management"

    .line 707
    invoke-direct {p0, v13, v14}, Lcom/samsung/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 709
    .local v7, "manageIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 711
    .local v8, "manageLabel":Ljava/lang/String;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_2

    .line 712
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 713
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v1    # "backupEnabled":Z
    .end local v2    # "configIntent":Landroid/content/Intent;
    .end local v3    # "configSummary":Ljava/lang/String;
    .end local v7    # "manageIntent":Landroid/content/Intent;
    .end local v8    # "manageLabel":Ljava/lang/String;
    .end local v10    # "transport":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 728
    const-string/jumbo v14, "backup_auto_restore"

    .line 727
    invoke-static {v9, v14, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v11, :cond_a

    :goto_4
    invoke-virtual {v13, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 729
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 731
    const-string/jumbo v11, "backup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "configIntent : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-eqz v2, :cond_b

    move v4, v1

    .line 733
    :goto_5
    const-string/jumbo v11, "backup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "configureEnabled : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 735
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 736
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 738
    const-string/jumbo v11, "backup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "manageIntent : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    if-eqz v7, :cond_c

    move v6, v1

    .line 740
    .local v6, "manageEnabled":Z
    :goto_6
    if-eqz v6, :cond_d

    .line 741
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 742
    if-eqz v8, :cond_3

    .line 743
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 668
    :cond_3
    :goto_7
    return-void

    .line 683
    .end local v6    # "manageEnabled":Z
    .local v1, "backupEnabled":Z
    .local v2, "configIntent":Landroid/content/Intent;
    .local v3, "configSummary":Ljava/lang/String;
    .local v7, "manageIntent":Landroid/content/Intent;
    .local v8, "manageLabel":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 684
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 685
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 687
    :cond_5
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 693
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 694
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_1

    .line 698
    :cond_7
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_2

    .line 715
    .local v1, "backupEnabled":Z
    .local v2, "configIntent":Landroid/content/Intent;
    .local v3, "configSummary":Ljava/lang/String;
    .local v7, "manageIntent":Landroid/content/Intent;
    .local v8, "manageLabel":Ljava/lang/String;
    .restart local v10    # "transport":Ljava/lang/String;
    :cond_8
    :try_start_1
    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_9

    .line 716
    const v13, 0x7f0b1ad8

    .line 715
    :goto_8
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 720
    .end local v1    # "backupEnabled":Z
    .end local v2    # "configIntent":Landroid/content/Intent;
    .end local v3    # "configSummary":Ljava/lang/String;
    .end local v7    # "manageIntent":Landroid/content/Intent;
    .end local v8    # "manageLabel":Ljava/lang/String;
    .end local v10    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 722
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_2

    .line 723
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 717
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v1    # "backupEnabled":Z
    .restart local v2    # "configIntent":Landroid/content/Intent;
    .restart local v3    # "configSummary":Ljava/lang/String;
    .restart local v7    # "manageIntent":Landroid/content/Intent;
    .restart local v8    # "manageLabel":Ljava/lang/String;
    .restart local v10    # "transport":Ljava/lang/String;
    :cond_9
    const v13, 0x7f0b1ad9

    goto :goto_8

    .end local v1    # "backupEnabled":Z
    .end local v2    # "configIntent":Landroid/content/Intent;
    .end local v3    # "configSummary":Ljava/lang/String;
    .end local v7    # "manageIntent":Landroid/content/Intent;
    .end local v8    # "manageLabel":Ljava/lang/String;
    .end local v10    # "transport":Ljava/lang/String;
    :cond_a
    move v11, v12

    .line 727
    goto/16 :goto_4

    .line 732
    :cond_b
    const/4 v4, 0x0

    .local v4, "configureEnabled":Z
    goto/16 :goto_5

    .end local v4    # "configureEnabled":Z
    :cond_c
    move v6, v12

    .line 739
    goto :goto_6

    .line 747
    .restart local v6    # "manageEnabled":Z
    :cond_d
    const-string/jumbo v11, "backup_category"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 748
    .local v0, "backupCategory":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_3

    .line 749
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "logLabel"    # Ljava/lang/String;

    .prologue
    .line 755
    if-eqz p1, :cond_1

    .line 756
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 757
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 758
    .local v1, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 759
    :cond_0
    const/4 p1, 0x0

    .line 760
    .local p1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "PrivacySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 761
    const-string/jumbo v4, " fails to resolve; ignoring"

    .line 760
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 777
    const v0, 0x7f0b19a8

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 164
    const/16 v0, 0x51

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 591
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 592
    if-ne p1, v0, :cond_2

    .line 593
    if-ne p2, v0, :cond_1

    .line 595
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Succeed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 597
    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 598
    const v3, 0x7f0b1549

    move-object v5, v4

    .line 596
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Failed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 605
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 606
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Samsung Account added"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v7

    .line 611
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 613
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    if-nez p2, :cond_4

    .line 614
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Samsung Account Login : cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    :cond_4
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Samsung Account Login : other reasons"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 568
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 569
    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    .line 570
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 574
    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    .line 575
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 576
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    .line 173
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    const v22, 0x7f0800df

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 179
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 183
    .local v16, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 184
    .local v4, "actionBar":Landroid/app/ActionBar;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v22

    if-eqz v22, :cond_1

    if-eqz v4, :cond_1

    .line 185
    const v22, 0x7f0b043b

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 189
    :cond_1
    const-string/jumbo v22, "backup"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    .line 188
    invoke-static/range {v22 .. v22}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 191
    const-string/jumbo v22, "backup_data"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 196
    :cond_2
    const-string/jumbo v22, "factory_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 198
    const-string/jumbo v22, "auto_restore"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const-string/jumbo v22, "configure_account"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 204
    const-string/jumbo v22, "data_management"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    .line 206
    const-string/jumbo v22, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 207
    .local v15, "resetCategory":Landroid/preference/PreferenceCategory;
    const-string/jumbo v22, "pref_auto_clean"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    new-instance v23, Lcom/samsung/android/settings/PrivacySettings$4;

    invoke-direct/range {v23 .. v24}, Lcom/samsung/android/settings/PrivacySettings$4;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    const-string/jumbo v22, "pref_smartswitch"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    .line 220
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 221
    const-string/jumbo v22, "category_smart_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 222
    .local v19, "smartSwitchCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 224
    .end local v19    # "smartSwitchCategory":Landroid/preference/PreferenceCategory;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v18

    .line 227
    .local v18, "shouldRemoveAutoRestart":Z
    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->isSupportAutoPowerOnOff()Z

    move-result v8

    .line 228
    .local v8, "isSupportAutoPowerOnOff":Z
    if-eqz v18, :cond_4

    .line 229
    const-string/jumbo v22, "PrivacySettings"

    const-string/jumbo v23, "Auto reset not support model"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 233
    :cond_4
    if-nez v8, :cond_5

    .line 234
    const-string/jumbo v22, "pref_auto_power_on_off"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    .line 235
    .local v11, "mAutoPowerOnOff":Landroid/preference/PreferenceScreen;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v11, v15, v1}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 238
    .end local v11    # "mAutoPowerOnOff":Landroid/preference/PreferenceScreen;
    :cond_5
    if-eqz v18, :cond_6

    if-eqz v8, :cond_8

    .line 242
    :cond_6
    :goto_0
    const-string/jumbo v22, "category_samsungservices"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 243
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v6

    .line 244
    .local v6, "bidiformatter":Landroid/support/v4/text/BidiFormatter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    move-object/from16 v22, v0

    const v23, 0x7f0b0c5f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    const-string/jumbo v22, "pref_backUp"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 247
    const-string/jumbo v22, "pref_restore"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 249
    const-string/jumbo v22, "pref_storage"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 251
    const-string/jumbo v22, "samsung_backup_inactive"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    .line 253
    const-string/jumbo v22, "collect_diagnostics"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 256
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 257
    .local v10, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 258
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v17

    .line 259
    .local v17, "screenPreferenceCount":I
    add-int/lit8 v7, v17, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_b

    .line 260
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    .line 261
    .local v14, "preference":Landroid/preference/Preference;
    invoke-virtual {v14}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 262
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 239
    .end local v6    # "bidiformatter":Landroid/support/v4/text/BidiFormatter;
    .end local v7    # "i":I
    .end local v10    # "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "preference":Landroid/preference/Preference;
    .end local v17    # "screenPreferenceCount":I
    :cond_8
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v15, v1, v2}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 263
    .restart local v6    # "bidiformatter":Landroid/support/v4/text/BidiFormatter;
    .restart local v7    # "i":I
    .restart local v10    # "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "preference":Landroid/preference/Preference;
    .restart local v17    # "screenPreferenceCount":I
    :cond_9
    instance-of v0, v14, Landroid/preference/PreferenceCategory;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object v13, v14

    .line 264
    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 265
    .local v13, "pref":Landroid/preference/PreferenceCategory;
    invoke-virtual {v13}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v21

    .line 266
    .local v21, "subPreferenceCount":I
    add-int/lit8 v9, v21, -0x1

    .local v9, "j":I
    :goto_2
    if-ltz v9, :cond_7

    .line 267
    invoke-virtual {v13, v9}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    .line 268
    .local v20, "subPreference":Landroid/preference/Preference;
    invoke-virtual/range {v20 .. v20}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 269
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 274
    .end local v9    # "j":I
    .end local v13    # "pref":Landroid/preference/PreferenceCategory;
    .end local v14    # "preference":Landroid/preference/Preference;
    .end local v20    # "subPreference":Landroid/preference/Preference;
    .end local v21    # "subPreferenceCount":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 275
    .local v5, "arg":Landroid/os/Bundle;
    if-eqz v5, :cond_c

    .line 276
    const-string/jumbo v22, "menu"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 277
    .local v12, "menuName":Ljava/lang/String;
    if-eqz v12, :cond_c

    const-string/jumbo v22, "backup"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 278
    const-string/jumbo v22, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v22, "personal_data_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v22, "collect_diagnostics"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    .line 281
    if-eqz v4, :cond_c

    .line 282
    const v22, 0x7f0b0b27

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 287
    .end local v12    # "menuName":Ljava/lang/String;
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    .line 168
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    .line 582
    iget-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 581
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 322
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 336
    const-string/jumbo v2, "factory_reset"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    .line 337
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "jp.softbank.mb.passwordmanager"

    const-string/jumbo v3, "jp.softbank.mb.passwordmanager.Pwdmanager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v2, "FuncCode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string/jumbo v2, "ResultString"

    const-string/jumbo v3, "fghigklmn087"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return v4

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v2, "configure_account"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 352
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 292
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 295
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_1

    .line 296
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v2, v6

    .line 297
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v8, "isBackupAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "isBackupAllowed":I
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eq v0, v9, :cond_0

    if-ne v0, v5, :cond_7

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 300
    .end local v0    # "isBackupAllowed":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v4, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v8, "isFactoryResetAllowed"

    invoke-static {v4, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, "isFactoryResetAllowed":I
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eq v1, v9, :cond_2

    if-ne v1, v5, :cond_8

    :cond_2
    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 307
    .end local v1    # "isFactoryResetAllowed":I
    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v4, :cond_4

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    .line 311
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_5

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "sec_silent_auto_reset"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v3, v5

    .line 313
    .local v3, "state":Z
    :goto_2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/PrivacySettings;->updateAutoRestartSummary(Z)V

    .line 316
    .end local v3    # "state":Z
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 317
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 291
    :cond_6
    return-void

    .restart local v0    # "isBackupAllowed":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    :cond_7
    move v4, v6

    .line 298
    goto :goto_0

    .end local v0    # "isBackupAllowed":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v1    # "isFactoryResetAllowed":I
    :cond_8
    move v4, v6

    .line 302
    goto :goto_1

    .end local v1    # "isFactoryResetAllowed":I
    :cond_9
    move v3, v6

    .line 312
    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 561
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 562
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 557
    return-void
.end method
