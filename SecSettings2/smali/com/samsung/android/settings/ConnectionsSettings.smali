.class public Lcom/samsung/android/settings/ConnectionsSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ConnectionsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ConnectionsSettings$1;,
        Lcom/samsung/android/settings/ConnectionsSettings$2;,
        Lcom/samsung/android/settings/ConnectionsSettings$3;,
        Lcom/samsung/android/settings/ConnectionsSettings$4;,
        Lcom/samsung/android/settings/ConnectionsSettings$5;,
        Lcom/samsung/android/settings/ConnectionsSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final isGlobal:Z


# instance fields
.field private mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothEnablerPreference:Landroid/preference/SwitchPreference;

.field private mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

.field private mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mKnoxCustomIsProKioskMode:Z

.field private mLocationPreference:Landroid/preference/SwitchPreference;

.field private mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

.field private mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field private mNfcJapanPreference:Landroid/preference/PreferenceScreen;

.field private mNfcSwitchPreference:Landroid/preference/SwitchPreference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimCardMgr:Landroid/preference/PreferenceScreen;

.field private mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mUm:Landroid/os/UserManager;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;

.field private mWifiCallingOpen:Landroid/preference/PreferenceScreen;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettingsPreference:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnablerPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiSettingsPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ConnectionsSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateWifiCallingStatus()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    .line 521
    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/ConnectionsSettings$3;-><init>()V

    .line 520
    sput-object v0, Lcom/samsung/android/settings/ConnectionsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 722
    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/ConnectionsSettings$4;-><init>()V

    .line 721
    sput-object v0, Lcom/samsung/android/settings/ConnectionsSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 76
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    .line 136
    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ConnectionsSettings$1;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ConnectionsSettings$2;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    .line 731
    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ConnectionsSettings$5;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 76
    return-void
.end method

