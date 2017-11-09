.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_cancelBondProcess:I = 0x19

.field static final TRANSACTION_cancelDiscovery:I = 0x11

.field static final TRANSACTION_configHciSnoopLog:I = 0x45

.field static final TRANSACTION_configHciSnoopLogForExternal:I = 0x65

.field static final TRANSACTION_configScoLoopback:I = 0x33

.field static final TRANSACTION_connectSocket:I = 0x43

.field static final TRANSACTION_controlTxPower:I = 0x34

.field static final TRANSACTION_createBond:I = 0x17

.field static final TRANSACTION_createBondOutOfBand:I = 0x18

.field static final TRANSACTION_createSocketChannel:I = 0x44

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_dump:I = 0x5f

.field static final TRANSACTION_dutModeConfigure:I = 0x2a

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x46

.field static final TRANSACTION_fetchRemoteUuids:I = 0x23

.field static final TRANSACTION_getAdapterConnectionState:I = 0x13

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBondState:I = 0x1b

.field static final TRANSACTION_getBondedDevices:I = 0x16

.field static final TRANSACTION_getBondedTimeStamp:I = 0x3b

.field static final TRANSACTION_getConnectedDeviceList:I = 0xf

.field static final TRANSACTION_getConnectionState:I = 0x1c

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getGearIsConnected:I = 0x51

.field static final TRANSACTION_getHighRssi:I = 0x58

.field static final TRANSACTION_getLeDeviceType:I = 0x55

.field static final TRANSACTION_getLowRssi:I = 0x56

.field static final TRANSACTION_getMessageAccessPermission:I = 0x37

.field static final TRANSACTION_getMidRssi:I = 0x57

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x35

.field static final TRANSACTION_getProfileConnectedDevice:I = 0x15

.field static final TRANSACTION_getProfileConnectionState:I = 0x14

.field static final TRANSACTION_getRemoteAlias:I = 0x1f

.field static final TRANSACTION_getRemoteAppearance:I = 0x4e

.field static final TRANSACTION_getRemoteClass:I = 0x21

.field static final TRANSACTION_getRemoteManufacturerData:I = 0x4f

.field static final TRANSACTION_getRemoteName:I = 0x1d

.field static final TRANSACTION_getRemoteType:I = 0x1e

.field static final TRANSACTION_getRemoteUuids:I = 0x22

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getSimAccessPermission:I = 0x39

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getTxPowerPath:I = 0x2c

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x4c

.field static final TRANSACTION_isBLEAutoconnectSupport:I = 0x54

.field static final TRANSACTION_isDiscovering:I = 0x12

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x48

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x4a

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x4b

.field static final TRANSACTION_isPeripheralModeSupported:I = 0x49

.field static final TRANSACTION_isProfileStarted:I = 0x66

.field static final TRANSACTION_isSecureModeEnabled:I = 0x64

.field static final TRANSACTION_leReadPhy:I = 0x5c

.field static final TRANSACTION_leSetDefaultPhy:I = 0x5e

.field static final TRANSACTION_leSetPhy:I = 0x5d

.field static final TRANSACTION_leTestMode:I = 0x2b

.field static final TRANSACTION_onBrEdrDown:I = 0x62

.field static final TRANSACTION_onLeServiceUp:I = 0x60

.field static final TRANSACTION_onLeServiceUpQuietMode:I = 0x61

.field static final TRANSACTION_registerCallback:I = 0x3e

.field static final TRANSACTION_removeBond:I = 0x1a

.field static final TRANSACTION_reportActivityInfo:I = 0x4d

.field static final TRANSACTION_requestActivityInfo:I = 0x53

.field static final TRANSACTION_sdpSearch:I = 0x24

.field static final TRANSACTION_selectstream:I = 0x42

.field static final TRANSACTION_semClearBleAutoConnection:I = 0x59

.field static final TRANSACTION_semIsScmstSupported:I = 0x40

.field static final TRANSACTION_semIsSinkServiceSupported:I = 0x41

.field static final TRANSACTION_semMonitorRssi:I = 0x29

.field static final TRANSACTION_semReadRssi:I = 0x28

.field static final TRANSACTION_semSetBleConnectionScanParameter:I = 0x5a

.field static final TRANSACTION_sendCallerInfo:I = 0x63

.field static final TRANSACTION_sendConnectionStateChange:I = 0x3d

.field static final TRANSACTION_sendRawHci:I = 0x3c

.field static final TRANSACTION_setBTAdaptivityTest:I = 0x2e

.field static final TRANSACTION_setBootState:I = 0x67

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setEdrRxFrequency:I = 0x31

.field static final TRANSACTION_setEdrTestEnd:I = 0x32

