.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addChain:I = 0x8c

.field static final TRANSACTION_addEnterpriseUidRanges:I = 0x7b

.field static final TRANSACTION_addIdleTimer:I = 0x40

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x68

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x5e

.field static final TRANSACTION_addIpAcceptRule:I = 0x98

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x60

.field static final TRANSACTION_addMptcpLink:I = 0x8a

.field static final TRANSACTION_addRoute:I = 0xe

.field static final TRANSACTION_addRouteWithMetric:I = 0x77

.field static final TRANSACTION_addSocksRule:I = 0x8e

.field static final TRANSACTION_addSocksSkipRule:I = 0x92

.field static final TRANSACTION_addSocksSkipRuleProto:I = 0x94

.field static final TRANSACTION_addSourcePortAcceptRule:I = 0x9f

.field static final TRANSACTION_addSourceRoute:I = 0x9d

.field static final TRANSACTION_addUidSocksRule:I = 0x90

.field static final TRANSACTION_addUidToChain:I = 0x96

.field static final TRANSACTION_addVpnUidRanges:I = 0x53

.field static final TRANSACTION_allowProtect:I = 0x66

.field static final TRANSACTION_appendInterfaceToLocalNetwork:I = 0x76

.field static final TRANSACTION_attachPppd:I = 0x22

.field static final TRANSACTION_blockDnsQueries:I = 0xa5

.field static final TRANSACTION_blockEnterpriseUidRanges:I = 0x7d

.field static final TRANSACTION_buildFirewall:I = 0x4c

.field static final TRANSACTION_clearAllFirewallPolicy:I = 0x4e

.field static final TRANSACTION_clearDefaultNetId:I = 0x62

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_clearPermission:I = 0x65

.field static final TRANSACTION_controlPrivatePacket:I = 0x7a

.field static final TRANSACTION_createNetworkGuardChain:I = 0x82

.field static final TRANSACTION_createPhysicalNetwork:I = 0x5b

.field static final TRANSACTION_createSoftApInterface:I = 0x6b

.field static final TRANSACTION_createVirtualNetwork:I = 0x5c

.field static final TRANSACTION_delIpAcceptRule:I = 0x99

.field static final TRANSACTION_delSourcePortAcceptRule:I = 0xa0

.field static final TRANSACTION_delSourceRoute:I = 0x9e

.field static final TRANSACTION_delSrcRoute:I = 0x79

.field static final TRANSACTION_deleteNetworkGuardChain:I = 0x83

.field static final TRANSACTION_deleteNetworkGuardWhiteListRule:I = 0x86

.field static final TRANSACTION_deleteSoftApInterface:I = 0x6c

.field static final TRANSACTION_denyProtect:I = 0x67

.field static final TRANSACTION_destroyBlockedKnoxNetwork:I = 0xa9

.field static final TRANSACTION_detachPppd:I = 0x23

.field static final TRANSACTION_disableEpdg:I = 0x80

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableMptcp:I = 0x9c

.field static final TRANSACTION_disableNat:I = 0x20

.field static final TRANSACTION_disableNetworkGuard:I = 0x85

.field static final TRANSACTION_enableEpdg:I = 0x7f

.field static final TRANSACTION_enableIpv6:I = 0xb

.field static final TRANSACTION_enableMptcp:I = 0x9b

.field static final TRANSACTION_enableNat:I = 0x1f

.field static final TRANSACTION_enableNetworkGuard:I = 0x84

.field static final TRANSACTION_exemptVpnDnsQuery:I = 0xa7

.field static final TRANSACTION_getAccessPointChannel:I = 0x26

.field static final TRANSACTION_getAccessPointNumConnectedSta:I = 0x24

.field static final TRANSACTION_getAccessPointStaList:I = 0x25

.field static final TRANSACTION_getDnsForwarders:I = 0x1b

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x12

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x33

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x31

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x32

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x35

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x34

.field static final TRANSACTION_getNetworkStatsVideoCall:I = 0x6f

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x3f

.field static final TRANSACTION_isClatdStarted:I = 0x57

.field static final TRANSACTION_isFirewallEnabled:I = 0x45

.field static final TRANSACTION_isNetworkActive:I = 0x5a

.field static final TRANSACTION_isTetheringStarted:I = 0x16

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x19

.field static final TRANSACTION_listTtys:I = 0x21

.field static final TRANSACTION_readWhiteList:I = 0x28

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x58

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeChain:I = 0x8d

.field static final TRANSACTION_removeEnterpriseUidRanges:I = 0x7c

.field static final TRANSACTION_removeIdleTimer:I = 0x41

.field static final TRANSACTION_removeInterfaceAlert:I = 0x39

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x69

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x5f

.field static final TRANSACTION_removeInterfaceQuota:I = 0x37

.field static final TRANSACTION_removeLegacyRouteForNetId:I = 0x72

.field static final TRANSACTION_removeMptcpLink:I = 0x8b

.field static final TRANSACTION_removeNetwork:I = 0x5d

.field static final TRANSACTION_removeRoute:I = 0xf

.field static final TRANSACTION_removeSocksRule:I = 0x8f

.field static final TRANSACTION_removeSocksSkipRule:I = 0x93

.field static final TRANSACTION_removeSocksSkipRuleProto:I = 0x95

.field static final TRANSACTION_removeUidFromChain:I = 0x97

.field static final TRANSACTION_removeUidSocksRule:I = 0x91

.field static final TRANSACTION_removeVpnDnsQuery:I = 0xa8

.field static final TRANSACTION_removeVpnUidRanges:I = 0x54

.field static final TRANSACTION_replaceSrcRoute:I = 0x78

.field static final TRANSACTION_setAccessPoint:I = 0x30

.field static final TRANSACTION_setAccessPointDisassocSta:I = 0x27