.method private static isATTVoLTEAvailable(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 690
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 691
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.intent.action.ACTIVATE_WIFI_CALLING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.nsdsvowifi"

    .line 693
    const-string/jumbo v3, "com.samsung.android.nsdsvowifi.VoWifiCheckActivity"

    .line 692
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 695
    return-object v1
.end method

.method private updateWifiCallingStatus()Z
    .locals 4

    .prologue
    .line 401
    const/4 v0, 0x1

    .line 402
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 405
    :cond_0
    const-string/jumbo v1, "Wificalling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWifiCallingStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 407
    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 409
    :cond_1
    return v0

    .line 407
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    new-instance v2, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    .line 417
    .local v2, "mRelativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    const/4 v1, 0x0

    .line 419
    .local v1, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .end local v1    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 421
    .local v1, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, "cloudIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "cloudIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v0    # "cloudIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.scloud"

    .line 424
    const-string/jumbo v5, "com.samsung.android.scloud.app.ui.SCloudActivity"

    .line 423
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 425
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 426
    const v3, 0x7f0b048c

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 427
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 430
    .end local v0    # "cloudIntent":Landroid/content/Intent;
    .end local v1    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 435
    .end local v2    # "mRelativeLinkView":Lcom/samsung/android/settings/widget/RelativeLinkView;
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 413
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 186
    const-string/jumbo v20, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    .line 189
    .local v9, "isAdmin":Z
    const v20, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->addPreferencesFromResource(I)V

    .line 191
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v16

    .line 192
    .local v16, "proKioskManager":Lcom/samsung/android/knox/custom/ProKioskManager;
    if-eqz v16, :cond_0

    .line 193
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    .line 195
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->checkForKnoxCustomProKioskEnabledItems()V

    .line 199
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 200
    .local v15, "myUserId":I
    if-eqz v15, :cond_19

    const/4 v10, 0x1

    .line 202
    .local v10, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 204
    .local v3, "activity":Landroid/app/Activity;
    const-string/jumbo v20, "simcard_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mSimCardMgr:Landroid/preference/PreferenceScreen;

    .line 205
    const-string/jumbo v20, "wifi_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiSettingsPreference:Landroid/preference/SwitchPreference;

    .line 206
    new-instance v20, Lcom/android/settings/wifi/WifiEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiSettingsPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 208
    const-string/jumbo v20, "wifi_calling_settings_open"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    .line 211
    const-string/jumbo v21, "android.hardware.nfc"

    .line 210
    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1a

    .line 212
    const-string/jumbo v20, "nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v20, "nfc_osaifukeitai_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 231
    :goto_1
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    .line 235
    :cond_1
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 236
    .local v13, "mobileDataPreference":Lcom/samsung/android/settingslib/RestrictedPreference;
    if-eqz v13, :cond_2

    .line 237
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDependency(Ljava/lang/String;)V

    .line 242
    .end local v13    # "mobileDataPreference":Lcom/samsung/android/settingslib/RestrictedPreference;
    :cond_2
    :goto_2
    const-string/jumbo v20, "location_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationPreference:Landroid/preference/SwitchPreference;

    .line 243
    new-instance v20, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    .line 246
    const-string/jumbo v20, "bluetooth_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnablerPreference:Landroid/preference/SwitchPreference;

    .line 247
    new-instance v20, Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnablerPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 251
    if-nez v10, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_1e

    .line 253
    const-string/jumbo v20, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    .line 254
    new-instance v20, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    .line 265
    :goto_3
    invoke-static {v3}, Lcom/android/settings/Utils;->isVzwVoLTEFeatureEnabled(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 266
    const-string/jumbo v20, "vzw_provision_volte"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 270
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.hardware.type.television"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 271
    const-string/jumbo v20, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 276
    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 278
    const-string/jumbo v20, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    .line 277
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v20

    .line 276
    if-eqz v20, :cond_6

    .line 279
    :cond_5
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 282
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 283
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 308
    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v20

    if-eqz v20, :cond_8

    if-nez v10, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 309
    :cond_8
    const-string/jumbo v20, "simcard_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 311
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mSimCardMgr:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const v21, 0x7f0b0b4b

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 316
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v20

    if-nez v20, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 317
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v20

    .line 316
    if-nez v20, :cond_c

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v20

    .line 316
    if-nez v20, :cond_c

    if-eqz v10, :cond_d

    .line 318
    :cond_c
    const-string/jumbo v20, "kt_roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 322
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_e

    if-eqz v10, :cond_f

    .line 323
    :cond_e
    const-string/jumbo v20, "global_roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 327
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "OPV"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const-string/jumbo v21, "WiFi Calling"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 332
    .local v7, "context":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string/jumbo v22, ""

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "WAVE2"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_24

    .line 339
    :cond_11
    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportWifiCalling(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 340
    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isNetworkChange()Z

    move-result v20

    if-eqz v20, :cond_25

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 353
    :cond_13
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v20

    if-eqz v20, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_26

    .line 357
    :goto_6
    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 358
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    .line 362
    .local v17, "sSalesCode":Ljava/lang/String;
    const-string/jumbo v20, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 363
    .local v6, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v20, v0

    const v21, 0x7f0b0078

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(I)V

    .line 367
    :cond_14
    const-string/jumbo v20, "persist.sys.tether_data"

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 368
    .local v12, "mTetheredData":I
    const-string/jumbo v20, "ConnectionsSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mTetheredData: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string/jumbo v20, "ConnectionsSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "cm.isTetheringSupported: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-nez v10, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_17

    .line 372
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v20

    if-eqz v20, :cond_15

    const-string/jumbo v20, "AIO"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 371
    if-nez v20, :cond_17

    .line 372
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v20

    if-eqz v20, :cond_16

    const-string/jumbo v20, "ATT"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 371
    if-nez v20, :cond_17

    .line 373
    :cond_16
    const-string/jumbo v20, "SBM"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 371
    if-eqz v20, :cond_27

    .line 374
    :cond_17
    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 384
    :cond_18
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_2b

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 386
    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 387
    const-string/jumbo v20, "vzw_provision_volte"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 388
    const-string/jumbo v20, "wireless_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 394
    :goto_8
    new-instance v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 182
    return-void

    .line 200
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v6    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "isSecondaryUser":Z
    .end local v12    # "mTetheredData":I
    .end local v17    # "sSalesCode":Ljava/lang/String;
    :cond_19
    const/4 v10, 0x0

    .restart local v10    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 215
    .restart local v3    # "activity":Landroid/app/Activity;
    :cond_1a
    sget-boolean v20, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    if-eqz v20, :cond_1c

    .line 216
    const-string/jumbo v20, "nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcSwitchPreference:Landroid/preference/SwitchPreference;

    .line 217
    new-instance v20, Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcSwitchPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/nfc/NfcEnabler;->created()V

    .line 221
    :cond_1b
    const-string/jumbo v20, "nfc_osaifukeitai_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 223
    :cond_1c
    const-string/jumbo v20, "nfc_osaifukeitai_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcJapanPreference:Landroid/preference/PreferenceScreen;

    .line 224
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    .line 225
    const-string/jumbo v20, "nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :cond_1d
    const-string/jumbo v20, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 233
    new-instance v20, Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    goto/16 :goto_2

    .line 256
    :cond_1e
    const-string/jumbo v20, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 259
    :cond_1f
    const-string/jumbo v20, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 284
    :cond_20
    const-string/jumbo v20, "CDMA"

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 285
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 287
    .local v14, "mobileNetworkPreference":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v20, "gsm.sim.currentcardstatus"

    const-string/jumbo v21, "9"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "cardStatus1":Ljava/lang/String;
    const-string/jumbo v20, "gsm.sim.currentcardstatus"

    const-string/jumbo v21, "9"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "cardStatus2":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 291
    .local v18, "simState1":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 294
    .local v19, "simState2":I
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    .line 295
    const-string/jumbo v20, "com.android.phone"

    const-string/jumbo v21, "com.android.phone.MobileNetworkSettingsTab"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    :goto_9
    invoke-virtual {v14, v8}, Lcom/samsung/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 296
    :cond_21
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    .line 297
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_9

    .line 299
    :cond_22
    const-string/jumbo v20, "com.android.phone"

    const-string/jumbo v21, "com.android.phone.MobileNetworkSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    const/4 v11, 0x1

    .line 301
    .local v11, "mExtra":I
    :goto_a
    const-string/jumbo v20, "sim_id"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    .line 300
    .end local v11    # "mExtra":I
    :cond_23
    const/4 v11, 0x0

    .restart local v11    # "mExtra":I
    goto :goto_a

    .line 334
    .end local v4    # "cardStatus1":Ljava/lang/String;
    .end local v5    # "cardStatus2":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "mExtra":I
    .end local v14    # "mobileNetworkPreference":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v18    # "simState1":I
    .end local v19    # "simState2":I
    .restart local v7    # "context":Landroid/content/Context;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/ConnectionsSettings;->isATTVoLTEAvailable(Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v8

    .line 335
    .restart local v8    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 345
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_25
    const-string/jumbo v20, "wifi_calling_settings_open"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    .line 346
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    goto/16 :goto_5

    .line 354
    :cond_26
    const-string/jumbo v20, "avea_mptcp"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 375
    .restart local v6    # "cm":Landroid/net/ConnectivityManager;
    .restart local v12    # "mTetheredData":I
    .restart local v17    # "sSalesCode":Ljava/lang/String;
    :cond_27
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v20

    if-eqz v20, :cond_28

    .line 376
    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 377
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "no_config_tethering"

    invoke-virtual/range {v20 .. v21}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_29

    .line 378
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v20

    if-eqz v20, :cond_2a

    .line 380
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "no_config_tethering"

    invoke-virtual/range {v20 .. v21}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 379
    :cond_2a
    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 390
    :cond_2b
    const-string/jumbo v20, "wireless_settings_for_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 510
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->destroy()V

    .line 509
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 480
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 482
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->pause()V

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->pause()V

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_4

    .line 497
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v0, :cond_5

    .line 500
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->pause()V

    .line 503
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Connections"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateWifiCallingStatus()Z

    move-result v0

    .line 160
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 161
    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 440
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 444
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 445
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 450
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    .line 458
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    if-eqz v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->resume()V

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v1, :cond_4

    .line 462
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->resume()V

    .line 464
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v1, :cond_5

    .line 465
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 467
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v1, :cond_6

    .line 468
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->resume()V

    .line 471
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateWifiCallingStatus()Z

    .line 472
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vowifi_menu_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 475
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "Connections"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 439
    return-void

    .line 447
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method
