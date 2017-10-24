.class public abstract Landroid/bluetooth/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManager"

.field static final TRANSACTION_bindBluetoothProfileService:I = 0xb

.field static final TRANSACTION_disable:I = 0x9

.field static final TRANSACTION_dumpInFile:I = 0x1e

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableBle:I = 0x8

.field static final TRANSACTION_enableNoAutoConnect:I = 0x7

.field static final TRANSACTION_getAddress:I = 0xd

.field static final TRANSACTION_getBleAppCount:I = 0x13

.field static final TRANSACTION_getBluetoothGatt:I = 0xa

.field static final TRANSACTION_getName:I = 0xe

.field static final TRANSACTION_getSamsungBleAppCount:I = 0x17

.field static final TRANSACTION_getSettingsName:I = 0x1c

.field static final TRANSACTION_isBleAppPresent:I = 0x1a

.field static final TRANSACTION_isBleScanAlwaysAvailable:I = 0x12

.field static final TRANSACTION_isEnabled:I = 0x5

.field static final TRANSACTION_putLogs:I = 0x1d

.field static final TRANSACTION_registerAdapter:I = 0x1

.field static final TRANSACTION_registerSinkServiceChangeCallback:I = 0xf

.field static final TRANSACTION_registerStateChangeCallback:I = 0x3

.field static final TRANSACTION_registerStateDisableBleCallback:I = 0x14

.field static final TRANSACTION_sendDisableBleCallback:I = 0x16

.field static final TRANSACTION_sendSinkServiceChangeCallback:I = 0x11

.field static final TRANSACTION_shutdown:I = 0x1b

.field static final TRANSACTION_unbindBluetoothProfileService:I = 0xc

.field static final TRANSACTION_unregisterAdapter:I = 0x2

.field static final TRANSACTION_unregisterSinkServiceChangeCallback:I = 0x10

.field static final TRANSACTION_unregisterStateChangeCallback:I = 0x4

.field static final TRANSACTION_unregisterStateDisableBleCallback:I = 0x15

.field static final TRANSACTION_updateBleAppCount:I = 0x18

