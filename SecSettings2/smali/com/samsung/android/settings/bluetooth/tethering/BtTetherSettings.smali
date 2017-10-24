.class public Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "BtTetherSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;
.implements Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;,
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;
    }
.end annotation


# instance fields
.field private isDrawingFirst:Z

.field private mActivity:Landroid/app/Activity;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field private mDiscoveryHelpMsgPreference:Landroid/preference/Preference;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTetherServerDescription:Landroid/preference/Preference;

.field private mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

.field private mTetheredDevicesList:Landroid/preference/PreferenceGroup;

.field private mTurnOnBtForTether:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 134
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 136
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 138
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isDrawingFirst:Z

    .line 823
    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    .line 822
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 116
    return-void
.end method

.method private addNoItemPreference()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDiscoveryHelpMsgPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_discovery_help_msg"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDiscoveryHelpMsgPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->setMainText(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 598
    return-void
.end method

.method private addTetheredDeviceCategory(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 521
    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "addTetheredDeviceCategory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const v0, 0x7f0b03d9

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 524
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 525
    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 526
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 527
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addTetheredDevices()V

    .line 528
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 520
    return-void
.end method

.method private addTetheredDevices()V
    .locals 5

    .prologue
    .line 532
    const-string/jumbo v3, "BtTetherSettings"

    const-string/jumbo v4, "addTetheredDevices"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 537
    .local v0, "cachedDevcies":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cachedDevice$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 538
    .local v1, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->onTetheredDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 531
    .end local v1    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method private createTetheredDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 560
    const-string/jumbo v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createDevicePreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_0

    .line 563
    const-string/jumbo v1, "BtTetherSettings"

    const-string/jumbo v2, "Trying to create a device preference before the list of group or category exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 567
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 568
    .local v0, "preference":Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 559
    return-void
.end method

.method private isPanAllowed(Z)Z
    .locals 14
    .param p1, "isSwitchChanged"    # Z

    .prologue
    .line 333
    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    if-eqz v11, :cond_a

    .line 334
    const-string/jumbo v11, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 335
    const-string/jumbo v11, "phone"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 336
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_1

    .line 337
    if-eqz p1, :cond_0

    .line 338
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0b0e30

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 339
    new-instance v12, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    const v13, 0x7f0b14b6

    .line 338
    invoke-virtual {v11, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 342
    const v12, 0x7f0b0077

    .line 338
    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 344
    :cond_0
    const/4 v11, 0x0

    return v11

    .line 347
    :cond_1
    const-string/jumbo v11, "connectivity"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 348
    .local v2, "cm":Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 349
    .local v8, "mInfo":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 350
    const-string/jumbo v11, "BtTetherSettings"

    const-string/jumbo v12, "WIFI is connected, so BT tethering is not allowed by VZW requirement."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz p1, :cond_2

    .line 352
    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0b03f8

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 354
    :cond_2
    const/4 v11, 0x0

    return v11

    .line 358
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v8    # "mInfo":Landroid/net/NetworkInfo;
    .end local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const-string/jumbo v11, "false"

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 359
    .local v9, "selectionArgs":[Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    .line 360
    const-string/jumbo v12, "content://com.sec.knox.provider/BluetoothPolicy"

    .line 361
    const-string/jumbo v13, "isBluetoothEnabled"

    .line 359
    invoke-static {v11, v12, v13, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 362
    .local v4, "isBluetoothEnabled":I
    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    .line 363
    const-string/jumbo v12, "content://com.sec.knox.provider/RestrictionPolicy1"

    .line 364
    const-string/jumbo v13, "isBluetoothTetheringEnabled"

    .line 362
    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 366
    .local v5, "isBluetoothTetheringEnabled":I
    if-nez v4, :cond_5

    .line 368
    :cond_4
    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 369
    const/4 v11, 0x0

    return v11

    .line 367
    :cond_5
    if-eqz v5, :cond_4

    .line 372
    const-string/jumbo v11, "device_policy"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 373
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    .line 374
    .local v1, "allowInternetSharing":Z
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    .line 375
    .local v0, "allowBluetoothMode":I
    if-eqz v1, :cond_6

    const/4 v11, 0x2

    if-eq v0, v11, :cond_8

    .line 376
    :cond_6
    const-string/jumbo v11, "BtTetherSettings"

    const-string/jumbo v12, "Internet Sharing is not allowed by MDM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz p1, :cond_7

    .line 378
    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    const v13, 0x1040665

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 380
    :cond_7
    const/4 v11, 0x0

    return v11

    .line 383
    :cond_8
    new-instance v6, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    .line 384
    .local v6, "mDataSaverBackend":Lcom/android/settings/datausage/DataSaverBackend;
    invoke-virtual {v6}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v7

    .line 385
    .local v7, "mDataSaverEnabled":Z
    if-eqz v7, :cond_9

    .line 386
    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 387
    const/4 v11, 0x0

    return v11

    .line 400
    :cond_9
    const/4 v11, 0x1

    return v11

    .line 402
    .end local v0    # "allowBluetoothMode":I
    .end local v1    # "allowInternetSharing":Z
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "isBluetoothEnabled":I
    .end local v5    # "isBluetoothTetheringEnabled":I
    .end local v6    # "mDataSaverBackend":Lcom/android/settings/datausage/DataSaverBackend;
    .end local v7    # "mDataSaverEnabled":Z
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    :cond_a
    const-string/jumbo v11, "BtTetherSettings"

    const-string/jumbo v12, "mActivity is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v11, 0x0

    return v11
.end method

.method private isTetherOn()Z
    .locals 4

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 730
    .local v0, "result":Z
    const-string/jumbo v1, "bluetooth.pan.tether_on"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 732
    .local v0, "result":Z
    const-string/jumbo v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTetherOn ?? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v0
.end method

.method private isTetheredBefore(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 6
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 574
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->getBtTetheredDeviceHistory()Ljava/util/List;

    move-result-object v2

    .line 576
    .local v2, "mTetherHistory":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "BtTetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tethered History...matched with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "btDevice$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 579
    .local v0, "btDevice":Ljava/lang/String;
    const-string/jumbo v3, "BtTetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ">>>>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    .end local v0    # "btDevice":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    const/4 v3, 0x1

    return v3

    .line 585
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private onTetheredDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 543
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTetheredDeviceAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    return-void

    .line 554
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetheredBefore(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->createTetheredDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 542
    :cond_2
    return-void
.end method

.method private removeAllDevices()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 589
    :cond_1
    return-void
.end method

.method private setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 467
    return-void
.end method

.method private setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 2
    .param p1, "filter"    # Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 472
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 473
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 471
    return-void
.end method

.method private setTetherOffDescription()Landroid/preference/Preference;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, "mOffTextPref":Landroid/preference/Preference;
    const v2, 0x7f0401dd

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 264
    const-string/jumbo v1, ""

    .line 265
    .local v1, "tetherOffDescription":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_0
    if-eqz v1, :cond_1

    .line 271
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    :cond_1
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 277
    return-object v0
.end method

.method private setTetherServerDescription()Landroid/preference/Preference;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    const v2, 0x7f0401dd

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 244
    const-string/jumbo v0, ""

    .line 245
    .local v0, "summaryDescription":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_1
    if-eqz v0, :cond_2

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 256
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    return-object v1
.end method

.method private startProvisioningIfNecessary()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 690
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string/jumbo v2, "TETHER_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 696
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "BtTetherSettings"

    const-string/jumbo v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 701
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->turnOnBluetoothTethering()V

    goto :goto_0
.end method

.method private turnOnBluetoothTethering()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 676
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 677
    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "Bluetooth was off, turn it on first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 679
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    .line 681
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->setSwitchChecked(Z)V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->setBtTether(Z)V

    .line 674
    return-void
.end method

.method private updateContent()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 410
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v2

    .line 412
    .local v2, "tetherOn":Z
    const-string/jumbo v3, "BtTetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateContent - isTetherOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isPanAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 414
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 417
    :goto_0
    if-eqz v2, :cond_4

    .line 419
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 420
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 421
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setTetherServerDescription()Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 424
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_3

    .line 425
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    .line 430
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addTetheredDeviceCategory(Landroid/preference/PreferenceGroup;)V

    .line 432
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 434
    .local v0, "numberOfTetheredDevices":I
    const-string/jumbo v3, "BtTetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "numberOfTetheredDevices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-gtz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addNoItemPreference()V

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 407
    .end local v0    # "numberOfTetheredDevices":I
    :cond_1
    :goto_2
    return-void

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 427
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_1

    .line 446
    :cond_4
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 447
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 448
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setTetherOffDescription()Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 450
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    const-string/jumbo v1, "BtTetherSettings"

    const-string/jumbo v2, "onActivityCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 231
    .local v0, "sActivity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 235
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 708
    if-nez p1, :cond_0

    .line 709
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 710
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->turnOnBluetoothTethering()V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    const-string/jumbo v0, "Bluetooth.pan.tether_on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->setSwitchChecked(Z)V

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 4
    .param p1, "bluetoothState"    # I

    .prologue
    .line 787
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->notifyBluetoothStateChanged(Z)V

    .line 791
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->getBluetoothPanProxy()Landroid/bluetooth/BluetoothPan;

    move-result-object v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 793
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    .line 786
    :cond_1
    :goto_0
    return-void

    .line 794
    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->notifyBluetoothStateChanged(Z)V

    .line 796
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    goto :goto_0
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 782
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionStateChanged of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "Bluetooth is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 208
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 213
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addPreferencesFromResource(I)V

    .line 215
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->getDefaultInstance()Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->registerProxyCallback(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter$UpdateProxyCallback;)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setHasOptionsMenu(Z)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    .line 197
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 626
    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->removeAllDevices()V

    .line 630
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 632
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->unregisterProxyCallback()V

    .line 642
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 625
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 477
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    .line 476
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 802
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceBondStateChanged of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 740
    return-void
.end method

.method onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V
    .locals 4
    .param p1, "btTetherPref"    # Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    .prologue
    .line 761
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 762
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 767
    :goto_0
    const-string/jumbo v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick :: selected device - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return-void

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->connectFromNAP(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 613
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 615
    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 617
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 618
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 612
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 751
    instance-of v1, p2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 752
    check-cast v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    .line 753
    .local v0, "btTetherPref":Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V

    .line 754
    const/4 v1, 0x1

    return v1

    .line 757
    .end local v0    # "btTetherPref":Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 5
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p3, "newState"    # I
    .param p4, "oldState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 772
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileStateChanged : state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    if-nez p3, :cond_1

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 775
    :cond_1
    if-eq p3, v4, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 777
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    .line 771
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 316
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 317
    const-string/jumbo v1, "BtTetherSettings"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->getBluetoothPanProxy()Landroid/bluetooth/BluetoothPan;

    move-result-object v1

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    .line 315
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 807
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanningStateChanged - started : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 648
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    if-eqz p2, :cond_2

    .line 653
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isPanAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 655
    return-void

    .line 658
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startProvisioningIfNecessary()V

    .line 664
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    .line 647
    return-void

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->setSwitchChecked(Z)V

    .line 661
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->setBtTether(Z)V

    goto :goto_0
.end method

.method public onUpdatedPanProxy(Z)V
    .locals 3
    .param p1, "isRegistered"    # Z

    .prologue
    .line 812
    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUPdatedPanProxy - Pan proxy on? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    if-eqz v0, :cond_0

    .line 814
    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "BT turned on for enaling tether"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherSettingsAdapter:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->setBtTether(Z)V

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    .line 818
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    .line 811
    :cond_0
    return-void
.end method