.field static final TRANSACTION_setAllowOnlyVpnForUids:I = 0x6a

.field static final TRANSACTION_setApprovedIpOnBlockAllPacket:I = 0x71

.field static final TRANSACTION_setBlockAllPackets:I = 0x70

.field static final TRANSACTION_setDataSaverModeEnabled:I = 0x3d

.field static final TRANSACTION_setDefaultNetId:I = 0x61

.field static final TRANSACTION_setDestinationBasedMarkRule:I = 0xa3

.field static final TRANSACTION_setDnsConfigurationForNetwork:I = 0x42

.field static final TRANSACTION_setDnsForwarders:I = 0x1a

.field static final TRANSACTION_setDnsServersForNetwork:I = 0x43

.field static final TRANSACTION_setEpdgInterfaceDropRule:I = 0x81

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x4b

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x48

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x47

.field static final TRANSACTION_setFirewallEnabled:I = 0x44

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x46

.field static final TRANSACTION_setFirewallRuleMobileData:I = 0x4f

.field static final TRANSACTION_setFirewallRuleWifi:I = 0x50

.field static final TRANSACTION_setFirewallUidRule:I = 0x49

.field static final TRANSACTION_setFirewallUidRuleMobileData:I = 0x51

.field static final TRANSACTION_setFirewallUidRuleWifi:I = 0x52

.field static final TRANSACTION_setFirewallUidRules:I = 0x4a

.field static final TRANSACTION_setGlobalAlert:I = 0x3a

.field static final TRANSACTION_setInterfaceAlert:I = 0x38

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xc

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x36

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_setMaxClient:I = 0x29

.field static final TRANSACTION_setMtu:I = 0x10

.field static final TRANSACTION_setNetworkGuardProtocolAcceptRule:I = 0x89

.field static final TRANSACTION_setNetworkGuardUidRangeAcceptRule:I = 0x87

.field static final TRANSACTION_setNetworkGuardUidRule:I = 0x88

.field static final TRANSACTION_setNetworkPermission:I = 0x63

.field static final TRANSACTION_setPermission:I = 0x64

.field static final TRANSACTION_setPrivateIpRoute:I = 0xa2

.field static final TRANSACTION_setRoamingReductionRules:I = 0x75

.field static final TRANSACTION_setTcpBufferSize:I = 0x9a

.field static final TRANSACTION_setTxPower:I = 0x2a

.field static final TRANSACTION_setUIDRoute:I = 0xa4

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x3e

.field static final TRANSACTION_setUidMeteredNetworkBlacklist:I = 0x3b

.field static final TRANSACTION_setUidMeteredNetworkWhitelist:I = 0x3c

.field static final TRANSACTION_setWhiteListUidNetworkRules:I = 0x73

.field static final TRANSACTION_setWhiteListUrlNetworkRules:I = 0x74

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startAccessPoint:I = 0x2c

.field static final TRANSACTION_startClatd:I = 0x55

.field static final TRANSACTION_startInterfaceForwarding:I = 0x1c

.field static final TRANSACTION_startNetworkStatsOnPorts:I = 0x6d

.field static final TRANSACTION_startTethering:I = 0x14

.field static final TRANSACTION_startWigigAccessPoint:I = 0x2d

.field static final TRANSACTION_stopAccessPoint:I = 0x2e

.field static final TRANSACTION_stopClatd:I = 0x56

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x1d

.field static final TRANSACTION_stopNetworkStatsOnPorts:I = 0x6e

.field static final TRANSACTION_stopTethering:I = 0x15

.field static final TRANSACTION_stopWigigAccessPoint:I = 0x2f

.field static final TRANSACTION_tearDownFirewall:I = 0x4d

.field static final TRANSACTION_tetherInterface:I = 0x17

.field static final TRANSACTION_unblockDnsQueries:I = 0xa6

.field static final TRANSACTION_unblockEnterpriseUidRanges:I = 0x7e

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x59

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x18

.field static final TRANSACTION_updateRa:I = 0x1e

.field static final TRANSACTION_updateSourceRule:I = 0xa1

.field static final TRANSACTION_wifiFirmwareReload:I = 0x2b

