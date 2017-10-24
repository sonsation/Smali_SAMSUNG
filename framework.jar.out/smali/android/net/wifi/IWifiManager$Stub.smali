.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x2a

.field static final TRANSACTION_acquireWifiLock:I = 0x25

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x7

.field static final TRANSACTION_addPasspointManagementObject:I = 0x8

.field static final TRANSACTION_addToBlacklist:I = 0x32

.field static final TRANSACTION_addToSBlacklist:I = 0x34

.field static final TRANSACTION_buildHS20WifiConfigFromXml:I = 0x30

.field static final TRANSACTION_buildWifiConfig:I = 0x2f

.field static final TRANSACTION_callSECApi:I = 0x49

.field static final TRANSACTION_callSECStringApi:I = 0x4a

.field static final TRANSACTION_checkWarningPopup:I = 0x59

.field static final TRANSACTION_clearBlacklist:I = 0x33

.field static final TRANSACTION_clearSBlacklist:I = 0x35

.field static final TRANSACTION_deauthenticateNetwork:I = 0xc

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x46

.field static final TRANSACTION_disableNetwork:I = 0xf

.field static final TRANSACTION_disconnect:I = 0x16

.field static final TRANSACTION_enableAggressiveHandover:I = 0x3e

.field static final TRANSACTION_enableNetwork:I = 0xe

.field static final TRANSACTION_enableTdls:I = 0x39

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x3a

.field static final TRANSACTION_enableVerboseLogging:I = 0x3c

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x44

.field static final TRANSACTION_enableWifiSharing:I = 0x6d

.field static final TRANSACTION_factoryReset:I = 0x47

.field static final TRANSACTION_fetchHs20OsuProviders:I = 0x74

.field static final TRANSACTION_getAggressiveHandover:I = 0x3f

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x41

.field static final TRANSACTION_getChannelList:I = 0x11

.field static final TRANSACTION_getConfigFile:I = 0x38

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x19

.field static final TRANSACTION_getConnectionStatistics:I = 0x45

.field static final TRANSACTION_getCountryCode:I = 0x1d

.field static final TRANSACTION_getCountryRev:I = 0x65

.field static final TRANSACTION_getCurrentNetwork:I = 0x48

.field static final TRANSACTION_getDhcpInfo:I = 0x23

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x43

.field static final TRANSACTION_getFrequencyBand:I = 0x1f

.field static final TRANSACTION_getFullRoamScanPeriod:I = 0x61

.field static final TRANSACTION_getHs20OsuProviders:I = 0x72

.field static final TRANSACTION_getLinkStatus:I = 0x66

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getNetworkInfo:I = 0x69

.field static final TRANSACTION_getPPPOEInfo:I = 0x56

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getProvisionSuccess:I = 0x6f

.field static final TRANSACTION_getRoamBand:I = 0x63

.field static final TRANSACTION_getRoamDelta:I = 0x5d

.field static final TRANSACTION_getRoamScanPeriod:I = 0x5f

.field static final TRANSACTION_getRoamTrigger:I = 0x5b

.field static final TRANSACTION_getRvfMode:I = 0x70

.field static final TRANSACTION_getSBlacklist:I = 0x36

.field static final TRANSACTION_getScanResults:I = 0x15

.field static final TRANSACTION_getSpecificNetwork:I = 0x4c

.field static final TRANSACTION_getSpecificPasspointNetwork:I = 0x4d

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x3d

.field static final TRANSACTION_getWifiApConfigTxPower:I = 0x4f

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2e

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2d

.field static final TRANSACTION_getWifiApStaList:I = 0x4e

.field static final TRANSACTION_getWifiApTimeOut:I = 0x53

.field static final TRANSACTION_getWifiEnabledState:I = 0x1b

.field static final TRANSACTION_getWifiIBSSEnabledState:I = 0x6a

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x37

.field static final TRANSACTION_getWifiWatchdogMessenger:I = 0x79

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x3b

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x28

.field static final TRANSACTION_isCaptivePortalException:I = 0x78

.field static final TRANSACTION_isDetectedAsMaliciousHotspot:I = 0x75

.field static final TRANSACTION_isDualBandSupported:I = 0x20

.field static final TRANSACTION_isHs20OsuProviderAvailable:I = 0x73

.field static final TRANSACTION_isMulticastEnabled:I = 0x29

.field static final TRANSACTION_isPasspointDefaultOn:I = 0x76

.field static final TRANSACTION_isPasspointMenuVisible:I = 0x77

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x24

.field static final TRANSACTION_isSupportBackupAndRestore:I = 0x21