.field static final TRANSACTION_updateSBleAppCount:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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

    .line 317
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    .line 47
    :sswitch_0
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v17, 0x1

    return v17

    .line 52
    :sswitch_1
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v4

    .line 55
    .local v4, "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothManager$Stub;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v13

    .line 56
    .local v13, "_result":Landroid/bluetooth/IBluetooth;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 58
    const/16 v17, 0x1

    return v17

    .line 57
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 62
    .end local v4    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v13    # "_result":Landroid/bluetooth/IBluetooth;
    :sswitch_2
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v4

    .line 65
    .restart local v4    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    const/16 v17, 0x1

    return v17

    .line 71
    .end local v4    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    :sswitch_3
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v6

    .line 74
    .local v6, "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothManager$Stub;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/16 v17, 0x1

    return v17

    .line 80
    .end local v6    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_4
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v6

    .line 83
    .restart local v6    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/16 v17, 0x1

    return v17

    .line 89
    .end local v6    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_5
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isEnabled()Z

    move-result v16

    .line 91
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v16, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/16 v17, 0x1

    return v17

    .line 92
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 97
    .end local v16    # "_result":Z
    :sswitch_6
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enable()Z

    move-result v16

    .line 99
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v16, :cond_2

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/16 v17, 0x1

    return v17

    .line 100
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 105
    .end local v16    # "_result":Z
    :sswitch_7
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enableNoAutoConnect()Z

    move-result v16

    .line 107
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v16, :cond_3

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/16 v17, 0x1

    return v17

    .line 108
    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    .line 113
    .end local v16    # "_result":Z
    :sswitch_8
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enableBle()Z

    move-result v16

    .line 115
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v16, :cond_4

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/16 v17, 0x1

    return v17

    .line 116
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 121
    .end local v16    # "_result":Z
    :sswitch_9
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_5

    const/4 v9, 0x1

    .line 124
    .local v9, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/bluetooth/IBluetoothManager$Stub;->disable(Z)Z

    move-result v16

    .line 125
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v16, :cond_6

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/16 v17, 0x1

    return v17

    .line 123
    .end local v9    # "_arg0":Z
    .end local v16    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 126
    .restart local v9    # "_arg0":Z
    .restart local v16    # "_result":Z
    :cond_6
    const/16 v17, 0x0

    goto :goto_6

    .line 131
    .end local v9    # "_arg0":Z
    .end local v16    # "_result":Z
    :sswitch_a
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v14

    .line 133
    .local v14, "_result":Landroid/bluetooth/IBluetoothGatt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/bluetooth/IBluetoothGatt;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    :goto_7
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 135
    const/16 v17, 0x1

    return v17

    .line 134
    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    .line 139
    .end local v14    # "_result":Landroid/bluetooth/IBluetoothGatt;
    :sswitch_b
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    move-result-object v10

    .line 144
    .local v10, "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Landroid/bluetooth/IBluetoothManager$Stub;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z

    move-result v16

    .line 145
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v16, :cond_8

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/16 v17, 0x1

    return v17

    .line 146
    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    .line 151
    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .end local v16    # "_result":Z
    :sswitch_c
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    move-result-object v10

    .line 156
    .restart local v10    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Landroid/bluetooth/IBluetoothManager$Stub;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/16 v17, 0x1

    return v17

    .line 162
    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    :sswitch_d
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    const/16 v17, 0x1

    return v17

    .line 170
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getName()Ljava/lang/String;

    move-result-object v15

    .line 172
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    const/16 v17, 0x1

    return v17

    .line 178
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothSinkServiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    move-result-object v5

    .line 181
    .local v5, "_arg0":Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothManager$Stub;->registerSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/16 v17, 0x1

    return v17

    .line 187
    .end local v5    # "_arg0":Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;
    :sswitch_10
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothSinkServiceChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    move-result-object v5

    .line 190
    .restart local v5    # "_arg0":Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/16 v17, 0x1

    return v17

    .line 196
    .end local v5    # "_arg0":Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;
    :sswitch_11
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_9

    const/4 v9, 0x1

    .line 199
    .restart local v9    # "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/bluetooth/IBluetoothManager$Stub;->sendSinkServiceChangeCallback(Z)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/16 v17, 0x1

    return v17

    .line 198
    .end local v9    # "_arg0":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    .line 205
    :sswitch_12
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleScanAlwaysAvailable()Z

    move-result v16

    .line 207
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v16, :cond_a

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/16 v17, 0x1

    return v17

    .line 208
    :cond_a
    const/16 v17, 0x0

    goto :goto_a

    .line 213
    .end local v16    # "_result":Z
    :sswitch_13
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getBleAppCount()I

    move-result v12

    .line 215
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/16 v17, 0x1

    return v17

    .line 221
    .end local v12    # "_result":I
    :sswitch_14
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothDisableBleCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDisableBleCallback;

    move-result-object v3

    .line 224
    .local v3, "_arg0":Landroid/bluetooth/IBluetoothDisableBleCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->registerStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/16 v17, 0x1

    return v17

    .line 230
    .end local v3    # "_arg0":Landroid/bluetooth/IBluetoothDisableBleCallback;
    :sswitch_15
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothDisableBleCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDisableBleCallback;

    move-result-object v3

    .line 233
    .restart local v3    # "_arg0":Landroid/bluetooth/IBluetoothDisableBleCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/16 v17, 0x1

    return v17

    .line 239
    .end local v3    # "_arg0":Landroid/bluetooth/IBluetoothDisableBleCallback;
    :sswitch_16
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->sendDisableBleCallback()V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/16 v17, 0x1

    return v17

    .line 246
    :sswitch_17
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getSamsungBleAppCount()I

    move-result v12

    .line 248
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/16 v17, 0x1

    return v17

    .line 254
    .end local v12    # "_result":I
    :sswitch_18
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 258
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_b

    const/4 v11, 0x1

    .line 259
    .local v11, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Landroid/bluetooth/IBluetoothManager$Stub;->updateBleAppCount(Landroid/os/IBinder;Z)I

    move-result v12

    .line 260
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/16 v17, 0x1

    return v17

    .line 258
    .end local v11    # "_arg1":Z
    .end local v12    # "_result":I
    :cond_b
    const/4 v11, 0x0

    goto :goto_b

    .line 266
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_19
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 270
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_c

    const/4 v11, 0x1

    .line 271
    .restart local v11    # "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Landroid/bluetooth/IBluetoothManager$Stub;->updateSBleAppCount(Landroid/os/IBinder;Z)I

    move-result v12

    .line 272
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/16 v17, 0x1

    return v17

    .line 270
    .end local v11    # "_arg1":Z
    .end local v12    # "_result":I
    :cond_c
    const/4 v11, 0x0

    goto :goto_c

    .line 278
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_1a
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleAppPresent()Z

    move-result v16

    .line 280
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v16, :cond_d

    const/16 v17, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/16 v17, 0x1

    return v17

    .line 281
    :cond_d
    const/16 v17, 0x0

    goto :goto_d

    .line 286
    .end local v16    # "_result":Z
    :sswitch_1b
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->shutdown()Z

    move-result v16

    .line 288
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v16, :cond_e

    const/16 v17, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/16 v17, 0x1

    return v17

    .line 289
    :cond_e
    const/16 v17, 0x0

    goto :goto_e

    .line 294
    .end local v16    # "_result":Z
    :sswitch_1c
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getSettingsName()Ljava/lang/String;

    move-result-object v15

    .line 296
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    const/16 v17, 0x1

    return v17

    .line 302
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/bluetooth/IBluetoothManager$Stub;->putLogs(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/16 v17, 0x1

    return v17

    .line 311
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v17, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothManager$Stub;->dumpInFile()V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/16 v17, 0x1

    return v17

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
