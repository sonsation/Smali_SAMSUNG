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
        Lcom/samsung/android/settings/PrivacySettings$4;,
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

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnabled:Z

.field private mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mIntent:Landroid/content/Intent;

.field private mIsConnected:Z

.field private mManageData:Landroid/preference/PreferenceScreen;

.field private mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mResetSettings:Landroid/preference/PreferenceScreen;

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

.method static synthetic -get10(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

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

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

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

    .line 118
    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 126
    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    .line 127
    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    .line 1067
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    .line 1066
    sput-object v0, Lcom/samsung/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 140
    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->sAutoRestart:Z

    .line 159
    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 163
    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    .line 167
    const-string/jumbo v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    .line 403
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$1;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 514
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$2;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 535
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$3;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1251
    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$4;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 90
    return-void
.end method

.method private addSamsungAccount()V
    .locals 8

    .prologue
    .line 1021
    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    .line 1022
    const-string/jumbo v7, "com.osp.app.signin"

    .line 1021
    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 1023
    .local v5, "samsungAccount":[Landroid/accounts/Account;
    if-eqz v5, :cond_0

    .line 1024
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1025
    const-string/jumbo v0, "tj9u972o46"

    .line 1026
    .local v0, "clientId":Ljava/lang/String;
    const-string/jumbo v1, "D234AE3C42F092D4334433173AE9E264"

    .line 1027
    .local v1, "clientSecret":Ljava/lang/String;
    const-string/jumbo v4, "com.samsung.android.scloud"

    .line 1028
    .local v4, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "client_id"

    const-string/jumbo v7, "tj9u972o46"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const-string/jumbo v6, "client_secret"

    const-string/jumbo v7, "D234AE3C42F092D4334433173AE9E264"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const-string/jumbo v6, "mypackage"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const-string/jumbo v6, "OSP_VER"

    const-string/jumbo v7, "OSP_02"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    const-string/jumbo v6, "MODE"

    const-string/jumbo v7, "ADD_ACCOUNT"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const/16 v6, 0x3e9

    :try_start_0
    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    .end local v0    # "clientId":Ljava/lang/String;
    .end local v1    # "clientSecret":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1036
    .restart local v0    # "clientId":Ljava/lang/String;
    .restart local v1    # "clientSecret":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1037
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 675
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 676
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 678
    const/4 v1, 0x1

    return v1

    .line 680
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

    .line 681
    const/4 v1, 0x0

    return v1
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1055
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1056
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1057
    const-string/jumbo v1, "PrivacySettings"

    const-string/jumbo v2, "Device owner case. Backup and Restore needs to be disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v1, 0x1

    return v1

    .line 1060
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 828
    const/4 v1, 0x0

    .line 831
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.scloud"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 832
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DisablingSamsungBackup"

    invoke-static {v2}, Lcom/android/settings/Utils;->isDisableSamsungCloudMenu(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 838
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/Utils;->checkSamsungCloudEnabler(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    sput-boolean v5, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    .line 844
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.scloud.quota"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 845
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_2

    .line 846
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 827
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    return-void

    .line 833
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 834
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v6, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    goto :goto_0

    .line 848
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 849
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v6, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    goto :goto_1
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 18
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
    .line 1145
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v15, "backup"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .line 1144
    invoke-static {v15}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 1146
    .local v1, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v7, 0x0

    .line 1149
    .local v7, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-interface {v1, v15}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1156
    .end local v7    # "isServiceActive":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1157
    const-string/jumbo v16, "com.google.settings"

    const/16 v17, 0x0

    .line 1156
    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v15

    if-nez v15, :cond_f

    const/4 v14, 0x1

    .line 1159
    .local v14, "vendorSpecific":Z
    :goto_1
    if-eqz v14, :cond_0

    .line 1160
    const-string/jumbo v15, "backup_category"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1163
    :cond_0
    if-nez v14, :cond_1

    if-eqz v7, :cond_2

    .line 1164
    :cond_1
    const-string/jumbo v15, "backup_inactive"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1166
    :cond_2
    if-nez v14, :cond_10

    if-eqz v7, :cond_10

    .line 1181
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1182
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    .line 1184
    .local v5, "hasCIQ":Z
    :try_start_1
    const-string/jumbo v15, "com.carrieriq.tmobile.IQToggle"

    const/16 v16, 0x80

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1190
    :goto_3
    const/4 v6, 0x0

    .line 1192
    .local v6, "hasMyAccountEnabled":Z
    :try_start_2
    const-string/jumbo v15, "com.tmobile.pr.mytmobile"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 1193
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1194
    .local v12, "rawVersion":Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1195
    .local v13, "stringVerson":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1197
    .local v9, "numVersion":F
    const-string/jumbo v15, "PrivacySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isSkipMyAccount: rawVersion = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", stringVerson = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1198
    const-string/jumbo v17, ", numVersion = "

    .line 1197
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const v15, 0x40666666    # 3.6f

    cmpl-float v15, v9, v15

    if-ltz v15, :cond_11

    const/4 v15, 0x1

    :goto_4
    sput-boolean v15, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 1202
    iget-object v15, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v15, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1203
    .local v6, "hasMyAccountEnabled":Z
    const-string/jumbo v15, "PrivacySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "hasMyAccountEnabled: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1212
    .end local v6    # "hasMyAccountEnabled":Z
    .end local v9    # "numVersion":F
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "rawVersion":Ljava/lang/String;
    .end local v13    # "stringVerson":Ljava/lang/String;
    :goto_5
    if-nez v5, :cond_3

    sget-boolean v15, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    if-eqz v15, :cond_4

    :cond_3
    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1213
    :cond_4
    const-string/jumbo v15, "collect_diagnostics"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1217
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    .line 1218
    sget-boolean v15, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v15, :cond_6

    const-string/jumbo v15, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1219
    :cond_6
    const-string/jumbo v15, "pref_backUp"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1220
    const-string/jumbo v15, "pref_restore"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1222
    :cond_7
    sget-boolean v15, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v15, :cond_12

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1226
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1227
    :cond_8
    const-string/jumbo v15, "pref_auto_clean"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v15

    const-string/jumbo v16, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v17, ""

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1231
    .local v4, "functions":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v15

    const-string/jumbo v16, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SMART_SWITCH"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string/jumbo v15, "setupwizard"

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string/jumbo v15, "none"

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 1232
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v15

    .line 1231
    if-nez v15, :cond_a

    .line 1233
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v15

    .line 1231
    if-eqz v15, :cond_b

    .line 1234
    :cond_a
    const-string/jumbo v15, "category_smart_switch"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_b
    sget-boolean v15, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-eqz v15, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1237
    :cond_c
    const-string/jumbo v15, "pref_storage"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->isSupportAutoPowerOnOff()Z

    move-result v15

    if-nez v15, :cond_e

    .line 1240
    const-string/jumbo v15, "pref_auto_power_on_off"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_e
    return-void

    .line 1150
    .end local v4    # "functions":Ljava/lang/String;
    .end local v5    # "hasCIQ":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "vendorSpecific":Z
    .restart local v7    # "isServiceActive":Z
    :catch_0
    move-exception v3

    .line 1151
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v15, "PrivacySettings"

    const-string/jumbo v16, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1156
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v7    # "isServiceActive":Z
    :cond_f
    const/4 v14, 0x0

    .restart local v14    # "vendorSpecific":Z
    goto/16 :goto_1

    .line 1167
    :cond_10
    const-string/jumbo v15, "backup_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1168
    const-string/jumbo v15, "auto_restore"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1169
    const-string/jumbo v15, "configure_account"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1185
    .restart local v5    # "hasCIQ":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 1186
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .line 1187
    const-string/jumbo v15, "PrivacySettings"

    const-string/jumbo v16, "Package not found : IQToggle"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1200
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v6, "hasMyAccountEnabled":Z
    .restart local v9    # "numVersion":F
    .restart local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v12    # "rawVersion":Ljava/lang/String;
    .restart local v13    # "stringVerson":Ljava/lang/String;
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1207
    .end local v6    # "hasMyAccountEnabled":Z
    .end local v9    # "numVersion":F
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "rawVersion":Ljava/lang/String;
    .end local v13    # "stringVerson":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 1208
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    sput-boolean v15, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 1209
    const-string/jumbo v15, "PrivacySettings"

    const-string/jumbo v16, "NumberFormatException : MyAccount version"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1204
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 1205
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v15, 0x0

    sput-boolean v15, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 1206
    const-string/jumbo v15, "PrivacySettings"

    const-string/jumbo v16, "NameNotFoundException : MyAccount"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1223
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_12
    const-string/jumbo v15, "samsung_backup_inactive"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 973
    const-string/jumbo v4, "connectivity"

    .line 972
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 975
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 976
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 978
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 980
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 982
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 983
    return v5

    .line 985
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 986
    return v5

    .line 988
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 989
    return v5

    .line 993
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_2
    return v6
.end method

.method private static isSupportAutoPowerOnOff()Z
    .locals 3

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
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

    .line 706
    const/4 v0, 0x1

    .line 709
    :cond_0
    return v0
.end method

.method private onBackUpClicked()V
    .locals 5

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.scloud"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 856
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud"

    const-string/jumbo v4, "com.samsung.android.scloud.backup.SamsungBackup"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 857
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 859
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 874
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0398

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 853
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 868
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 869
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

    .line 866
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 872
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showDownloadSamsungCloudDialog()V

    goto :goto_0
.end method

.method private onRestoreClicked()V
    .locals 5

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.scloud"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 879
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud"

    const-string/jumbo v4, "com.samsung.android.scloud.backup.ManualRestoreActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 880
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.scloud.backup.START_RESTORE_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 883
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 898
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0399

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 876
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 892
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 893
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

    .line 890
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 896
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showDownloadSamsungCloudDialog()V

    goto :goto_0
.end method

.method private onStorageClicked()V
    .locals 5

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/PrivacySettings;->isConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    .line 951
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 952
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud.quota"

    const-string/jumbo v4, "com.samsung.android.scloud.quota.StorageList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 955
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 949
    :goto_0
    return-void

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 966
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 967
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

    .line 963
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

    .line 1010
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    .line 1011
    const-string/jumbo v2, "com.osp.app.signin"

    .line 1010
    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1012
    .local v0, "samsungAccount":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 1013
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1014
    return v3

    .line 1017
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private setBackupEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 589
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    .line 591
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    .line 592
    .local v1, "previousValue":Z
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 593
    if-eq v1, p1, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v1    # "previousValue":Z
    :cond_0
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrivacySettings"

    const-string/jumbo v3, "Error communicating with BackupManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 815
    if-eqz p1, :cond_0

    .line 816
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 814
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b1a5a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static shouldRemoveAutoRestart(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 695
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "rate":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    .line 697
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

    .line 698
    if-nez v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 699
    :cond_0
    const-string/jumbo v2, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-static {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    .line 698
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showDownloadSamsungCloudDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 902
    const/4 v3, 0x0

    .line 903
    .local v3, "dialogTitle":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 904
    .local v2, "dialogMessage":Ljava/lang/CharSequence;
    const v4, 0x7f0b0563

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "appName":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f0b0527

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, "dialogTitle":Ljava/lang/CharSequence;
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f0b0528

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "dialogMessage":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 908
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 912
    new-instance v5, Lcom/samsung/android/settings/PrivacySettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/PrivacySettings$6;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    const v6, 0x7f0b0700

    .line 908
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 941
    new-instance v5, Lcom/samsung/android/settings/PrivacySettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/PrivacySettings$7;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    const/high16 v6, 0x1040000

    .line 908
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 901
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    return-void
.end method

.method private showEraseBackupDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_full_data_backup_aware"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1a5d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 572
    .local v0, "msg":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    .line 575
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 576
    const v2, 0x7f0b1a5b

    .line 575
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 577
    const v2, 0x104000a

    .line 575
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 578
    const/high16 v2, 0x1040000

    .line 575
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 560
    return-void

    .line 569
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1a5c

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
    .line 1044
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1045
    if-eqz p3, :cond_1

    .line 1046
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateAutoRestartSummary(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 685
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 686
    if-eqz p1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    const v1, 0x7f0b1d08

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    .line 691
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 684
    return-void

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0264

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0263

    goto :goto_1
.end method

.method private updateToggles()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 716
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 718
    .local v9, "res":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 719
    .local v1, "backupEnabled":Z
    const/4 v2, 0x0

    .line 720
    .local v2, "configIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 721
    .local v3, "configSummary":Ljava/lang/String;
    const/4 v7, 0x0

    .line 722
    .local v7, "manageIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 724
    .local v8, "manageLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    .line 725
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v13, :cond_4

    .line 726
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 727
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 728
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 737
    :goto_0
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v13, :cond_6

    .line 738
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 744
    :cond_0
    :goto_1
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v13, :cond_1

    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-eqz v13, :cond_7

    .line 748
    :cond_1
    :goto_2
    :try_start_0
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    .line 749
    .local v1, "backupEnabled":Z
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v10

    .line 751
    .local v10, "transport":Ljava/lang/String;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v14, "config"

    .line 750
    invoke-direct {p0, v13, v14}, Lcom/samsung/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 753
    .local v2, "configIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "configSummary":Ljava/lang/String;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v14, "management"

    .line 754
    invoke-direct {p0, v13, v14}, Lcom/samsung/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 756
    .local v7, "manageIntent":Landroid/content/Intent;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 758
    .local v8, "manageLabel":Ljava/lang/String;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_2

    .line 759
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 760
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v1    # "backupEnabled":Z
    .end local v2    # "configIntent":Landroid/content/Intent;
    .end local v3    # "configSummary":Ljava/lang/String;
    .end local v7    # "manageIntent":Landroid/content/Intent;
    .end local v8    # "manageLabel":Ljava/lang/String;
    .end local v10    # "transport":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 775
    const-string/jumbo v14, "backup_auto_restore"

    .line 774
    invoke-static {v9, v14, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v11, :cond_a

    :goto_4
    invoke-virtual {v13, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 776
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 778
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

    .line 779
    if-eqz v2, :cond_b

    move v4, v1

    .line 780
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

    .line 781
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 782
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 783
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 785
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

    .line 786
    if-eqz v7, :cond_c

    move v6, v1

    .line 787
    .local v6, "manageEnabled":Z
    :goto_6
    if-eqz v6, :cond_d

    .line 788
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 789
    if-eqz v8, :cond_3

    .line 790
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 715
    :cond_3
    :goto_7
    return-void

    .line 730
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

    .line 731
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 732
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 734
    :cond_5
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 740
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 741
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_1

    .line 745
    :cond_7
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_2

    .line 762
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

    .line 763
    const v13, 0x7f0b1d08

    .line 762
    :goto_8
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 767
    .end local v1    # "backupEnabled":Z
    .end local v2    # "configIntent":Landroid/content/Intent;
    .end local v3    # "configSummary":Ljava/lang/String;
    .end local v7    # "manageIntent":Landroid/content/Intent;
    .end local v8    # "manageLabel":Ljava/lang/String;
    .end local v10    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 769
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_2

    .line 770
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 764
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v1    # "backupEnabled":Z
    .restart local v2    # "configIntent":Landroid/content/Intent;
    .restart local v3    # "configSummary":Ljava/lang/String;
    .restart local v7    # "manageIntent":Landroid/content/Intent;
    .restart local v8    # "manageLabel":Ljava/lang/String;
    .restart local v10    # "transport":Ljava/lang/String;
    :cond_9
    const v13, 0x7f0b1d09

    goto :goto_8

    .end local v1    # "backupEnabled":Z
    .end local v2    # "configIntent":Landroid/content/Intent;
    .end local v3    # "configSummary":Ljava/lang/String;
    .end local v7    # "manageIntent":Landroid/content/Intent;
    .end local v8    # "manageLabel":Ljava/lang/String;
    .end local v10    # "transport":Ljava/lang/String;
    :cond_a
    move v11, v12

    .line 774
    goto/16 :goto_4

    .line 779
    :cond_b
    const/4 v4, 0x0

    .local v4, "configureEnabled":Z
    goto/16 :goto_5

    .end local v4    # "configureEnabled":Z
    :cond_c
    move v6, v12

    .line 786
    goto :goto_6

    .line 794
    .restart local v6    # "manageEnabled":Z
    :cond_d
    const-string/jumbo v11, "backup_category"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 795
    .local v0, "backupCategory":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_3

    .line 796
    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "logLabel"    # Ljava/lang/String;

    .prologue
    .line 802
    if-eqz p1, :cond_1

    .line 803
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 804
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 805
    .local v1, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    :cond_0
    const/4 p1, 0x0

    .line 807
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

    .line 808
    const-string/jumbo v4, " fails to resolve; ignoring"

    .line 807
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
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
    .line 824
    const v0, 0x7f0b1bd1

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 174
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

    .line 639
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 640
    if-ne p1, v0, :cond_2

    .line 641
    if-ne p2, v0, :cond_1

    .line 643
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Succeed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 645
    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 646
    const v3, 0x7f0b176f

    move-object v5, v4

    .line 644
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Failed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 653
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 654
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Samsung Account added"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v7

    .line 659
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 661
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    if-nez p2, :cond_4

    .line 662
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Samsung Account Login : cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
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

    .line 616
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 617
    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    .line 618
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 622
    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    .line 623
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    .line 183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    const v23, 0x7f0800eb

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 189
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 193
    .local v17, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 194
    .local v4, "actionBar":Landroid/app/ActionBar;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v23

    if-eqz v23, :cond_1

    if-eqz v4, :cond_1

    .line 195
    const v23, 0x7f0b050d

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 199
    :cond_1
    const-string/jumbo v23, "backup"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 198
    invoke-static/range {v23 .. v23}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 201
    const-string/jumbo v23, "backup_data"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 206
    :cond_2
    const-string/jumbo v23, "settings_reset"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    .line 207
    const-string/jumbo v23, "network_reset"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 208
    const-string/jumbo v23, "factory_reset"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 210
    const-string/jumbo v23, "auto_restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    const-string/jumbo v23, "configure_account"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 216
    const-string/jumbo v23, "data_management"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    .line 218
    const-string/jumbo v23, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 219
    .local v16, "resetCategory":Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v23

    if-eqz v23, :cond_9

    const v23, 0x7f0b0d40

    :goto_0
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 220
    const-string/jumbo v23, "pref_auto_clean"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v23, v0

    new-instance v24, Lcom/samsung/android/settings/PrivacySettings$5;

    invoke-direct/range {v24 .. v25}, Lcom/samsung/android/settings/PrivacySettings$5;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    .line 233
    :goto_1
    const-string/jumbo v23, "pref_smartswitch"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    .line 234
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v23

    if-nez v23, :cond_3

    if-eqz v8, :cond_4

    .line 235
    :cond_3
    const-string/jumbo v23, "category_smart_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceCategory;

    .line 236
    .local v20, "smartSwitchCategory":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 238
    .end local v20    # "smartSwitchCategory":Landroid/preference/PreferenceCategory;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v19

    .line 241
    .local v19, "shouldRemoveAutoRestart":Z
    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->isSupportAutoPowerOnOff()Z

    move-result v9

    .line 242
    .local v9, "isSupportAutoPowerOnOff":Z
    if-eqz v19, :cond_5

    .line 243
    const-string/jumbo v23, "PrivacySettings"

    const-string/jumbo v24, "Auto reset not support model"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 247
    :cond_5
    if-nez v9, :cond_6

    .line 248
    const-string/jumbo v23, "pref_auto_power_on_off"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    .line 249
    .local v12, "mAutoPowerOnOff":Landroid/preference/PreferenceScreen;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 252
    .end local v12    # "mAutoPowerOnOff":Landroid/preference/PreferenceScreen;
    :cond_6
    if-eqz v19, :cond_7

    if-eqz v9, :cond_b

    .line 256
    :cond_7
    :goto_2
    const-string/jumbo v23, "category_samsungservices"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 257
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v6

    .line 258
    .local v6, "bidiformatter":Landroid/support/v4/text/BidiFormatter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    move-object/from16 v23, v0

    const v24, 0x7f0b0e4b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    const-string/jumbo v23, "pref_backUp"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 261
    const-string/jumbo v23, "pref_restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 263
    const-string/jumbo v23, "pref_storage"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 265
    const-string/jumbo v23, "samsung_backup_inactive"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    .line 267
    const-string/jumbo v23, "collect_diagnostics"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 271
    .local v11, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 272
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v18

    .line 273
    .local v18, "screenPreferenceCount":I
    add-int/lit8 v7, v18, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_e

    .line 274
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v15

    .line 275
    .local v15, "preference":Landroid/preference/Preference;
    invoke-virtual {v15}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 276
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 219
    .end local v6    # "bidiformatter":Landroid/support/v4/text/BidiFormatter;
    .end local v7    # "i":I
    .end local v9    # "isSupportAutoPowerOnOff":Z
    .end local v11    # "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "preference":Landroid/preference/Preference;
    .end local v18    # "screenPreferenceCount":I
    .end local v19    # "shouldRemoveAutoRestart":Z
    :cond_9
    const v23, 0x7f0b0d3f

    goto/16 :goto_0

    .line 232
    :cond_a
    const/4 v8, 0x0

    .local v8, "isDesktopMode":Z
    goto/16 :goto_1

    .line 253
    .end local v8    # "isDesktopMode":Z
    .restart local v9    # "isSupportAutoPowerOnOff":Z
    .restart local v19    # "shouldRemoveAutoRestart":Z
    :cond_b
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_2

    .line 277
    .restart local v6    # "bidiformatter":Landroid/support/v4/text/BidiFormatter;
    .restart local v7    # "i":I
    .restart local v11    # "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "preference":Landroid/preference/Preference;
    .restart local v18    # "screenPreferenceCount":I
    :cond_c
    instance-of v0, v15, Landroid/preference/PreferenceCategory;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    move-object v14, v15

    .line 278
    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 279
    .local v14, "pref":Landroid/preference/PreferenceCategory;
    invoke-virtual {v14}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v22

    .line 280
    .local v22, "subPreferenceCount":I
    add-int/lit8 v10, v22, -0x1

    .local v10, "j":I
    :goto_4
    if-ltz v10, :cond_8

    .line 281
    invoke-virtual {v14, v10}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v21

    .line 282
    .local v21, "subPreference":Landroid/preference/Preference;
    invoke-virtual/range {v21 .. v21}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 283
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 288
    .end local v10    # "j":I
    .end local v14    # "pref":Landroid/preference/PreferenceCategory;
    .end local v15    # "preference":Landroid/preference/Preference;
    .end local v21    # "subPreference":Landroid/preference/Preference;
    .end local v22    # "subPreferenceCount":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 289
    .local v5, "arg":Landroid/os/Bundle;
    if-eqz v5, :cond_f

    .line 290
    const-string/jumbo v23, "menu"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 291
    .local v13, "menuName":Ljava/lang/String;
    if-eqz v13, :cond_f

    const-string/jumbo v23, "backup"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 292
    const-string/jumbo v23, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v23, "personal_data_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v23, "collect_diagnostics"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    .line 295
    if-eqz v4, :cond_f

    .line 296
    const v23, 0x7f0b0cee

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 301
    .end local v13    # "menuName":Ljava/lang/String;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    .line 304
    new-instance v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v23 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 178
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    .line 630
    iget-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 633
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 629
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BackupAndReset"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 384
    const-string/jumbo v2, "factory_reset"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    .line 385
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 387
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "jp.softbank.mb.passwordmanager"

    const-string/jumbo v3, "jp.softbank.mb.passwordmanager.Pwdmanager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string/jumbo v2, "FuncCode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string/jumbo v2, "ResultString"

    const-string/jumbo v3, "fghigklmn087"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return v4

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 397
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v2, "configure_account"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f039b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 400
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 309
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 311
    const/4 v3, 0x1

    .line 312
    .local v3, "isEnabledResetSettings":Z
    const/4 v2, 0x1

    .line 313
    .local v2, "isEnabledNetworkRest":Z
    const/4 v1, 0x1

    .line 316
    .local v1, "isEnabledFactoryReset":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 317
    :cond_0
    const/4 v3, 0x0

    .line 318
    const/4 v2, 0x0

    .line 322
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v7, :cond_3

    .line 323
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v7, "false"

    aput-object v7, v5, v9

    .line 324
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v11, "isBackupAllowed"

    invoke-static {v7, v10, v11, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "isBackupAllowed":I
    iget-object v10, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eq v0, v12, :cond_2

    if-ne v0, v8, :cond_c

    :cond_2
    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    .line 327
    .end local v0    # "isBackupAllowed":I
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    const-string/jumbo v10, "no_factory_reset"

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 335
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 336
    const/4 v3, 0x0

    .line 337
    const/4 v2, 0x0

    .line 338
    const/4 v1, 0x0

    .line 341
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_6

    .line 342
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 343
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_7

    .line 344
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v7, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 345
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_8

    .line 346
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 349
    :cond_8
    iget-boolean v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v7, :cond_9

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    .line 353
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v7, :cond_a

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "sec_silent_auto_reset"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_10

    move v6, v8

    .line 355
    .local v6, "state":Z
    :goto_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/PrivacySettings;->updateAutoRestartSummary(Z)V

    .line 358
    .end local v6    # "state":Z
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 359
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v10, "BackupAndReset"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 308
    return-void

    .restart local v0    # "isBackupAllowed":I
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_c
    move v7, v9

    .line 325
    goto :goto_0

    .line 328
    .end local v0    # "isBackupAllowed":I
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v11, "isFactoryResetAllowed"

    invoke-static {v7, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 329
    .local v4, "isFactoryResetAllowed":I
    if-eq v4, v12, :cond_e

    if-ne v4, v8, :cond_f

    :cond_e
    move v7, v8

    :goto_3
    if-nez v7, :cond_4

    .line 330
    const/4 v1, 0x0

    goto :goto_1

    :cond_f
    move v7, v9

    .line 329
    goto :goto_3

    .end local v4    # "isFactoryResetAllowed":I
    :cond_10
    move v6, v9

    .line 354
    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 609
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 610
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 605
    return-void
.end method