.field static final TRANSACTION_isWifiSharingEnabled:I = 0x6b

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xb

.field static final TRANSACTION_modifyPasspointManagementObject:I = 0x9

.field static final TRANSACTION_pingSupplicant:I = 0x10

.field static final TRANSACTION_queryPasspointIcon:I = 0xa

.field static final TRANSACTION_reassociate:I = 0x18

.field static final TRANSACTION_reconnect:I = 0x17

.field static final TRANSACTION_releaseMulticastLock:I = 0x2b

.field static final TRANSACTION_releaseWifiLock:I = 0x27

.field static final TRANSACTION_removeNetwork:I = 0xd

.field static final TRANSACTION_removeNetworkByMDM:I = 0x57

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x22

.field static final TRANSACTION_saveNetworkByMDM:I = 0x58

.field static final TRANSACTION_semGetConfiguredNetworks:I = 0x4b

.field static final TRANSACTION_semGetWifiApChannel:I = 0x6c

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x40

.field static final TRANSACTION_setCountryCode:I = 0x1c

.field static final TRANSACTION_setCountryRev:I = 0x64

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x42

.field static final TRANSACTION_setFrequencyBand:I = 0x1e

.field static final TRANSACTION_setFullRoamScanPeriod:I = 0x60

.field static final TRANSACTION_setImsCallEstablished:I = 0x12

.field static final TRANSACTION_setIsFmcNetwork:I = 0x67

.field static final TRANSACTION_setProvisionSuccess:I = 0x6e

.field static final TRANSACTION_setRoamBand:I = 0x62

.field static final TRANSACTION_setRoamDelta:I = 0x5c

.field static final TRANSACTION_setRoamScanPeriod:I = 0x5e

.field static final TRANSACTION_setRoamTrigger:I = 0x5a

.field static final TRANSACTION_setRvfMode:I = 0x71

.field static final TRANSACTION_setWifiApConfigTxPower:I = 0x50

.field static final TRANSACTION_setWifiApConfiguration:I = 0x31

.field static final TRANSACTION_setWifiApConfigurationToDefault:I = 0x51

.field static final TRANSACTION_setWifiApEnabled:I = 0x2c

.field static final TRANSACTION_setWifiApTimeOut:I = 0x52

.field static final TRANSACTION_setWifiEnabled:I = 0x1a

.field static final TRANSACTION_setWifiIBSSEnabled:I = 0x68

.field static final TRANSACTION_startPPPOE:I = 0x54

.field static final TRANSACTION_startPartialChannelScan:I = 0x14

.field static final TRANSACTION_startScan:I = 0x13