.field static final TRANSACTION_wps_ap_method:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 56
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 1926
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v26

    .line 53
    .local v26, "_arg0":Landroid/net/INetworkManagementEventObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v4, 0x1

    return v4

    .line 59
    .end local v26    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v26

    .line 62
    .restart local v26    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v4, 0x1

    return v4

    .line 68
    .end local v26    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v55

    .line 70
    .local v55, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 72
    const/4 v4, 0x1

    return v4

    .line 76
    .end local v55    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v51

    .line 80
    .local v51, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v51, :cond_0

    .line 82
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v4, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 86
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_5
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 96
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    sget-object v4, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/InterfaceConfiguration;

    .line 102
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v4, 0x1

    return v4

    .line 100
    :cond_1
    const/16 v35, 0x0

    .local v35, "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_1

    .line 108
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v35    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v4, 0x1

    return v4

    .line 117
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 120
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v4, 0x1

    return v4

    .line 126
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 129
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v4, 0x1

    return v4

    .line 135
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 139
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v40, 0x1

    .line 140
    .local v40, "_arg1":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v4, 0x1

    return v4

    .line 139
    .end local v40    # "_arg1":Z
    :cond_2
    const/16 v40, 0x0

    goto :goto_2

    .line 146
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v4, 0x1

    return v4

    .line 155
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v4, 0x1

    return v4

    .line 164
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 168
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v40, 0x1

    .line 169
    .restart local v40    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v4, 0x1

    return v4

    .line 168
    .end local v40    # "_arg1":Z
    :cond_3
    const/16 v40, 0x0

    goto :goto_3

    .line 175
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->wps_ap_method(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 181
    .local v53, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    const/4 v4, 0x1

    return v4

    .line 187
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v53    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 191
    .local v23, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 192
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/RouteInfo;

    .line 197
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v4, 0x1

    return v4

    .line 195
    :cond_4
    const/16 v38, 0x0

    .local v38, "_arg1":Landroid/net/RouteInfo;
    goto :goto_4

    .line 203
    .end local v23    # "_arg0":I
    .end local v38    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 207
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/RouteInfo;

    .line 213
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v4, 0x1

    return v4

    .line 211
    :cond_5
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_5

    .line 219
    .end local v23    # "_arg0":I
    .end local v38    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_10
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 224
    .local v34, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v4, 0x1

    return v4

    .line 230
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v4, 0x1

    return v4

    .line 237
    :sswitch_12
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v54

    .line 239
    .local v54, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v54, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v4, 0x1

    return v4

    .line 240
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 245
    .end local v54    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v11, 0x1

    .line 248
    .local v11, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v4, 0x1

    return v4

    .line 247
    .end local v11    # "_arg0":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    .line 254
    :sswitch_14
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v33

    .line 257
    .local v33, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v4, 0x1

    return v4

    .line 263
    .end local v33    # "_arg0":[Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v4, 0x1

    return v4

    .line 270
    :sswitch_16
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v54

    .line 272
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v54, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v4, 0x1

    return v4

    .line 273
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 278
    .end local v54    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v4, 0x1

    return v4

    .line 287
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/4 v4, 0x1

    return v4

    .line 296
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v55

    .line 298
    .restart local v55    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 300
    const/4 v4, 0x1

    return v4

    .line 304
    .end local v55    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 307
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/Network;

    .line 313
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v44

    .line 314
    .local v44, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v4, 0x1

    return v4

    .line 310
    .end local v44    # "_arg1":[Ljava/lang/String;
    :cond_9
    const/16 v27, 0x0

    .local v27, "_arg0":Landroid/net/Network;
    goto :goto_9

    .line 320
    .end local v27    # "_arg0":Landroid/net/Network;
    :sswitch_1b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v55

    .line 322
    .restart local v55    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 324
    const/4 v4, 0x1

    return v4

    .line 328
    .end local v55    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 332
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 333
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v4, 0x1

    return v4

    .line 339
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 343
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 344
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/4 v4, 0x1

    return v4

    .line 350
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 354
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 356
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/INetworkManagementService$Stub;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v4, 0x1

    return v4

    .line 363
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 367
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 368
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v4, 0x1

    return v4

    .line 374
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 378
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 379
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v4, 0x1

    return v4

    .line 385
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v55

    .line 387
    .restart local v55    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 389
    const/4 v4, 0x1

    return v4

    .line 393
    .end local v55    # "_result":[Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 397
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 399
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 401
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 403
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 404
    invoke-virtual/range {v4 .. v9}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v4, 0x1

    return v4

    .line 410
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 413
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v4, 0x1

    return v4

    .line 419
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointNumConnectedSta()I

    move-result v50

    .line 421
    .local v50, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v4, 0x1

    return v4

    .line 427
    .end local v50    # "_result":I
    :sswitch_25
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointStaList()Ljava/lang/String;

    move-result-object v53

    .line 429
    .restart local v53    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    const/4 v4, 0x1

    return v4

    .line 435
    .end local v53    # "_result":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointChannel()I

    move-result v50

    .line 437
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v4, 0x1

    return v4

    .line 443
    .end local v50    # "_result":I
    :sswitch_27
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 446
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setAccessPointDisassocSta(Ljava/lang/String;)I

    move-result v50

    .line 447
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v4, 0x1

    return v4

    .line 453
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":I
    :sswitch_28
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->readWhiteList()I

    move-result v50

    .line 455
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v4, 0x1

    return v4

    .line 461
    .end local v50    # "_result":I
    :sswitch_29
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 464
    .restart local v23    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setMaxClient(I)I

    move-result v50

    .line 465
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v4, 0x1

    return v4

    .line 471
    .end local v23    # "_arg0":I
    .end local v50    # "_result":I
    :sswitch_2a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 474
    .restart local v23    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setTxPower(I)I

    move-result v50

    .line 475
    .restart local v50    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v4, 0x1

    return v4

    .line 481
    .end local v23    # "_arg0":I
    .end local v50    # "_result":I
    :sswitch_2b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 485
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 486
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v4, 0x1

    return v4

    .line 492
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 495
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/WifiConfiguration;

    .line 501
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 502
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/4 v4, 0x1

    return v4

    .line 498
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_a
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_a

    .line 508
    .end local v28    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->startWigigAccessPoint()V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v4, 0x1

    return v4

    .line 515
    :sswitch_2e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 518
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    const/4 v4, 0x1

    return v4

    .line 524
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopWigigAccessPoint()V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v4, 0x1

    return v4

    .line 531
    :sswitch_30
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 534
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/WifiConfiguration;

    .line 540
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 541
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v4, 0x1

    return v4

    .line 537
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_b
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    .line 547
    .end local v28    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_31
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v52

    .line 549
    .local v52, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v52, :cond_c

    .line 551
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 557
    :goto_c
    const/4 v4, 0x1

    return v4

    .line 555
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 561
    .end local v52    # "_result":Landroid/net/NetworkStats;
    :sswitch_32
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v52

    .line 563
    .restart local v52    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v52, :cond_d

    .line 565
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 571
    :goto_d
    const/4 v4, 0x1

    return v4

    .line 569
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 575
    .end local v52    # "_result":Landroid/net/NetworkStats;
    :sswitch_33
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v52

    .line 577
    .restart local v52    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v52, :cond_e

    .line 579
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 585
    :goto_e
    const/4 v4, 0x1

    return v4

    .line 583
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 589
    .end local v52    # "_result":Landroid/net/NetworkStats;
    :sswitch_34
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 592
    .restart local v23    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v52

    .line 593
    .restart local v52    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v52, :cond_f

    .line 595
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 601
    :goto_f
    const/4 v4, 0x1

    return v4

    .line 599
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 605
    .end local v23    # "_arg0":I
    .end local v52    # "_result":Landroid/net/NetworkStats;
    :sswitch_35
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v52

    .line 607
    .restart local v52    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v52, :cond_10

    .line 609
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 615
    :goto_10
    const/4 v4, 0x1

    return v4

    .line 613
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 619
    .end local v52    # "_result":Landroid/net/NetworkStats;
    :sswitch_36
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 623
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    .line 624
    .local v36, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v4, 0x1

    return v4

    .line 630
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":J
    :sswitch_37
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 633
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    const/4 v4, 0x1

    return v4

    .line 639
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 643
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    .line 644
    .restart local v36    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/4 v4, 0x1

    return v4

    .line 650
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":J
    :sswitch_39
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 653
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v4, 0x1

    return v4

    .line 659
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 662
    .local v24, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v4, 0x1

    return v4

    .line 668
    .end local v24    # "_arg0":J
    :sswitch_3b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 672
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/16 v40, 0x1

    .line 673
    .restart local v40    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUidMeteredNetworkBlacklist(IZ)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v4, 0x1

    return v4

    .line 672
    .end local v40    # "_arg1":Z
    :cond_11
    const/16 v40, 0x0

    goto :goto_11

    .line 679
    .end local v23    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 683
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v40, 0x1

    .line 684
    .restart local v40    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUidMeteredNetworkWhitelist(IZ)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    const/4 v4, 0x1

    return v4

    .line 683
    .end local v40    # "_arg1":Z
    :cond_12
    const/16 v40, 0x0

    goto :goto_12

    .line 690
    .end local v23    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/4 v11, 0x1

    .line 693
    .restart local v11    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result v54

    .line 694
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    if-eqz v54, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v4, 0x1

    return v4

    .line 692
    .end local v11    # "_arg0":Z
    .end local v54    # "_result":Z
    :cond_13
    const/4 v11, 0x0

    goto :goto_13

    .line 695
    .restart local v11    # "_arg0":Z
    .restart local v54    # "_result":Z
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 700
    .end local v11    # "_arg0":Z
    .end local v54    # "_result":Z
    :sswitch_3e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 704
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 705
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v4, 0x1

    return v4

    .line 711
    .end local v23    # "_arg0":I
    .end local v34    # "_arg1":I
    :sswitch_3f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v54

    .line 713
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    if-eqz v54, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v4, 0x1

    return v4

    .line 714
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 719
    .end local v54    # "_result":Z
    :sswitch_40
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 723
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 725
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 726
    .local v20, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    const/4 v4, 0x1

    return v4

    .line 732
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v34    # "_arg1":I
    :sswitch_41
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 735
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    const/4 v4, 0x1

    return v4

    .line 741
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_42
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 745
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v44

    .line 747
    .restart local v44    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 748
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2, v7}, Landroid/os/INetworkManagementService$Stub;->setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v4, 0x1

    return v4

    .line 754
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v23    # "_arg0":I
    .end local v44    # "_arg1":[Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 758
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v44

    .line 760
    .restart local v44    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 761
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2, v7}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    const/4 v4, 0x1

    return v4

    .line 767
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v23    # "_arg0":I
    .end local v44    # "_arg1":[Ljava/lang/String;
    :sswitch_44
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/4 v11, 0x1

    .line 770
    .restart local v11    # "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v4, 0x1

    return v4

    .line 769
    .end local v11    # "_arg0":Z
    :cond_16
    const/4 v11, 0x0

    goto :goto_16

    .line 776
    :sswitch_45
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v54

    .line 778
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    if-eqz v54, :cond_17

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v4, 0x1

    return v4

    .line 779
    :cond_17
    const/4 v4, 0x0

    goto :goto_17

    .line 784
    .end local v54    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 788
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    const/16 v40, 0x1

    .line 789
    .restart local v40    # "_arg1":Z
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v4, 0x1

    return v4

    .line 788
    .end local v40    # "_arg1":Z
    :cond_18
    const/16 v40, 0x0

    goto :goto_18

    .line 795
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 799
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/16 v40, 0x1

    .line 800
    .restart local v40    # "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    const/4 v4, 0x1

    return v4

    .line 799
    .end local v40    # "_arg1":Z
    :cond_19
    const/16 v40, 0x0

    goto :goto_19

    .line 806
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 810
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 812
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v46, 0x1

    .line 813
    .local v46, "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v46

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/4 v4, 0x1

    return v4

    .line 812
    .end local v46    # "_arg2":Z
    :cond_1a
    const/16 v46, 0x0

    goto :goto_1a

    .line 819
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    :sswitch_49
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 823
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 825
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 826
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v34

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    const/4 v4, 0x1

    return v4

    .line 832
    .end local v20    # "_arg2":I
    .end local v23    # "_arg0":I
    .end local v34    # "_arg1":I
    :sswitch_4a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 836
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v42

    .line 838
    .local v42, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v48

    .line 839
    .local v48, "_arg2":[I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v42

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    const/4 v4, 0x1

    return v4

    .line 845
    .end local v23    # "_arg0":I
    .end local v42    # "_arg1":[I
    .end local v48    # "_arg2":[I
    :sswitch_4b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 849
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v40, 0x1

    .line 850
    .restart local v40    # "_arg1":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    const/4 v4, 0x1

    return v4

    .line 849
    .end local v40    # "_arg1":Z
    :cond_1b
    const/16 v40, 0x0

    goto :goto_1b

    .line 856
    .end local v23    # "_arg0":I
    :sswitch_4c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->buildFirewall()V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    const/4 v4, 0x1

    return v4

    .line 863
    :sswitch_4d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->tearDownFirewall()V

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    const/4 v4, 0x1

    return v4

    .line 870
    :sswitch_4e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->clearAllFirewallPolicy()V

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    const/4 v4, 0x1

    return v4

    .line 877
    :sswitch_4f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 881
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    const/16 v40, 0x1

    .line 882
    .restart local v40    # "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallRuleMobileData(IZ)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    const/4 v4, 0x1

    return v4

    .line 881
    .end local v40    # "_arg1":Z
    :cond_1c
    const/16 v40, 0x0

    goto :goto_1c

    .line 888
    .end local v23    # "_arg0":I
    :sswitch_50
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 892
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v40, 0x1

    .line 893
    .restart local v40    # "_arg1":Z
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallRuleWifi(IZ)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    const/4 v4, 0x1

    return v4

    .line 892
    .end local v40    # "_arg1":Z
    :cond_1d
    const/16 v40, 0x0

    goto :goto_1d

    .line 899
    .end local v23    # "_arg0":I
    :sswitch_51
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 903
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v40, 0x1

    .line 904
    .restart local v40    # "_arg1":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRuleMobileData(IZ)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    const/4 v4, 0x1

    return v4

    .line 903
    .end local v40    # "_arg1":Z
    :cond_1e
    const/16 v40, 0x0

    goto :goto_1e

    .line 910
    .end local v23    # "_arg0":I
    :sswitch_52
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 914
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v40, 0x1

    .line 915
    .restart local v40    # "_arg1":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRuleWifi(IZ)V

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    const/4 v4, 0x1

    return v4

    .line 914
    .end local v40    # "_arg1":Z
    :cond_1f
    const/16 v40, 0x0

    goto :goto_1f

    .line 921
    .end local v23    # "_arg0":I
    :sswitch_53
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 925
    .restart local v23    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Landroid/net/UidRange;

    .line 926
    .local v43, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    const/4 v4, 0x1

    return v4

    .line 932
    .end local v23    # "_arg0":I
    .end local v43    # "_arg1":[Landroid/net/UidRange;
    :sswitch_54
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 936
    .restart local v23    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Landroid/net/UidRange;

    .line 937
    .restart local v43    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    const/4 v4, 0x1

    return v4

    .line 943
    .end local v23    # "_arg0":I
    .end local v43    # "_arg1":[Landroid/net/UidRange;
    :sswitch_55
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 946
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    const/4 v4, 0x1

    return v4

    .line 952
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_56
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 955
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopClatd(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v4, 0x1

    return v4

    .line 961
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_57
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 964
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted(Ljava/lang/String;)Z

    move-result v54

    .line 965
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    if-eqz v54, :cond_20

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    const/4 v4, 0x1

    return v4

    .line 966
    :cond_20
    const/4 v4, 0x0

    goto :goto_20

    .line 971
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_58
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v29

    .line 974
    .local v29, "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    const/4 v4, 0x1

    return v4

    .line 980
    .end local v29    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_59
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v29

    .line 983
    .restart local v29    # "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    const/4 v4, 0x1

    return v4

    .line 989
    .end local v29    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_5a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    move-result v54

    .line 991
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    if-eqz v54, :cond_21

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    const/4 v4, 0x1

    return v4

    .line 992
    :cond_21
    const/4 v4, 0x0

    goto :goto_21

    .line 997
    .end local v54    # "_result":Z
    :sswitch_5b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1001
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1002
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    const/4 v4, 0x1

    return v4

    .line 1008
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v23    # "_arg0":I
    :sswitch_5c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1012
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    const/16 v40, 0x1

    .line 1014
    .local v40, "_arg1":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v46, 0x1

    .line 1015
    .restart local v46    # "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    const/4 v4, 0x1

    return v4

    .line 1012
    .end local v40    # "_arg1":Z
    .end local v46    # "_arg2":Z
    :cond_22
    const/16 v40, 0x0

    .restart local v40    # "_arg1":Z
    goto :goto_22

    .line 1014
    :cond_23
    const/16 v46, 0x0

    goto :goto_23

    .line 1021
    .end local v23    # "_arg0":I
    .end local v40    # "_arg1":Z
    :sswitch_5d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1024
    .restart local v23    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    .line 1025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    const/4 v4, 0x1

    return v4

    .line 1030
    .end local v23    # "_arg0":I
    :sswitch_5e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1034
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1035
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 1036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    const/4 v4, 0x1

    return v4

    .line 1041
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    :sswitch_5f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1045
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1046
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    const/4 v4, 0x1

    return v4

    .line 1052
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    :sswitch_60
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1056
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 1057
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/RouteInfo;

    .line 1063
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1064
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v38

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    const/4 v4, 0x1

    return v4

    .line 1060
    .end local v20    # "_arg2":I
    :cond_24
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_24

    .line 1070
    .end local v23    # "_arg0":I
    .end local v38    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_61
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1073
    .restart local v23    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    .line 1074
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    const/4 v4, 0x1

    return v4

    .line 1079
    .end local v23    # "_arg0":I
    :sswitch_62
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    .line 1081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    const/4 v4, 0x1

    return v4

    .line 1086
    :sswitch_63
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1090
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1091
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    .line 1092
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    const/4 v4, 0x1

    return v4

    .line 1097
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v23    # "_arg0":I
    :sswitch_64
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1101
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v42

    .line 1102
    .restart local v42    # "_arg1":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    const/4 v4, 0x1

    return v4

    .line 1108
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_arg1":[I
    :sswitch_65
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v31

    .line 1111
    .local v31, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    .line 1112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    const/4 v4, 0x1

    return v4

    .line 1117
    .end local v31    # "_arg0":[I
    :sswitch_66
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1120
    .restart local v23    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    const/4 v4, 0x1

    return v4

    .line 1126
    .end local v23    # "_arg0":I
    :sswitch_67
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1129
    .restart local v23    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v4, 0x1

    return v4

    .line 1135
    .end local v23    # "_arg0":I
    :sswitch_68
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1139
    .restart local v5    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v39

    .line 1140
    .local v39, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    const/4 v4, 0x1

    return v4

    .line 1146
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_69
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1149
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    const/4 v4, 0x1

    return v4

    .line 1155
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_6a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    const/4 v11, 0x1

    .line 1159
    .local v11, "_arg0":Z
    :goto_25
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Landroid/net/UidRange;

    .line 1160
    .restart local v43    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v11, v1}, Landroid/os/INetworkManagementService$Stub;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    const/4 v4, 0x1

    return v4

    .line 1157
    .end local v11    # "_arg0":Z
    .end local v43    # "_arg1":[Landroid/net/UidRange;
    :cond_25
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_25

    .line 1166
    .end local v11    # "_arg0":Z
    :sswitch_6b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1169
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->createSoftApInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    const/4 v4, 0x1

    return v4

    .line 1175
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_6c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1178
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->deleteSoftApInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    const/4 v4, 0x1

    return v4

    .line 1184
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_6d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1188
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1190
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1191
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    const/4 v4, 0x1

    return v4

    .line 1197
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v34    # "_arg1":I
    :sswitch_6e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1201
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1203
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1204
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 1205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    const/4 v4, 0x1

    return v4

    .line 1210
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v34    # "_arg1":I
    :sswitch_6f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1214
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1216
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1217
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;

    move-result-object v52

    .line 1218
    .restart local v52    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    if-eqz v52, :cond_26

    .line 1220
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1226
    :goto_26
    const/4 v4, 0x1

    return v4

    .line 1224
    :cond_26
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 1230
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v52    # "_result":Landroid/net/NetworkStats;
    :sswitch_70
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    const/4 v11, 0x1

    .line 1234
    .restart local v11    # "_arg0":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1235
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Landroid/os/INetworkManagementService$Stub;->setBlockAllPackets(ZLjava/lang/String;)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    const/4 v4, 0x1

    return v4

    .line 1232
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg0":Z
    :cond_27
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_27

    .line 1241
    .end local v11    # "_arg0":Z
    :sswitch_71
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1244
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setApprovedIpOnBlockAllPacket(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    const/4 v4, 0x1

    return v4

    .line 1250
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_72
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1254
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 1255
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/RouteInfo;

    .line 1261
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1262
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v38

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->removeLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    const/4 v4, 0x1

    return v4

    .line 1258
    .end local v20    # "_arg2":I
    :cond_28
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_28

    .line 1268
    .end local v23    # "_arg0":I
    .end local v38    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_73
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1272
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    const/16 v40, 0x1

    .line 1273
    .local v40, "_arg1":Z
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setWhiteListUidNetworkRules(IZ)V

    .line 1274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    const/4 v4, 0x1

    return v4

    .line 1272
    .end local v40    # "_arg1":Z
    :cond_29
    const/16 v40, 0x0

    goto :goto_29

    .line 1279
    .end local v23    # "_arg0":I
    :sswitch_74
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1283
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1285
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1287
    .restart local v20    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v49, 0x1

    .line 1288
    .local v49, "_arg3":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v49

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setWhiteListUrlNetworkRules(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    const/4 v4, 0x1

    return v4

    .line 1287
    .end local v49    # "_arg3":Z
    :cond_2a
    const/16 v49, 0x0

    goto :goto_2a

    .line 1294
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    :sswitch_75
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v11, 0x1

    .line 1297
    .local v11, "_arg0":Z
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->setRoamingReductionRules(Z)V

    .line 1298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    const/4 v4, 0x1

    return v4

    .line 1296
    .end local v11    # "_arg0":Z
    :cond_2b
    const/4 v11, 0x0

    goto :goto_2b

    .line 1303
    :sswitch_76
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1307
    .restart local v5    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v39

    .line 1308
    .restart local v39    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->appendInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    const/4 v4, 0x1

    return v4

    .line 1314
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_77
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1318
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1320
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 1321
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/net/RouteInfo;

    .line 1326
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z

    move-result v54

    .line 1327
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    if-eqz v54, :cond_2d

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    const/4 v4, 0x1

    return v4

    .line 1324
    .end local v54    # "_result":Z
    :cond_2c
    const/16 v45, 0x0

    .local v45, "_arg2":Landroid/net/RouteInfo;
    goto :goto_2c

    .line 1328
    .end local v45    # "_arg2":Landroid/net/RouteInfo;
    .restart local v54    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    goto :goto_2d

    .line 1333
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v54    # "_result":Z
    :sswitch_78
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1337
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v41

    .line 1339
    .local v41, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v47

    .line 1341
    .local v47, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1342
    .local v14, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v47

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/os/INetworkManagementService$Stub;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z

    move-result v54

    .line 1343
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    if-eqz v54, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    const/4 v4, 0x1

    return v4

    .line 1344
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    .line 1349
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v41    # "_arg1":[B
    .end local v47    # "_arg2":[B
    .end local v54    # "_result":Z
    :sswitch_79
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v30

    .line 1353
    .local v30, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1354
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delSrcRoute([BI)Z

    move-result v54

    .line 1355
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    if-eqz v54, :cond_2f

    const/4 v4, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    const/4 v4, 0x1

    return v4

    .line 1356
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2f

    .line 1361
    .end local v30    # "_arg0":[B
    .end local v34    # "_arg1":I
    .end local v54    # "_result":Z
    :sswitch_7a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1365
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1367
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1368
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/INetworkManagementService$Stub;->controlPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    const/4 v4, 0x1

    return v4

    .line 1374
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_7b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1376
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1378
    .local v32, "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1380
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1381
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2}, Landroid/os/INetworkManagementService$Stub;->addEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V

    .line 1382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    const/4 v4, 0x1

    return v4

    .line 1387
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v32    # "_arg0":[Landroid/net/UidRange;
    :sswitch_7c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1391
    .restart local v32    # "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1393
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1394
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2}, Landroid/os/INetworkManagementService$Stub;->removeEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V

    .line 1395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    const/4 v4, 0x1

    return v4

    .line 1400
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v32    # "_arg0":[Landroid/net/UidRange;
    :sswitch_7d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1403
    .restart local v32    # "_arg0":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->blockEnterpriseUidRanges([Landroid/net/UidRange;)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    const/4 v4, 0x1

    return v4

    .line 1409
    .end local v32    # "_arg0":[Landroid/net/UidRange;
    :sswitch_7e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1412
    .restart local v32    # "_arg0":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unblockEnterpriseUidRanges([Landroid/net/UidRange;)V

    .line 1413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    const/4 v4, 0x1

    return v4

    .line 1418
    .end local v32    # "_arg0":[Landroid/net/UidRange;
    :sswitch_7f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1422
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1423
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->enableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    const/4 v4, 0x1

    return v4

    .line 1429
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_80
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1433
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1434
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    const/4 v4, 0x1

    return v4

    .line 1440
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_81
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1444
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    const/16 v40, 0x1

    .line 1445
    .restart local v40    # "_arg1":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V

    .line 1446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    const/4 v4, 0x1

    return v4

    .line 1444
    .end local v40    # "_arg1":Z
    :cond_30
    const/16 v40, 0x0

    goto :goto_30

    .line 1451
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_82
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1452
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->createNetworkGuardChain()V

    .line 1453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    const/4 v4, 0x1

    return v4

    .line 1458
    :sswitch_83
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1459
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->deleteNetworkGuardChain()V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    const/4 v4, 0x1

    return v4

    .line 1465
    :sswitch_84
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    const/4 v11, 0x1

    .line 1468
    .restart local v11    # "_arg0":Z
    :goto_31
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->enableNetworkGuard(Z)V

    .line 1469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    const/4 v4, 0x1

    return v4

    .line 1467
    .end local v11    # "_arg0":Z
    :cond_31
    const/4 v11, 0x0

    goto :goto_31

    .line 1474
    :sswitch_85
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->disableNetworkGuard()V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    const/4 v4, 0x1

    return v4

    .line 1481
    :sswitch_86
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1482
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->deleteNetworkGuardWhiteListRule()V

    .line 1483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1484
    const/4 v4, 0x1

    return v4

    .line 1488
    :sswitch_87
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1492
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1493
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardUidRangeAcceptRule(II)V

    .line 1494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    const/4 v4, 0x1

    return v4

    .line 1499
    .end local v23    # "_arg0":I
    .end local v34    # "_arg1":I
    :sswitch_88
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1503
    .restart local v23    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    const/16 v40, 0x1

    .line 1505
    .local v40, "_arg1":Z
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    const/16 v46, 0x1

    .line 1506
    .restart local v46    # "_arg2":Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v40

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardUidRule(IZZ)V

    .line 1507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    const/4 v4, 0x1

    return v4

    .line 1503
    .end local v40    # "_arg1":Z
    .end local v46    # "_arg2":Z
    :cond_32
    const/16 v40, 0x0

    .restart local v40    # "_arg1":Z
    goto :goto_32

    .line 1505
    :cond_33
    const/16 v46, 0x0

    goto :goto_33

    .line 1512
    .end local v23    # "_arg0":I
    .end local v40    # "_arg1":Z
    :sswitch_89
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1515
    .restart local v23    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setNetworkGuardProtocolAcceptRule(I)V

    .line 1516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    const/4 v4, 0x1

    return v4

    .line 1521
    .end local v23    # "_arg0":I
    :sswitch_8a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1524
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->addMptcpLink(Ljava/lang/String;)V

    .line 1525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    const/4 v4, 0x1

    return v4

    .line 1530
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_8b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1533
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeMptcpLink(Ljava/lang/String;)V

    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    const/4 v4, 0x1

    return v4

    .line 1539
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_8c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1543
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1544
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->addChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    const/4 v4, 0x1

    return v4

    .line 1550
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_8d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1554
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1555
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->removeChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    const/4 v4, 0x1

    return v4

    .line 1561
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_8e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1565
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1567
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1569
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1570
    .restart local v14    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v14}, Landroid/os/INetworkManagementService$Stub;->addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    const/4 v4, 0x1

    return v4

    .line 1576
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    :sswitch_8f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1580
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1582
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1584
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1585
    .restart local v14    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v14}, Landroid/os/INetworkManagementService$Stub;->removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    const/4 v4, 0x1

    return v4

    .line 1591
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    :sswitch_90
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1595
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1597
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1599
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1601
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1603
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg5":Ljava/lang/String;
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    .line 1604
    invoke-virtual/range {v10 .. v16}, Landroid/os/INetworkManagementService$Stub;->addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    const/4 v4, 0x1

    return v4

    .line 1610
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":Ljava/lang/String;
    :sswitch_91
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1614
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1616
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1618
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1620
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1622
    .restart local v15    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "_arg5":Ljava/lang/String;
    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    .line 1623
    invoke-virtual/range {v10 .. v16}, Landroid/os/INetworkManagementService$Stub;->removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    const/4 v4, 0x1

    return v4

    .line 1629
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":Ljava/lang/String;
    :sswitch_92
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1633
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1635
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1636
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/INetworkManagementService$Stub;->addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    const/4 v4, 0x1

    return v4

    .line 1642
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_93
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1646
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1648
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1649
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/INetworkManagementService$Stub;->removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    const/4 v4, 0x1

    return v4

    .line 1655
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_94
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1659
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1661
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1663
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1665
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v21, v14

    move-object/from16 v22, v9

    .line 1666
    invoke-virtual/range {v17 .. v22}, Landroid/os/INetworkManagementService$Stub;->addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    const/4 v4, 0x1

    return v4

    .line 1672
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg3":I
    :sswitch_95
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1676
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1678
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1680
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1682
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v21, v14

    move-object/from16 v22, v9

    .line 1683
    invoke-virtual/range {v17 .. v22}, Landroid/os/INetworkManagementService$Stub;->removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    const/4 v4, 0x1

    return v4

    .line 1689
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg3":I
    :sswitch_96
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1693
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1695
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1696
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Landroid/os/INetworkManagementService$Stub;->addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    const/4 v4, 0x1

    return v4

    .line 1702
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    :sswitch_97
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1706
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1708
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1709
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Landroid/os/INetworkManagementService$Stub;->removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    const/4 v4, 0x1

    return v4

    .line 1715
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    :sswitch_98
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1719
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1721
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1722
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/INetworkManagementService$Stub;->addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    const/4 v4, 0x1

    return v4

    .line 1728
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_99
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1732
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1734
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1735
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/INetworkManagementService$Stub;->delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    const/4 v4, 0x1

    return v4

    .line 1741
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_9a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1745
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1746
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    const/4 v4, 0x1

    return v4

    .line 1752
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_9b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1756
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1757
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->enableMptcp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    const/4 v4, 0x1

    return v4

    .line 1763
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_9c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->disableMptcp()V

    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    const/4 v4, 0x1

    return v4

    .line 1770
    :sswitch_9d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1774
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1776
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1777
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/INetworkManagementService$Stub;->addSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1779
    const/4 v4, 0x1

    return v4

    .line 1783
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_9e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1787
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1789
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1790
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/INetworkManagementService$Stub;->delSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    const/4 v4, 0x1

    return v4

    .line 1796
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_9f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1800
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1802
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1803
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Landroid/os/INetworkManagementService$Stub;->addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    const/4 v4, 0x1

    return v4

    .line 1809
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    :sswitch_a0
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1813
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1815
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1816
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Landroid/os/INetworkManagementService$Stub;->delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    const/4 v4, 0x1

    return v4

    .line 1822
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    :sswitch_a1
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    const/4 v11, 0x1

    .line 1826
    .local v11, "_arg0":Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1828
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1829
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6, v7}, Landroid/os/INetworkManagementService$Stub;->updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    const/4 v4, 0x1

    return v4

    .line 1824
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg0":Z
    :cond_34
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_34

    .line 1835
    .end local v11    # "_arg0":Z
    :sswitch_a2
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    const/4 v11, 0x1

    .line 1839
    .restart local v11    # "_arg0":Z
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1841
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1842
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v11, v6, v1}, Landroid/os/INetworkManagementService$Stub;->setPrivateIpRoute(ZLjava/lang/String;I)V

    .line 1843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    const/4 v4, 0x1

    return v4

    .line 1837
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg0":Z
    .end local v20    # "_arg2":I
    :cond_35
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_35

    .line 1848
    .end local v11    # "_arg0":Z
    :sswitch_a3
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    const/4 v11, 0x1

    .line 1852
    .restart local v11    # "_arg0":Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1854
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1856
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1858
    .restart local v14    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .restart local v15    # "_arg4":I
    move-object/from16 v10, p0

    move-object v12, v6

    move-object v13, v7

    .line 1859
    invoke-virtual/range {v10 .. v15}, Landroid/os/INetworkManagementService$Stub;->setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    const/4 v4, 0x1

    return v4

    .line 1850
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg0":Z
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :cond_36
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_36

    .line 1865
    .end local v11    # "_arg0":Z
    :sswitch_a4
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    const/4 v11, 0x1

    .line 1869
    .restart local v11    # "_arg0":Z
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1871
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1873
    .restart local v20    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1875
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    move/from16 v18, v11

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .line 1876
    invoke-virtual/range {v17 .. v22}, Landroid/os/INetworkManagementService$Stub;->setUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1878
    const/4 v4, 0x1

    return v4

    .line 1867
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v11    # "_arg0":Z
    .end local v20    # "_arg2":I
    :cond_37
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_37

    .line 1882
    .end local v11    # "_arg0":Z
    :sswitch_a5
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1885
    .restart local v32    # "_arg0":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->blockDnsQueries([Landroid/net/UidRange;)V

    .line 1886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    const/4 v4, 0x1

    return v4

    .line 1891
    .end local v32    # "_arg0":[Landroid/net/UidRange;
    :sswitch_a6
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1894
    .restart local v32    # "_arg0":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unblockDnsQueries([Landroid/net/UidRange;)V

    .line 1895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1896
    const/4 v4, 0x1

    return v4

    .line 1900
    .end local v32    # "_arg0":[Landroid/net/UidRange;
    :sswitch_a7
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1903
    .restart local v32    # "_arg0":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->exemptVpnDnsQuery([Landroid/net/UidRange;)V

    .line 1904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    const/4 v4, 0x1

    return v4

    .line 1909
    .end local v32    # "_arg0":[Landroid/net/UidRange;
    :sswitch_a8
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1912
    .restart local v32    # "_arg0":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->removeVpnDnsQuery([Landroid/net/UidRange;)V

    .line 1913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1914
    const/4 v4, 0x1

    return v4

    .line 1918
    .end local v32    # "_arg0":[Landroid/net/UidRange;
    :sswitch_a9
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1920
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/UidRange;

    .line 1921
    .restart local v32    # "_arg0":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->destroyBlockedKnoxNetwork([Landroid/net/UidRange;)V

    .line 1922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    const/4 v4, 0x1

    return v4

    .line 41
    nop

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
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