.field static final TRANSACTION_setEdrTxFrequency:I = 0x30

.field static final TRANSACTION_setManufacturerData:I = 0xe

.field static final TRANSACTION_setMessageAccessPermission:I = 0x38

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x27

.field static final TRANSACTION_setPasskey:I = 0x26

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x36

.field static final TRANSACTION_setPin:I = 0x25

.field static final TRANSACTION_setRPAGeneration:I = 0x5b

.field static final TRANSACTION_setRemoteAlias:I = 0x20

.field static final TRANSACTION_setRemoteClass:I = 0x47

.field static final TRANSACTION_setRemoteManufacturerData:I = 0x50

.field static final TRANSACTION_setRfcommConnected:I = 0x52

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setSimAccessPermission:I = 0x3a

.field static final TRANSACTION_setTxPowerPath:I = 0x2d

.field static final TRANSACTION_sspDebugConfigure:I = 0x2f

.field static final TRANSACTION_startDiscovery:I = 0x10

.field static final TRANSACTION_unregisterCallback:I = 0x3f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
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
    const-string/jumbo v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 46
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

    .line 1331
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    return v4

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v42

    .line 54
    .local v42, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v42, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v4, 0x1

    return v4

    .line 55
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 60
    .end local v42    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getState()I

    move-result v34

    .line 62
    .local v34, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v4, 0x1

    return v4

    .line 68
    .end local v34    # "_result":I
    :sswitch_3
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v42

    .line 70
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v42, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v4, 0x1

    return v4

    .line 71
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 76
    .end local v42    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v42

    .line 78
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v42, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v4, 0x1

    return v4

    .line 79
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 84
    .end local v42    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disable()Z

    move-result v42

    .line 86
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v42, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v4, 0x1

    return v4

    .line 87
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 92
    .end local v42    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v40

    .line 94
    .local v40, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    const/4 v4, 0x1

    return v4

    .line 100
    .end local v40    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v45

    .line 102
    .local v45, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 104
    const/4 v4, 0x1

    return v4

    .line 108
    .end local v45    # "_result":[Landroid/os/ParcelUuid;
    :sswitch_8
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 111
    .local v27, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v42

    .line 112
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v42, :cond_4

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v4, 0x1

    return v4

    .line 113
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 118
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v40

    .line 120
    .restart local v40    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    const/4 v4, 0x1

    return v4

    .line 126
    .end local v40    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v34

    .line 128
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v4, 0x1

    return v4

    .line 134
    .end local v34    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 138
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 139
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v42

    .line 140
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v42, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v4, 0x1

    return v4

    .line 141
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 146
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v34

    .line 148
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v4, 0x1

    return v4

    .line 154
    .end local v34    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 157
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v42

    .line 158
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v42, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v4, 0x1

    return v4

    .line 159
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 164
    .end local v5    # "_arg0":I
    .end local v42    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->setManufacturerData()V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/4 v4, 0x1

    return v4

    .line 171
    :sswitch_f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedDeviceList()Ljava/util/List;

    move-result-object v41

    .line 173
    .local v41, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 175
    const/4 v4, 0x1

    return v4

    .line 179
    .end local v41    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_10
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v42

    .line 181
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v42, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v4, 0x1

    return v4

    .line 182
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 187
    .end local v42    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v42

    .line 189
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v42, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v4, 0x1

    return v4

    .line 190
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 195
    .end local v42    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v42

    .line 197
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v42, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v4, 0x1

    return v4

    .line 198
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 203
    .end local v42    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v34

    .line 205
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v4, 0x1

    return v4

    .line 211
    .end local v34    # "_result":I
    :sswitch_14
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 214
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v34

    .line 215
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v4, 0x1

    return v4

    .line 221
    .end local v5    # "_arg0":I
    .end local v34    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 224
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v38

    .line 225
    .local v38, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v38, :cond_a

    .line 227
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    :goto_a
    const/4 v4, 0x1

    return v4

    .line 231
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 237
    .end local v5    # "_arg0":I
    .end local v38    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_16
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v44

    .line 239
    .local v44, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 241
    const/4 v4, 0x1

    return v4

    .line 245
    .end local v44    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_17
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 248
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 254
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 255
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v42

    .line 256
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v42, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v4, 0x1

    return v4

    .line 251
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :cond_b
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 257
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v42    # "_result":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 262
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 265
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 271
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 273
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 274
    sget-object v4, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/bluetooth/OobData;

    .line 279
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v12, v6, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    move-result v42

    .line 280
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v42, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v4, 0x1

    return v4

    .line 268
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :cond_d
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 277
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    :cond_e
    const/16 v32, 0x0

    .local v32, "_arg2":Landroid/bluetooth/OobData;
    goto :goto_e

    .line 281
    .end local v32    # "_arg2":Landroid/bluetooth/OobData;
    .restart local v42    # "_result":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 286
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :sswitch_19
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 289
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 294
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v42

    .line 295
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v42, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v4, 0x1

    return v4

    .line 292
    .end local v42    # "_result":Z
    :cond_10
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 296
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v42    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 301
    .end local v42    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 304
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 309
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v42

    .line 310
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v42, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v4, 0x1

    return v4

    .line 307
    .end local v42    # "_result":Z
    :cond_12
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .line 311
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v42    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 316
    .end local v42    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 319
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 324
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 325
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v4, 0x1

    return v4

    .line 322
    .end local v34    # "_result":I
    :cond_14
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .line 331
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 334
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 339
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 340
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v4, 0x1

    return v4

    .line 337
    .end local v34    # "_result":I
    :cond_15
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .line 346
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 349
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 354
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v40

    .line 355
    .restart local v40    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    const/4 v4, 0x1

    return v4

    .line 352
    .end local v40    # "_result":Ljava/lang/String;
    :cond_16
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 361
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 364
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 369
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 370
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v4, 0x1

    return v4

    .line 367
    .end local v34    # "_result":I
    :cond_17
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 376
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 379
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 384
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v40

    .line 385
    .restart local v40    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    const/4 v4, 0x1

    return v4

    .line 382
    .end local v40    # "_result":Ljava/lang/String;
    :cond_18
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    .line 391
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_20
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 394
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 400
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 401
    .local v17, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v42

    .line 402
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v42, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v4, 0x1

    return v4

    .line 397
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":Z
    :cond_19
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .line 403
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v17    # "_arg1":Ljava/lang/String;
    .restart local v42    # "_result":Z
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 408
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 411
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 416
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 417
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v4, 0x1

    return v4

    .line 414
    .end local v34    # "_result":I
    :cond_1b
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .line 423
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_22
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 426
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 431
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v45

    .line 432
    .restart local v45    # "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 434
    const/4 v4, 0x1

    return v4

    .line 429
    .end local v45    # "_result":[Landroid/os/ParcelUuid;
    :cond_1c
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    .line 438
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_23
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 441
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 446
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v42

    .line 447
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v42, :cond_1e

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v4, 0x1

    return v4

    .line 444
    .end local v42    # "_result":Z
    :cond_1d
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    .line 448
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v42    # "_result":Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1e

    .line 453
    .end local v42    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 456
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 462
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 463
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/ParcelUuid;

    .line 468
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v12, v1}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v42

    .line 469
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    if-eqz v42, :cond_21

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v4, 0x1

    return v4

    .line 459
    .end local v42    # "_result":Z
    :cond_1f
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f

    .line 466
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_20
    const/16 v29, 0x0

    .local v29, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_20

    .line 470
    .end local v29    # "_arg1":Landroid/os/ParcelUuid;
    .restart local v42    # "_result":Z
    :cond_21
    const/4 v4, 0x0

    goto :goto_21

    .line 475
    .end local v42    # "_result":Z
    :sswitch_25
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    .line 478
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 484
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v30, 0x1

    .line 486
    .local v30, "_arg1":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 488
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v33

    .line 489
    .local v33, "_arg3":[B
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-virtual {v0, v12, v1, v7, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v42

    .line 490
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v42, :cond_24

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    const/4 v4, 0x1

    return v4

    .line 481
    .end local v7    # "_arg2":I
    .end local v30    # "_arg1":Z
    .end local v33    # "_arg3":[B
    .end local v42    # "_result":Z
    :cond_22
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_22

    .line 484
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_23
    const/16 v30, 0x0

    .restart local v30    # "_arg1":Z
    goto :goto_23

    .line 491
    .restart local v7    # "_arg2":I
    .restart local v33    # "_arg3":[B
    .restart local v42    # "_result":Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_24

    .line 496
    .end local v7    # "_arg2":I
    .end local v30    # "_arg1":Z
    .end local v33    # "_arg3":[B
    .end local v42    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 499
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 505
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    const/16 v30, 0x1

    .line 507
    .restart local v30    # "_arg1":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 509
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v33

    .line 510
    .restart local v33    # "_arg3":[B
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v33

    invoke-virtual {v0, v12, v1, v7, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v42

    .line 511
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    if-eqz v42, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    const/4 v4, 0x1

    return v4

    .line 502
    .end local v7    # "_arg2":I
    .end local v30    # "_arg1":Z
    .end local v33    # "_arg3":[B
    .end local v42    # "_result":Z
    :cond_25
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_25

    .line 505
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_26
    const/16 v30, 0x0

    .restart local v30    # "_arg1":Z
    goto :goto_26

    .line 512
    .restart local v7    # "_arg2":I
    .restart local v33    # "_arg3":[B
    .restart local v42    # "_result":Z
    :cond_27
    const/4 v4, 0x0

    goto :goto_27

    .line 517
    .end local v7    # "_arg2":I
    .end local v30    # "_arg1":Z
    .end local v33    # "_arg3":[B
    .end local v42    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 520
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 526
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    const/16 v30, 0x1

    .line 527
    .local v30, "_arg1":Z
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v12, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v42

    .line 528
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v42, :cond_2a

    const/4 v4, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/4 v4, 0x1

    return v4

    .line 523
    .end local v30    # "_arg1":Z
    .end local v42    # "_result":Z
    :cond_28
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_28

    .line 526
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_29
    const/16 v30, 0x0

    goto :goto_29

    .line 529
    .restart local v30    # "_arg1":Z
    .restart local v42    # "_result":Z
    :cond_2a
    const/4 v4, 0x0

    goto :goto_2a

    .line 534
    .end local v30    # "_arg1":Z
    .end local v42    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 537
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 542
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->semReadRssi(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v42

    .line 543
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v42, :cond_2c

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v4, 0x1

    return v4

    .line 540
    .end local v42    # "_result":Z
    :cond_2b
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2b

    .line 544
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v42    # "_result":Z
    :cond_2c
    const/4 v4, 0x0

    goto :goto_2c

    .line 549
    .end local v42    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 552
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 558
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 560
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 562
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 563
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6, v7, v8}, Landroid/bluetooth/IBluetooth$Stub;->semMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    move-result v42

    .line 564
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v42, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v4, 0x1

    return v4

    .line 555
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v42    # "_result":Z
    :cond_2d
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2d

    .line 565
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v42    # "_result":Z
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    .line 570
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v42    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v28, 0x1

    .line 573
    .local v28, "_arg0":Z
    :goto_2f
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->dutModeConfigure(Z)Z

    move-result v42

    .line 574
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v42, :cond_30

    const/4 v4, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v4, 0x1

    return v4

    .line 572
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :cond_2f
    const/16 v28, 0x0

    goto :goto_2f

    .line 575
    .restart local v28    # "_arg0":Z
    .restart local v42    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    goto :goto_30

    .line 580
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :sswitch_2b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 584
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 586
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 588
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 590
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 592
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    move-object/from16 v4, p0

    .line 593
    invoke-virtual/range {v4 .. v10}, Landroid/bluetooth/IBluetooth$Stub;->leTestMode(IIIIII)Z

    move-result v42

    .line 594
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    if-eqz v42, :cond_31

    const/4 v4, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v4, 0x1

    return v4

    .line 595
    :cond_31
    const/4 v4, 0x0

    goto :goto_31

    .line 600
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v42    # "_result":Z
    :sswitch_2c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getTxPowerPath()Z

    move-result v42

    .line 602
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v42, :cond_32

    const/4 v4, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v4, 0x1

    return v4

    .line 603
    :cond_32
    const/4 v4, 0x0

    goto :goto_32

    .line 608
    .end local v42    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 611
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->setTxPowerPath(I)Z

    move-result v42

    .line 612
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    if-eqz v42, :cond_33

    const/4 v4, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v4, 0x1

    return v4

    .line 613
    :cond_33
    const/4 v4, 0x0

    goto :goto_33

    .line 618
    .end local v5    # "_arg0":I
    .end local v42    # "_result":Z
    :sswitch_2e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->setBTAdaptivityTest()Z

    move-result v42

    .line 620
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v42, :cond_34

    const/4 v4, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v4, 0x1

    return v4

    .line 621
    :cond_34
    const/4 v4, 0x0

    goto :goto_34

    .line 626
    .end local v42    # "_result":Z
    :sswitch_2f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    const/16 v28, 0x1

    .line 629
    .restart local v28    # "_arg0":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->sspDebugConfigure(Z)Z

    move-result v42

    .line 630
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v42, :cond_36

    const/4 v4, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v4, 0x1

    return v4

    .line 628
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :cond_35
    const/16 v28, 0x0

    goto :goto_35

    .line 631
    .restart local v28    # "_arg0":Z
    .restart local v42    # "_result":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_36

    .line 636
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :sswitch_30
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 640
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 641
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->setEdrTxFrequency(II)Z

    move-result v42

    .line 642
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v42, :cond_37

    const/4 v4, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v4, 0x1

    return v4

    .line 643
    :cond_37
    const/4 v4, 0x0

    goto :goto_37

    .line 648
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 651
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetooth$Stub;->setEdrRxFrequency(I)Z

    move-result v42

    .line 652
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v42, :cond_38

    const/4 v4, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v4, 0x1

    return v4

    .line 653
    :cond_38
    const/4 v4, 0x0

    goto :goto_38

    .line 658
    .end local v5    # "_arg0":I
    .end local v42    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->setEdrTestEnd()Z

    move-result v42

    .line 660
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v42, :cond_39

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v4, 0x1

    return v4

    .line 661
    :cond_39
    const/4 v4, 0x0

    goto :goto_39

    .line 666
    .end local v42    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    const/16 v28, 0x1

    .line 669
    .restart local v28    # "_arg0":Z
    :goto_3a
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configScoLoopback(Z)Z

    move-result v42

    .line 670
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v42, :cond_3b

    const/4 v4, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v4, 0x1

    return v4

    .line 668
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :cond_3a
    const/16 v28, 0x0

    goto :goto_3a

    .line 671
    .restart local v28    # "_arg0":Z
    .restart local v42    # "_result":Z
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3b

    .line 676
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :sswitch_34
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    const/16 v28, 0x1

    .line 679
    .restart local v28    # "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->controlTxPower(Z)Z

    move-result v42

    .line 680
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v42, :cond_3d

    const/4 v4, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v4, 0x1

    return v4

    .line 678
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :cond_3c
    const/16 v28, 0x0

    goto :goto_3c

    .line 681
    .restart local v28    # "_arg0":Z
    .restart local v42    # "_result":Z
    :cond_3d
    const/4 v4, 0x0

    goto :goto_3d

    .line 686
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 689
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 694
    :goto_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 695
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v4, 0x1

    return v4

    .line 692
    .end local v34    # "_result":I
    :cond_3e
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3e

    .line 701
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_36
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 704
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 710
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 711
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v42

    .line 712
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v42, :cond_40

    const/4 v4, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v4, 0x1

    return v4

    .line 707
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :cond_3f
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3f

    .line 713
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v42    # "_result":Z
    :cond_40
    const/4 v4, 0x0

    goto :goto_40

    .line 718
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 721
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 726
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 727
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v4, 0x1

    return v4

    .line 724
    .end local v34    # "_result":I
    :cond_41
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_41

    .line 733
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_38
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 736
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 742
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 743
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v42

    .line 744
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v42, :cond_43

    const/4 v4, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v4, 0x1

    return v4

    .line 739
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :cond_42
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_42

    .line 745
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v42    # "_result":Z
    :cond_43
    const/4 v4, 0x0

    goto :goto_43

    .line 750
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :sswitch_39
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 753
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 758
    :goto_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 759
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v4, 0x1

    return v4

    .line 756
    .end local v34    # "_result":I
    :cond_44
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_44

    .line 765
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 768
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 774
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 775
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v42

    .line 776
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v42, :cond_46

    const/4 v4, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    const/4 v4, 0x1

    return v4

    .line 771
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :cond_45
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_45

    .line 777
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v42    # "_result":Z
    :cond_46
    const/4 v4, 0x0

    goto :goto_46

    .line 782
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :sswitch_3b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    .line 785
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 790
    :goto_47
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getBondedTimeStamp(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v36

    .line 791
    .local v36, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    move-object/from16 v0, p3

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 793
    const/4 v4, 0x1

    return v4

    .line 788
    .end local v36    # "_result":J
    :cond_47
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_47

    .line 797
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 801
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v31

    .line 803
    .local v31, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 804
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1, v7}, Landroid/bluetooth/IBluetooth$Stub;->sendRawHci(I[BI)I

    move-result v34

    .line 805
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    const/4 v4, 0x1

    return v4

    .line 811
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v31    # "_arg1":[B
    .end local v34    # "_result":I
    :sswitch_3d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    .line 814
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 820
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 822
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 824
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 825
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6, v7, v8}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    const/4 v4, 0x1

    return v4

    .line 817
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_48
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_48

    .line 831
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v24

    .line 834
    .local v24, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v4, 0x1

    return v4

    .line 840
    .end local v24    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_3f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v24

    .line 843
    .restart local v24    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    const/4 v4, 0x1

    return v4

    .line 849
    .end local v24    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_40
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->semIsScmstSupported()Z

    move-result v42

    .line 851
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    if-eqz v42, :cond_49

    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v4, 0x1

    return v4

    .line 852
    :cond_49
    const/4 v4, 0x0

    goto :goto_49

    .line 857
    .end local v42    # "_result":Z
    :sswitch_41
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->semIsSinkServiceSupported()Z

    move-result v42

    .line 859
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    if-eqz v42, :cond_4a

    const/4 v4, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v4, 0x1

    return v4

    .line 860
    :cond_4a
    const/4 v4, 0x0

    goto :goto_4a

    .line 865
    .end local v42    # "_result":Z
    :sswitch_42
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b

    .line 868
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 873
    :goto_4b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v42

    .line 874
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    if-eqz v42, :cond_4c

    const/4 v4, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    const/4 v4, 0x1

    return v4

    .line 871
    .end local v42    # "_result":Z
    :cond_4b
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4b

    .line 875
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v42    # "_result":Z
    :cond_4c
    const/4 v4, 0x0

    goto :goto_4c

    .line 880
    .end local v42    # "_result":Z
    :sswitch_43
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    .line 883
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 889
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 891
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 892
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelUuid;

    .line 898
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 900
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v11, p0

    move v13, v6

    move v15, v8

    move/from16 v16, v9

    .line 901
    invoke-virtual/range {v11 .. v16}, Landroid/bluetooth/IBluetooth$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v39

    .line 902
    .local v39, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    if-eqz v39, :cond_4f

    .line 904
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 910
    :goto_4f
    const/4 v4, 0x1

    return v4

    .line 886
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v39    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_4d
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4d

    .line 895
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    :cond_4e
    const/4 v14, 0x0

    .local v14, "_arg2":Landroid/os/ParcelUuid;
    goto :goto_4e

    .line 908
    .end local v14    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v39    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_4f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4f

    .line 914
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v39    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_44
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 918
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 920
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    .line 921
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelUuid;

    .line 927
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 929
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v15, p0

    move/from16 v16, v5

    move-object/from16 v18, v14

    move/from16 v19, v8

    move/from16 v20, v9

    .line 930
    invoke-virtual/range {v15 .. v20}, Landroid/bluetooth/IBluetooth$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v39

    .line 931
    .restart local v39    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    if-eqz v39, :cond_51

    .line 933
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 939
    :goto_51
    const/4 v4, 0x1

    return v4

    .line 924
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v39    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_50
    const/4 v14, 0x0

    .restart local v14    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_50

    .line 937
    .end local v14    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v39    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_51
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_51

    .line 943
    .end local v5    # "_arg0":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_45
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    const/16 v28, 0x1

    .line 946
    .restart local v28    # "_arg0":Z
    :goto_52
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLog(Z)Z

    move-result v42

    .line 947
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    if-eqz v42, :cond_53

    const/4 v4, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    const/4 v4, 0x1

    return v4

    .line 945
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :cond_52
    const/16 v28, 0x0

    goto :goto_52

    .line 948
    .restart local v28    # "_arg0":Z
    .restart local v42    # "_result":Z
    :cond_53
    const/4 v4, 0x0

    goto :goto_53

    .line 953
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset()Z

    move-result v42

    .line 955
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    if-eqz v42, :cond_54

    const/4 v4, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    const/4 v4, 0x1

    return v4

    .line 956
    :cond_54
    const/4 v4, 0x0

    goto :goto_54

    .line 961
    .end local v42    # "_result":Z
    :sswitch_47
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    .line 964
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 970
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 971
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteClass(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v42

    .line 972
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    if-eqz v42, :cond_56

    const/4 v4, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    const/4 v4, 0x1

    return v4

    .line 967
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :cond_55
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_55

    .line 973
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v42    # "_result":Z
    :cond_56
    const/4 v4, 0x0

    goto :goto_56

    .line 978
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Z
    :sswitch_48
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    move-result v42

    .line 980
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    if-eqz v42, :cond_57

    const/4 v4, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v4, 0x1

    return v4

    .line 981
    :cond_57
    const/4 v4, 0x0

    goto :goto_57

    .line 986
    .end local v42    # "_result":Z
    :sswitch_49
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isPeripheralModeSupported()Z

    move-result v42

    .line 988
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    if-eqz v42, :cond_58

    const/4 v4, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    const/4 v4, 0x1

    return v4

    .line 989
    :cond_58
    const/4 v4, 0x0

    goto :goto_58

    .line 994
    .end local v42    # "_result":Z
    :sswitch_4a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    move-result v42

    .line 996
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    if-eqz v42, :cond_59

    const/4 v4, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    const/4 v4, 0x1

    return v4

    .line 997
    :cond_59
    const/4 v4, 0x0

    goto :goto_59

    .line 1002
    .end local v42    # "_result":Z
    :sswitch_4b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    move-result v42

    .line 1004
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    if-eqz v42, :cond_5a

    const/4 v4, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    const/4 v4, 0x1

    return v4

    .line 1005
    :cond_5a
    const/4 v4, 0x0

    goto :goto_5a

    .line 1010
    .end local v42    # "_result":Z
    :sswitch_4c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    move-result v42

    .line 1012
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    if-eqz v42, :cond_5b

    const/4 v4, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    const/4 v4, 0x1

    return v4

    .line 1013
    :cond_5b
    const/4 v4, 0x0

    goto :goto_5b

    .line 1018
    .end local v42    # "_result":Z
    :sswitch_4d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v35

    .line 1020
    .local v35, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    if-eqz v35, :cond_5c

    .line 1022
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    const/4 v4, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1028
    :goto_5c
    const/4 v4, 0x1

    return v4

    .line 1026
    :cond_5c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5c

    .line 1032
    .end local v35    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_4e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 1035
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1040
    :goto_5d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAppearance(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 1041
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    const/4 v4, 0x1

    return v4

    .line 1038
    .end local v34    # "_result":I
    :cond_5d
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5d

    .line 1047
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5e

    .line 1050
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1055
    :goto_5e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v43

    .line 1056
    .local v43, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1058
    const/4 v4, 0x1

    return v4

    .line 1053
    .end local v43    # "_result":[B
    :cond_5e
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5e

    .line 1062
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_50
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5f

    .line 1065
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1071
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v31

    .line 1072
    .restart local v31    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v12, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteManufacturerData(Landroid/bluetooth/BluetoothDevice;[B)Z

    move-result v42

    .line 1073
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    if-eqz v42, :cond_60

    const/4 v4, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    const/4 v4, 0x1

    return v4

    .line 1068
    .end local v31    # "_arg1":[B
    .end local v42    # "_result":Z
    :cond_5f
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5f

    .line 1074
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v31    # "_arg1":[B
    .restart local v42    # "_result":Z
    :cond_60
    const/4 v4, 0x0

    goto :goto_60

    .line 1079
    .end local v31    # "_arg1":[B
    .end local v42    # "_result":Z
    :sswitch_51
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    .line 1082
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1087
    :goto_61
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getGearIsConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v42

    .line 1088
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    if-eqz v42, :cond_62

    const/4 v4, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    const/4 v4, 0x1

    return v4

    .line 1085
    .end local v42    # "_result":Z
    :cond_61
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_61

    .line 1089
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v42    # "_result":Z
    :cond_62
    const/4 v4, 0x0

    goto :goto_62

    .line 1094
    .end local v42    # "_result":Z
    :sswitch_52
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_63

    .line 1097
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1103
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_64

    const/16 v30, 0x1

    .line 1104
    .restart local v30    # "_arg1":Z
    :goto_64
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v12, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRfcommConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    const/4 v4, 0x1

    return v4

    .line 1100
    .end local v30    # "_arg1":Z
    :cond_63
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_63

    .line 1103
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_64
    const/16 v30, 0x0

    goto :goto_64

    .line 1110
    :sswitch_53
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    .line 1113
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/ResultReceiver;

    .line 1118
    :goto_65
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1119
    const/4 v4, 0x1

    return v4

    .line 1116
    :cond_65
    const/16 v26, 0x0

    .local v26, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_65

    .line 1123
    .end local v26    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_54
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isBLEAutoconnectSupport()I

    move-result v34

    .line 1125
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    const/4 v4, 0x1

    return v4

    .line 1131
    .end local v34    # "_result":I
    :sswitch_55
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_66

    .line 1134
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1139
    :goto_66
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->getLeDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v34

    .line 1140
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    const/4 v4, 0x1

    return v4

    .line 1137
    .end local v34    # "_result":I
    :cond_66
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_66

    .line 1146
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_56
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getLowRssi()I

    move-result v34

    .line 1148
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    const/4 v4, 0x1

    return v4

    .line 1154
    .end local v34    # "_result":I
    :sswitch_57
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getMidRssi()I

    move-result v34

    .line 1156
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    const/4 v4, 0x1

    return v4

    .line 1162
    .end local v34    # "_result":I
    :sswitch_58
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getHighRssi()I

    move-result v34

    .line 1164
    .restart local v34    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    const/4 v4, 0x1

    return v4

    .line 1170
    .end local v34    # "_result":I
    :sswitch_59
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->semClearBleAutoConnection()V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    const/4 v4, 0x1

    return v4

    .line 1177
    :sswitch_5a
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1181
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1182
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->semSetBleConnectionScanParameter(II)V

    .line 1183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    const/4 v4, 0x1

    return v4

    .line 1188
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_5b
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_67

    const/16 v28, 0x1

    .line 1191
    .restart local v28    # "_arg0":Z
    :goto_67
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRPAGeneration(Z)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    const/4 v4, 0x1

    return v4

    .line 1190
    .end local v28    # "_arg0":Z
    :cond_67
    const/16 v28, 0x0

    goto :goto_67

    .line 1197
    :sswitch_5c
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    .line 1200
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1205
    :goto_68
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/bluetooth/IBluetooth$Stub;->leReadPhy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v42

    .line 1206
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    if-eqz v42, :cond_69

    const/4 v4, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    const/4 v4, 0x1

    return v4

    .line 1203
    .end local v42    # "_result":Z
    :cond_68
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_68

    .line 1207
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v42    # "_result":Z
    :cond_69
    const/4 v4, 0x0

    goto :goto_69

    .line 1212
    .end local v42    # "_result":Z
    :sswitch_5d
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    .line 1215
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 1221
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1223
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1225
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1227
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v18, p0

    move-object/from16 v19, v12

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    .line 1228
    invoke-virtual/range {v18 .. v23}, Landroid/bluetooth/IBluetooth$Stub;->leSetPhy(Landroid/bluetooth/BluetoothDevice;IIII)Z

    move-result v42

    .line 1229
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    if-eqz v42, :cond_6b

    const/4 v4, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    const/4 v4, 0x1

    return v4

    .line 1218
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v42    # "_result":Z
    :cond_6a
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6a

    .line 1230
    .end local v12    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v42    # "_result":Z
    :cond_6b
    const/4 v4, 0x0

    goto :goto_6b

    .line 1235
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v42    # "_result":Z
    :sswitch_5e
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1239
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1241
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1242
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/bluetooth/IBluetooth$Stub;->leSetDefaultPhy(III)Z

    move-result v42

    .line 1243
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    if-eqz v42, :cond_6c

    const/4 v4, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v4, 0x1

    return v4

    .line 1244
    :cond_6c
    const/4 v4, 0x0

    goto :goto_6c

    .line 1249
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v42    # "_result":Z
    :sswitch_5f
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d

    .line 1252
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/ParcelFileDescriptor;

    .line 1257
    :goto_6d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->dump(Landroid/os/ParcelFileDescriptor;)V

    .line 1258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    const/4 v4, 0x1

    return v4

    .line 1255
    :cond_6d
    const/16 v25, 0x0

    .local v25, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6d

    .line 1263
    .end local v25    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_60
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp()V

    .line 1265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    const/4 v4, 0x1

    return v4

    .line 1270
    :sswitch_61
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUpQuietMode()V

    .line 1272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    const/4 v4, 0x1

    return v4

    .line 1277
    :sswitch_62
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown()V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    const/4 v4, 0x1

    return v4

    .line 1284
    :sswitch_63
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1288
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6e

    const/16 v30, 0x1

    .line 1289
    .restart local v30    # "_arg1":Z
    :goto_6e
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->sendCallerInfo(Ljava/lang/String;Z)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    const/4 v4, 0x1

    return v4

    .line 1288
    .end local v30    # "_arg1":Z
    :cond_6e
    const/16 v30, 0x0

    goto :goto_6e

    .line 1295
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_64
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isSecureModeEnabled()Z

    move-result v42

    .line 1297
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    if-eqz v42, :cond_6f

    const/4 v4, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    const/4 v4, 0x1

    return v4

    .line 1298
    :cond_6f
    const/4 v4, 0x0

    goto :goto_6f

    .line 1303
    .end local v42    # "_result":Z
    :sswitch_65
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_70

    const/16 v28, 0x1

    .line 1306
    .restart local v28    # "_arg0":Z
    :goto_70
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLogForExternal(Z)Z

    move-result v42

    .line 1307
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    if-eqz v42, :cond_71

    const/4 v4, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    const/4 v4, 0x1

    return v4

    .line 1305
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :cond_70
    const/16 v28, 0x0

    goto :goto_70

    .line 1308
    .restart local v28    # "_arg0":Z
    .restart local v42    # "_result":Z
    :cond_71
    const/4 v4, 0x0

    goto :goto_71

    .line 1313
    .end local v28    # "_arg0":Z
    .end local v42    # "_result":Z
    :sswitch_66
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1316
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isProfileStarted(Ljava/lang/String;)Z

    move-result v42

    .line 1317
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    if-eqz v42, :cond_72

    const/4 v4, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    const/4 v4, 0x1

    return v4

    .line 1318
    :cond_72
    const/4 v4, 0x0

    goto :goto_72

    .line 1323
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Z
    :sswitch_67
    const-string/jumbo v4, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_73

    const/16 v28, 0x1

    .line 1326
    .restart local v28    # "_arg0":Z
    :goto_73
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setBootState(Z)V

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    const/4 v4, 0x1

    return v4

    .line 1325
    .end local v28    # "_arg0":Z
    :cond_73
    const/16 v28, 0x0

    goto :goto_73

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