.field static final TRANSACTION_stopPPPOE:I = 0x55

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x26


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 42
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1293
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v41

    return v41

    .line 47
    :sswitch_0
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v41, 0x1

    return v41

    .line 52
    :sswitch_1
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v25

    .line 54
    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/16 v41, 0x1

    return v41

    .line 60
    .end local v25    # "_result":I
    :sswitch_2
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v30

    .line 62
    .local v30, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v30, :cond_0

    .line 64
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/16 v41, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_0
    const/16 v41, 0x1

    return v41

    .line 68
    :cond_0
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v30    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1

    .line 77
    sget-object v41, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ResultReceiver;

    .line 82
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 83
    const/16 v41, 0x1

    return v41

    .line 80
    :cond_1
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 87
    .end local v13    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_4
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v38

    .line 89
    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 91
    const/16 v41, 0x1

    return v41

    .line 95
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v38

    .line 97
    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 99
    const/16 v41, 0x1

    return v41

    .line 103
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_6
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2

    .line 106
    sget-object v41, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 111
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 112
    .local v31, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v31, :cond_3

    .line 114
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :goto_3
    const/16 v41, 0x1

    return v41

    .line 109
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_2

    .line 118
    .end local v8    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 124
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_4

    .line 127
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 132
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v25

    .line 133
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/16 v41, 0x1

    return v41

    .line 130
    .end local v25    # "_result":I
    :cond_4
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .line 139
    .end local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->addPasspointManagementObject(Ljava/lang/String;)I

    move-result v25

    .line 143
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/16 v41, 0x1

    return v41

    .line 149
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":I
    :sswitch_9
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 153
    .restart local v14    # "_arg0":Ljava/lang/String;
    sget-object v41, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v20

    .line 154
    .local v20, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I

    move-result v25

    .line 155
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/16 v41, 0x1

    return v41

    .line 161
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .end local v25    # "_result":I
    :sswitch_a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 165
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 166
    .local v19, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/16 v41, 0x1

    return v41

    .line 172
    .end local v6    # "_arg0":J
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 175
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v25

    .line 176
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/16 v41, 0x1

    return v41

    .line 182
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":I
    :sswitch_c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 186
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_5

    const/16 v21, 0x1

    .line 187
    .local v21, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/16 v41, 0x1

    return v41

    .line 186
    .end local v21    # "_arg1":Z
    :cond_5
    const/16 v21, 0x0

    goto :goto_5

    .line 193
    .end local v6    # "_arg0":J
    :sswitch_d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v40

    .line 197
    .local v40, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v40, :cond_6

    const/16 v41, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/16 v41, 0x1

    return v41

    .line 198
    :cond_6
    const/16 v41, 0x0

    goto :goto_6

    .line 203
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_7

    const/16 v21, 0x1

    .line 208
    .restart local v21    # "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v40

    .line 209
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v40, :cond_8

    const/16 v41, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/16 v41, 0x1

    return v41

    .line 207
    .end local v21    # "_arg1":Z
    .end local v40    # "_result":Z
    :cond_7
    const/16 v21, 0x0

    goto :goto_7

    .line 210
    .restart local v21    # "_arg1":Z
    .restart local v40    # "_result":Z
    :cond_8
    const/16 v41, 0x0

    goto :goto_8

    .line 215
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Z
    .end local v40    # "_result":Z
    :sswitch_f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 218
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v40

    .line 219
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v40, :cond_9

    const/16 v41, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/16 v41, 0x1

    return v41

    .line 220
    :cond_9
    const/16 v41, 0x0

    goto :goto_9

    .line 225
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_10
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v40

    .line 227
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v40, :cond_a

    const/16 v41, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/16 v41, 0x1

    return v41

    .line 228
    :cond_a
    const/16 v41, 0x0

    goto :goto_a

    .line 233
    .end local v40    # "_result":Z
    :sswitch_11
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v37

    .line 235
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 237
    const/16 v41, 0x1

    return v41

    .line 241
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_12
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_b

    const/4 v15, 0x1

    .line 244
    .local v15, "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setImsCallEstablished(Z)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/16 v41, 0x1

    return v41

    .line 243
    .end local v15    # "_arg0":Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_b

    .line 250
    :sswitch_13
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_c

    .line 253
    sget-object v41, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanSettings;

    .line 259
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_d

    .line 260
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/WorkSource;

    .line 265
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/16 v41, 0x1

    return v41

    .line 256
    :cond_c
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_c

    .line 263
    .end local v9    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_d
    const/16 v18, 0x0

    .local v18, "_arg1":Landroid/os/WorkSource;
    goto :goto_d

    .line 271
    .end local v18    # "_arg1":Landroid/os/WorkSource;
    :sswitch_14
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 274
    .local v16, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startPartialChannelScan([I)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/16 v41, 0x1

    return v41

    .line 280
    .end local v16    # "_arg0":[I
    :sswitch_15
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 283
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v36

    .line 284
    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 286
    const/16 v41, 0x1

    return v41

    .line 290
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_16
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/16 v41, 0x1

    return v41

    .line 297
    :sswitch_17
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/16 v41, 0x1

    return v41

    .line 304
    :sswitch_18
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/16 v41, 0x1

    return v41

    .line 311
    :sswitch_19
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v33

    .line 313
    .local v33, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v33, :cond_e

    .line 315
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/16 v41, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 321
    :goto_e
    const/16 v41, 0x1

    return v41

    .line 319
    :cond_e
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 325
    .end local v33    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_1a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_f

    const/4 v15, 0x1

    .line 328
    .restart local v15    # "_arg0":Z
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v40

    .line 329
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v40, :cond_10

    const/16 v41, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/16 v41, 0x1

    return v41

    .line 327
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_f

    .line 330
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_10
    const/16 v41, 0x0

    goto :goto_10

    .line 335
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_1b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v25

    .line 337
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/16 v41, 0x1

    return v41

    .line 343
    .end local v25    # "_result":I
    :sswitch_1c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 347
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_11

    const/16 v21, 0x1

    .line 348
    .restart local v21    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    const/16 v41, 0x1

    return v41

    .line 347
    .end local v21    # "_arg1":Z
    :cond_11
    const/16 v21, 0x0

    goto :goto_11

    .line 354
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v35

    .line 356
    .local v35, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    const/16 v41, 0x1

    return v41

    .line 362
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 366
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_12

    const/16 v21, 0x1

    .line 367
    .restart local v21    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/16 v41, 0x1

    return v41

    .line 366
    .end local v21    # "_arg1":Z
    :cond_12
    const/16 v21, 0x0

    goto :goto_12

    .line 373
    .end local v4    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v25

    .line 375
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/16 v41, 0x1

    return v41

    .line 381
    .end local v25    # "_result":I
    :sswitch_20
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v40

    .line 383
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v40, :cond_13

    const/16 v41, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/16 v41, 0x1

    return v41

    .line 384
    :cond_13
    const/16 v41, 0x0

    goto :goto_13

    .line 389
    .end local v40    # "_result":Z
    :sswitch_21
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isSupportBackupAndRestore()Z

    move-result v40

    .line 391
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v40, :cond_14

    const/16 v41, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/16 v41, 0x1

    return v41

    .line 392
    :cond_14
    const/16 v41, 0x0

    goto :goto_14

    .line 397
    .end local v40    # "_result":Z
    :sswitch_22
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v40

    .line 399
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v40, :cond_15

    const/16 v41, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/16 v41, 0x1

    return v41

    .line 400
    :cond_15
    const/16 v41, 0x0

    goto :goto_15

    .line 405
    .end local v40    # "_result":Z
    :sswitch_23
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v26

    .line 407
    .local v26, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v26, :cond_16

    .line 409
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/16 v41, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 415
    :goto_16
    const/16 v41, 0x1

    return v41

    .line 413
    :cond_16
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 419
    .end local v26    # "_result":Landroid/net/DhcpInfo;
    :sswitch_24
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v40

    .line 421
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v40, :cond_17

    const/16 v41, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/16 v41, 0x1

    return v41

    .line 422
    :cond_17
    const/16 v41, 0x0

    goto :goto_17

    .line 427
    .end local v40    # "_result":Z
    :sswitch_25
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 431
    .local v11, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 433
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 435
    .local v22, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_18

    .line 436
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/WorkSource;

    .line 441
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v40

    .line 442
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v40, :cond_19

    const/16 v41, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/16 v41, 0x1

    return v41

    .line 439
    .end local v40    # "_result":Z
    :cond_18
    const/16 v24, 0x0

    .local v24, "_arg3":Landroid/os/WorkSource;
    goto :goto_18

    .line 443
    .end local v24    # "_arg3":Landroid/os/WorkSource;
    .restart local v40    # "_result":Z
    :cond_19
    const/16 v41, 0x0

    goto :goto_19

    .line 448
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v40    # "_result":Z
    :sswitch_26
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 452
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1a

    .line 453
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/WorkSource;

    .line 458
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/16 v41, 0x1

    return v41

    .line 456
    :cond_1a
    const/16 v18, 0x0

    .restart local v18    # "_arg1":Landroid/os/WorkSource;
    goto :goto_1a

    .line 464
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg1":Landroid/os/WorkSource;
    :sswitch_27
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 467
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v40

    .line 468
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v40, :cond_1b

    const/16 v41, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/16 v41, 0x1

    return v41

    .line 469
    :cond_1b
    const/16 v41, 0x0

    goto :goto_1b

    .line 474
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_result":Z
    :sswitch_28
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/16 v41, 0x1

    return v41

    .line 481
    :sswitch_29
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v40

    .line 483
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    if-eqz v40, :cond_1c

    const/16 v41, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/16 v41, 0x1

    return v41

    .line 484
    :cond_1c
    const/16 v41, 0x0

    goto :goto_1c

    .line 489
    .end local v40    # "_result":Z
    :sswitch_2a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 493
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 494
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/16 v41, 0x1

    return v41

    .line 500
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/16 v41, 0x1

    return v41

    .line 507
    :sswitch_2c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1d

    .line 510
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 516
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1e

    const/16 v21, 0x1

    .line 517
    .restart local v21    # "_arg1":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/16 v41, 0x1

    return v41

    .line 513
    .end local v21    # "_arg1":Z
    :cond_1d
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1d

    .line 516
    .end local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1e
    const/16 v21, 0x0

    goto :goto_1e

    .line 523
    :sswitch_2d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v25

    .line 525
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/16 v41, 0x1

    return v41

    .line 531
    .end local v25    # "_result":I
    :sswitch_2e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 533
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v31, :cond_1f

    .line 535
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 541
    :goto_1f
    const/16 v41, 0x1

    return v41

    .line 539
    :cond_1f
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 545
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 549
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 551
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 552
    .local v23, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v14, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 553
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    if-eqz v31, :cond_20

    .line 555
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 561
    :goto_20
    const/16 v41, 0x1

    return v41

    .line 559
    :cond_20
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 565
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v23    # "_arg2":[B
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_30
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 569
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 570
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->buildHS20WifiConfigFromXml(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 571
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v31, :cond_21

    .line 573
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 579
    :goto_21
    const/16 v41, 0x1

    return v41

    .line 577
    :cond_21
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 583
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_31
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_22

    .line 586
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 591
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/16 v41, 0x1

    return v41

    .line 589
    :cond_22
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_22

    .line 597
    .end local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_32
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 600
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/16 v41, 0x1

    return v41

    .line 606
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/16 v41, 0x1

    return v41

    .line 613
    :sswitch_34
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 616
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->addToSBlacklist(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/16 v41, 0x1

    return v41

    .line 622
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearSBlacklist()V

    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    const/16 v41, 0x1

    return v41

    .line 629
    :sswitch_36
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSBlacklist()Ljava/lang/String;

    move-result-object v35

    .line 631
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    const/16 v41, 0x1

    return v41

    .line 637
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v34

    .line 639
    .local v34, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v34, :cond_23

    .line 641
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/16 v41, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 647
    :goto_23
    const/16 v41, 0x1

    return v41

    .line 645
    :cond_23
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 651
    .end local v34    # "_result":Landroid/os/Messenger;
    :sswitch_38
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v35

    .line 653
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    const/16 v41, 0x1

    return v41

    .line 659
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 663
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_24

    const/16 v21, 0x1

    .line 664
    .restart local v21    # "_arg1":Z
    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/16 v41, 0x1

    return v41

    .line 663
    .end local v21    # "_arg1":Z
    :cond_24
    const/16 v21, 0x0

    goto :goto_24

    .line 670
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 674
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_25

    const/16 v21, 0x1

    .line 675
    .restart local v21    # "_arg1":Z
    :goto_25
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/16 v41, 0x1

    return v41

    .line 674
    .end local v21    # "_arg1":Z
    :cond_25
    const/16 v21, 0x0

    goto :goto_25

    .line 681
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 684
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v35

    .line 685
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 687
    const/16 v41, 0x1

    return v41

    .line 691
    .end local v4    # "_arg0":I
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 694
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    const/16 v41, 0x1

    return v41

    .line 700
    .end local v4    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v25

    .line 702
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/16 v41, 0x1

    return v41

    .line 708
    .end local v25    # "_result":I
    :sswitch_3e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 711
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    const/16 v41, 0x1

    return v41

    .line 717
    .end local v4    # "_arg0":I
    :sswitch_3f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v25

    .line 719
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/16 v41, 0x1

    return v41

    .line 725
    .end local v25    # "_result":I
    :sswitch_40
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 728
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    const/16 v41, 0x1

    return v41

    .line 734
    .end local v4    # "_arg0":I
    :sswitch_41
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v25

    .line 736
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    const/16 v41, 0x1

    return v41

    .line 742
    .end local v25    # "_result":I
    :sswitch_42
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_26

    const/4 v15, 0x1

    .line 745
    .restart local v15    # "_arg0":Z
    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    move-result v40

    .line 746
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    if-eqz v40, :cond_27

    const/16 v41, 0x1

    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/16 v41, 0x1

    return v41

    .line 744
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_26
    const/4 v15, 0x0

    goto :goto_26

    .line 747
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_27
    const/16 v41, 0x0

    goto :goto_27

    .line 752
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_43
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v40

    .line 754
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    if-eqz v40, :cond_28

    const/16 v41, 0x1

    :goto_28
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    const/16 v41, 0x1

    return v41

    .line 755
    :cond_28
    const/16 v41, 0x0

    goto :goto_28

    .line 760
    .end local v40    # "_result":Z
    :sswitch_44
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_29

    const/4 v15, 0x1

    .line 763
    .restart local v15    # "_arg0":Z
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    const/16 v41, 0x1

    return v41

    .line 762
    .end local v15    # "_arg0":Z
    :cond_29
    const/4 v15, 0x0

    goto :goto_29

    .line 769
    :sswitch_45
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v32

    .line 771
    .local v32, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    if-eqz v32, :cond_2a

    .line 773
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 779
    :goto_2a
    const/16 v41, 0x1

    return v41

    .line 777
    :cond_2a
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 783
    .end local v32    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_46
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 786
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    const/16 v41, 0x1

    return v41

    .line 792
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    const/16 v41, 0x1

    return v41

    .line 799
    :sswitch_48
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v27

    .line 801
    .local v27, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v27, :cond_2b

    .line 803
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    const/16 v41, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 809
    :goto_2b
    const/16 v41, 0x1

    return v41

    .line 807
    :cond_2b
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 813
    .end local v27    # "_result":Landroid/net/Network;
    :sswitch_49
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2c

    .line 816
    sget-object v41, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 821
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->callSECApi(Landroid/os/Message;)I

    move-result v25

    .line 822
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    const/16 v41, 0x1

    return v41

    .line 819
    .end local v25    # "_result":I
    :cond_2c
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/os/Message;
    goto :goto_2c

    .line 828
    .end local v12    # "_arg0":Landroid/os/Message;
    :sswitch_4a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2d

    .line 831
    sget-object v41, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 836
    :goto_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v35

    .line 837
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    const/16 v41, 0x1

    return v41

    .line 834
    .end local v35    # "_result":Ljava/lang/String;
    :cond_2d
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/os/Message;
    goto :goto_2d

    .line 843
    .end local v12    # "_arg0":Landroid/os/Message;
    :sswitch_4b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 846
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->semGetConfiguredNetworks(I)Ljava/util/List;

    move-result-object v38

    .line 847
    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 849
    const/16 v41, 0x1

    return v41

    .line 853
    .end local v4    # "_arg0":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 856
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 857
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    if-eqz v31, :cond_2e

    .line 859
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 865
    :goto_2e
    const/16 v41, 0x1

    return v41

    .line 863
    :cond_2e
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 869
    .end local v4    # "_arg0":I
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 872
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getSpecificPasspointNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 873
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    if-eqz v31, :cond_2f

    .line 875
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 881
    :goto_2f
    const/16 v41, 0x1

    return v41

    .line 879
    :cond_2f
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 885
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v35

    .line 887
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    const/16 v41, 0x1

    return v41

    .line 893
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfigTxPower()I

    move-result v25

    .line 895
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/16 v41, 0x1

    return v41

    .line 901
    .end local v25    # "_result":I
    :sswitch_50
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 904
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigTxPower(I)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    const/16 v41, 0x1

    return v41

    .line 910
    .end local v4    # "_arg0":I
    :sswitch_51
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigurationToDefault()V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    const/16 v41, 0x1

    return v41

    .line 917
    :sswitch_52
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 920
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApTimeOut(I)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    const/16 v41, 0x1

    return v41

    .line 926
    .end local v4    # "_arg0":I
    :sswitch_53
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApTimeOut()I

    move-result v25

    .line 928
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    const/16 v41, 0x1

    return v41

    .line 934
    .end local v25    # "_result":I
    :sswitch_54
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_30

    .line 937
    sget-object v41, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/PPPOEConfig;

    .line 942
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    const/16 v41, 0x1

    return v41

    .line 940
    :cond_30
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/wifi/PPPOEConfig;
    goto :goto_30

    .line 948
    .end local v5    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    :sswitch_55
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopPPPOE()V

    .line 950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    const/16 v41, 0x1

    return v41

    .line 955
    :sswitch_56
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v29

    .line 957
    .local v29, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    if-eqz v29, :cond_31

    .line 959
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    const/16 v41, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 965
    :goto_31
    const/16 v41, 0x1

    return v41

    .line 963
    :cond_31
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 969
    .end local v29    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_57
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 972
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetworkByMDM(I)Z

    move-result v40

    .line 973
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v40, :cond_32

    const/16 v41, 0x1

    :goto_32
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/16 v41, 0x1

    return v41

    .line 974
    :cond_32
    const/16 v41, 0x0

    goto :goto_32

    .line 979
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_58
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_33

    .line 982
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 987
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->saveNetworkByMDM(Landroid/net/wifi/WifiConfiguration;)I

    move-result v25

    .line 988
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    const/16 v41, 0x1

    return v41

    .line 985
    .end local v25    # "_result":I
    :cond_33
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_33

    .line 994
    .end local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_59
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->checkWarningPopup()Z

    move-result v40

    .line 996
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    if-eqz v40, :cond_34

    const/16 v41, 0x1

    :goto_34
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    const/16 v41, 0x1

    return v41

    .line 997
    :cond_34
    const/16 v41, 0x0

    goto :goto_34

    .line 1002
    .end local v40    # "_result":Z
    :sswitch_5a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1005
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v40

    .line 1006
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    if-eqz v40, :cond_35

    const/16 v41, 0x1

    :goto_35
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    const/16 v41, 0x1

    return v41

    .line 1007
    :cond_35
    const/16 v41, 0x0

    goto :goto_35

    .line 1012
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_5b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamTrigger()I

    move-result v25

    .line 1014
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/16 v41, 0x1

    return v41

    .line 1020
    .end local v25    # "_result":I
    :sswitch_5c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1023
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamDelta(I)Z

    move-result v40

    .line 1024
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    if-eqz v40, :cond_36

    const/16 v41, 0x1

    :goto_36
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    const/16 v41, 0x1

    return v41

    .line 1025
    :cond_36
    const/16 v41, 0x0

    goto :goto_36

    .line 1030
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_5d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamDelta()I

    move-result v25

    .line 1032
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    const/16 v41, 0x1

    return v41

    .line 1038
    .end local v25    # "_result":I
    :sswitch_5e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1041
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v40

    .line 1042
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    if-eqz v40, :cond_37

    const/16 v41, 0x1

    :goto_37
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    const/16 v41, 0x1

    return v41

    .line 1043
    :cond_37
    const/16 v41, 0x0

    goto :goto_37

    .line 1048
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_5f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamScanPeriod()I

    move-result v25

    .line 1050
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    const/16 v41, 0x1

    return v41

    .line 1056
    .end local v25    # "_result":I
    :sswitch_60
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1059
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setFullRoamScanPeriod(I)Z

    move-result v40

    .line 1060
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    if-eqz v40, :cond_38

    const/16 v41, 0x1

    :goto_38
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/16 v41, 0x1

    return v41

    .line 1061
    :cond_38
    const/16 v41, 0x0

    goto :goto_38

    .line 1066
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_61
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFullRoamScanPeriod()I

    move-result v25

    .line 1068
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    const/16 v41, 0x1

    return v41

    .line 1074
    .end local v25    # "_result":I
    :sswitch_62
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1077
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamBand(I)Z

    move-result v40

    .line 1078
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    if-eqz v40, :cond_39

    const/16 v41, 0x1

    :goto_39
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    const/16 v41, 0x1

    return v41

    .line 1079
    :cond_39
    const/16 v41, 0x0

    goto :goto_39

    .line 1084
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_63
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamBand()I

    move-result v25

    .line 1086
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    const/16 v41, 0x1

    return v41

    .line 1092
    .end local v25    # "_result":I
    :sswitch_64
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1095
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setCountryRev(Ljava/lang/String;)Z

    move-result v40

    .line 1096
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    if-eqz v40, :cond_3a

    const/16 v41, 0x1

    :goto_3a
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    const/16 v41, 0x1

    return v41

    .line 1097
    :cond_3a
    const/16 v41, 0x0

    goto :goto_3a

    .line 1102
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Z
    :sswitch_65
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryRev()Ljava/lang/String;

    move-result-object v35

    .line 1104
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1106
    const/16 v41, 0x1

    return v41

    .line 1110
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_66
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getLinkStatus()I

    move-result v25

    .line 1112
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/16 v41, 0x1

    return v41

    .line 1118
    .end local v25    # "_result":I
    :sswitch_67
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_3b

    const/4 v15, 0x1

    .line 1121
    .restart local v15    # "_arg0":Z
    :goto_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setIsFmcNetwork(Z)Z

    move-result v40

    .line 1122
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    if-eqz v40, :cond_3c

    const/16 v41, 0x1

    :goto_3c
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    const/16 v41, 0x1

    return v41

    .line 1120
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_3b
    const/4 v15, 0x0

    goto :goto_3b

    .line 1123
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_3c
    const/16 v41, 0x0

    goto :goto_3c

    .line 1128
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_68
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_3d

    const/4 v15, 0x1

    .line 1131
    .restart local v15    # "_arg0":Z
    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setWifiIBSSEnabled(Z)Z

    move-result v40

    .line 1132
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    if-eqz v40, :cond_3e

    const/16 v41, 0x1

    :goto_3e
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    const/16 v41, 0x1

    return v41

    .line 1130
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_3d
    const/4 v15, 0x0

    goto :goto_3d

    .line 1133
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_3e
    const/16 v41, 0x0

    goto :goto_3e

    .line 1138
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_69
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v28

    .line 1140
    .local v28, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    if-eqz v28, :cond_3f

    .line 1142
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    const/16 v41, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1148
    :goto_3f
    const/16 v41, 0x1

    return v41

    .line 1146
    :cond_3f
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 1152
    .end local v28    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiIBSSEnabledState()I

    move-result v25

    .line 1154
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    const/16 v41, 0x1

    return v41

    .line 1160
    .end local v25    # "_result":I
    :sswitch_6b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiSharingEnabled()Z

    move-result v40

    .line 1162
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    if-eqz v40, :cond_40

    const/16 v41, 0x1

    :goto_40
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/16 v41, 0x1

    return v41

    .line 1163
    :cond_40
    const/16 v41, 0x0

    goto :goto_40

    .line 1168
    .end local v40    # "_result":Z
    :sswitch_6c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->semGetWifiApChannel()I

    move-result v25

    .line 1170
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    const/16 v41, 0x1

    return v41

    .line 1176
    .end local v25    # "_result":I
    :sswitch_6d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_41

    const/4 v15, 0x1

    .line 1179
    .restart local v15    # "_arg0":Z
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiSharing(Z)Z

    move-result v40

    .line 1180
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    if-eqz v40, :cond_42

    const/16 v41, 0x1

    :goto_42
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/16 v41, 0x1

    return v41

    .line 1178
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_41
    const/4 v15, 0x0

    goto :goto_41

    .line 1181
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_42
    const/16 v41, 0x0

    goto :goto_42

    .line 1186
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_6e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_43

    const/4 v15, 0x1

    .line 1189
    .restart local v15    # "_arg0":Z
    :goto_43
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setProvisionSuccess(Z)Z

    move-result v40

    .line 1190
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    if-eqz v40, :cond_44

    const/16 v41, 0x1

    :goto_44
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    const/16 v41, 0x1

    return v41

    .line 1188
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_43
    const/4 v15, 0x0

    goto :goto_43

    .line 1191
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_44
    const/16 v41, 0x0

    goto :goto_44

    .line 1196
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_6f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getProvisionSuccess()I

    move-result v25

    .line 1198
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    const/16 v41, 0x1

    return v41

    .line 1204
    .end local v25    # "_result":I
    :sswitch_70
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRvfMode()I

    move-result v25

    .line 1206
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    const/16 v41, 0x1

    return v41

    .line 1212
    .end local v25    # "_result":I
    :sswitch_71
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1215
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRvfMode(I)Z

    move-result v40

    .line 1216
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    if-eqz v40, :cond_45

    const/16 v41, 0x1

    :goto_45
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    const/16 v41, 0x1

    return v41

    .line 1217
    :cond_45
    const/16 v41, 0x0

    goto :goto_45

    .line 1222
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_72
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHs20OsuProviders()Ljava/util/List;

    move-result-object v39

    .line 1224
    .local v39, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20OsuProvider;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1226
    const/16 v41, 0x1

    return v41

    .line 1230
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20OsuProvider;>;"
    :sswitch_73
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isHs20OsuProviderAvailable()Z

    move-result v40

    .line 1232
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    if-eqz v40, :cond_46

    const/16 v41, 0x1

    :goto_46
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    const/16 v41, 0x1

    return v41

    .line 1233
    :cond_46
    const/16 v41, 0x0

    goto :goto_46

    .line 1238
    .end local v40    # "_result":Z
    :sswitch_74
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->fetchHs20OsuProviders()Z

    move-result v40

    .line 1240
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    if-eqz v40, :cond_47

    const/16 v41, 0x1

    :goto_47
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    const/16 v41, 0x1

    return v41

    .line 1241
    :cond_47
    const/16 v41, 0x0

    goto :goto_47

    .line 1246
    .end local v40    # "_result":Z
    :sswitch_75
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1249
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z

    move-result v40

    .line 1250
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    if-eqz v40, :cond_48

    const/16 v41, 0x1

    :goto_48
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    const/16 v41, 0x1

    return v41

    .line 1251
    :cond_48
    const/16 v41, 0x0

    goto :goto_48

    .line 1256
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Z
    :sswitch_76
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isPasspointDefaultOn()Z

    move-result v40

    .line 1258
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    if-eqz v40, :cond_49

    const/16 v41, 0x1

    :goto_49
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    const/16 v41, 0x1

    return v41

    .line 1259
    :cond_49
    const/16 v41, 0x0

    goto :goto_49

    .line 1264
    .end local v40    # "_result":Z
    :sswitch_77
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isPasspointMenuVisible()Z

    move-result v40

    .line 1266
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    if-eqz v40, :cond_4a

    const/16 v41, 0x1

    :goto_4a
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    const/16 v41, 0x1

    return v41

    .line 1267
    :cond_4a
    const/16 v41, 0x0

    goto :goto_4a

    .line 1272
    .end local v40    # "_result":Z
    :sswitch_78
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isCaptivePortalException()Z

    move-result v40

    .line 1274
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    if-eqz v40, :cond_4b

    const/16 v41, 0x1

    :goto_4b
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    const/16 v41, 0x1

    return v41

    .line 1275
    :cond_4b
    const/16 v41, 0x0

    goto :goto_4b

    .line 1280
    .end local v40    # "_result":Z
    :sswitch_79
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiWatchdogMessenger()Landroid/os/Messenger;

    move-result-object v34

    .line 1282
    .restart local v34    # "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    if-eqz v34, :cond_4c

    .line 1284
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    const/16 v41, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1290
    :goto_4c
    const/16 v41, 0x1

    return v41

    .line 1288
    :cond_4c
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
