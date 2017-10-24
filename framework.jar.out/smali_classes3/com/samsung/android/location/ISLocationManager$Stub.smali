.class public abstract Lcom/samsung/android/location/ISLocationManager$Stub;
.super Landroid/os/Binder;
.source "ISLocationManager.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.location.ISLocationManager"

.field static final TRANSACTION_addGeofence:I = 0x6

.field static final TRANSACTION_checkPassiveLocation:I = 0x17

.field static final TRANSACTION_cleanup:I = 0x27

.field static final TRANSACTION_flushCoreBatchedLocations:I = 0x26

.field static final TRANSACTION_getGeofenceIdList:I = 0x4

.field static final TRANSACTION_injectDeviceContext:I = 0x28

.field static final TRANSACTION_isCoreBatchingSupported:I = 0x24

.field static final TRANSACTION_removeCurrentLocation:I = 0x16

.field static final TRANSACTION_removeGeofence:I = 0x9

.field static final TRANSACTION_removeLocation:I = 0x13

.field static final TRANSACTION_removeSingleLocation:I = 0x14

.field static final TRANSACTION_reportCellGeofenceDetected:I = 0x1e

.field static final TRANSACTION_reportCellGeofenceRequestFail:I = 0x1f

.field static final TRANSACTION_reportFlpHardwareLocation:I = 0x20

.field static final TRANSACTION_reportGpsGeofenceAddStatus:I = 0x1a

.field static final TRANSACTION_reportGpsGeofencePauseStatus:I = 0x1c

.field static final TRANSACTION_reportGpsGeofenceRemoveStatus:I = 0x1b

.field static final TRANSACTION_reportGpsGeofenceResumeStatus:I = 0x1d

.field static final TRANSACTION_reportGpsGeofenceStatus:I = 0x19

.field static final TRANSACTION_reportGpsGeofenceTransition:I = 0x18

.field static final TRANSACTION_requestBatchOfLocations:I = 0xe

.field static final TRANSACTION_requestCoreBatchOfLocations:I = 0x25

.field static final TRANSACTION_requestCurrentLocation:I = 0x15

.field static final TRANSACTION_requestLocation:I = 0x11

.field static final TRANSACTION_requestLocationToPoi:I = 0x12

.field static final TRANSACTION_requestSingleLocation:I = 0x10

.field static final TRANSACTION_setFusedLocationHardware:I = 0x1

.field static final TRANSACTION_setGeofenceCellInterface:I = 0x3

.field static final TRANSACTION_setGpsGeofenceHardware:I = 0x2

.field static final TRANSACTION_startCoreBatching:I = 0x21

.field static final TRANSACTION_startGeofence:I = 0x7

.field static final TRANSACTION_startLearning:I = 0xa

.field static final TRANSACTION_startLocationBatching:I = 0xc

.field static final TRANSACTION_stopCoreBatching:I = 0x22

.field static final TRANSACTION_stopGeofence:I = 0x8

.field static final TRANSACTION_stopLearning:I = 0xb

.field static final TRANSACTION_stopLocationBatching:I = 0xd

.field static final TRANSACTION_syncGeofence:I = 0x5

.field static final TRANSACTION_updateBatchingOptions:I = 0xf

.field static final TRANSACTION_updateCoreBatchingOptions:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.samsung.android.location.ISLocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;
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
    const-string/jumbo v1, "com.samsung.android.location.ISLocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/location/ISLocationManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/android/location/ISLocationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 45
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

    .line 542
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 47
    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v5, 0x1

    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/location/IFusedLocationHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v22

    .line 55
    .local v22, "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->setFusedLocationHardware(Landroid/hardware/location/IFusedLocationHardware;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v5, 0x1

    return v5

    .line 61
    .end local v22    # "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v23

    .line 64
    .local v23, "_arg0":Landroid/location/IGpsGeofenceHardware;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v5, 0x1

    return v5

    .line 70
    .end local v23    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationCellInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationCellInterface;

    move-result-object v25

    .line 73
    .local v25, "_arg0":Lcom/samsung/android/location/ISLocationCellInterface;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->setGeofenceCellInterface(Lcom/samsung/android/location/ISLocationCellInterface;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v5, 0x1

    return v5

    .line 79
    .end local v25    # "_arg0":Lcom/samsung/android/location/ISLocationCellInterface;
    :sswitch_4
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 82
    .local v28, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->getGeofenceIdList(Ljava/lang/String;)[I

    move-result-object v44

    .line 83
    .local v44, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 85
    const/4 v5, 0x1

    return v5

    .line 89
    .end local v28    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":[I
    :sswitch_5
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v31

    .line 93
    .local v31, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 94
    .local v36, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->syncGeofence([ILjava/lang/String;)I

    move-result v42

    .line 95
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v5, 0x1

    return v5

    .line 101
    .end local v31    # "_arg0":[I
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_6
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    sget-object v5, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/location/SemGeofence;

    .line 110
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 111
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I

    move-result v42

    .line 112
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v5, 0x1

    return v5

    .line 107
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :cond_0
    const/16 v27, 0x0

    .local v27, "_arg0":Lcom/samsung/android/location/SemGeofence;
    goto :goto_0

    .line 118
    .end local v27    # "_arg0":Lcom/samsung/android/location/SemGeofence;
    :sswitch_7
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 122
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/PendingIntent;

    .line 128
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->startGeofence(ILandroid/app/PendingIntent;)I

    move-result v42

    .line 129
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v5, 0x1

    return v5

    .line 126
    .end local v42    # "_result":I
    :cond_1
    const/16 v33, 0x0

    .local v33, "_arg1":Landroid/app/PendingIntent;
    goto :goto_1

    .line 135
    .end local v6    # "_arg0":I
    .end local v33    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_8
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 139
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/PendingIntent;

    .line 145
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopGeofence(ILandroid/app/PendingIntent;)I

    move-result v42

    .line 146
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v5, 0x1

    return v5

    .line 143
    .end local v42    # "_result":I
    :cond_2
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_2

    .line 152
    .end local v6    # "_arg0":I
    .end local v33    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_9
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 156
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 157
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeGeofence(ILjava/lang/String;)I

    move-result v42

    .line 158
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v5, 0x1

    return v5

    .line 164
    .end local v6    # "_arg0":I
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_a
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 167
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->startLearning(I)I

    move-result v42

    .line 168
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v5, 0x1

    return v5

    .line 174
    .end local v6    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_b
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 177
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopLearning(I)I

    move-result v42

    .line 178
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v5, 0x1

    return v5

    .line 184
    .end local v6    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_c
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 188
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v35

    .line 189
    .local v35, "_arg1":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->startLocationBatching(ILcom/samsung/android/location/ISLocationListener;)I

    move-result v42

    .line 190
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v5, 0x1

    return v5

    .line 196
    .end local v6    # "_arg0":I
    .end local v35    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    .end local v42    # "_result":I
    :sswitch_d
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 199
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopLocationBatching(I)I

    move-result v42

    .line 200
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v5, 0x1

    return v5

    .line 206
    .end local v6    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_e
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestBatchOfLocations()I

    move-result v42

    .line 208
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v5, 0x1

    return v5

    .line 214
    .end local v42    # "_result":I
    :sswitch_f
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 218
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 219
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->updateBatchingOptions(II)I

    move-result v42

    .line 220
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v5, 0x1

    return v5

    .line 226
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v42    # "_result":I
    :sswitch_10
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 230
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 232
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v40, 0x1

    .line 234
    .local v40, "_arg2":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/PendingIntent;

    .line 240
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestSingleLocation(IIZLandroid/app/PendingIntent;)I

    move-result v42

    .line 241
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v5, 0x1

    return v5

    .line 232
    .end local v40    # "_arg2":Z
    .end local v42    # "_result":I
    :cond_3
    const/16 v40, 0x0

    .restart local v40    # "_arg2":Z
    goto :goto_3

    .line 238
    :cond_4
    const/16 v41, 0x0

    .local v41, "_arg3":Landroid/app/PendingIntent;
    goto :goto_4

    .line 247
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v40    # "_arg2":Z
    .end local v41    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_11
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v29, 0x1

    .line 251
    .local v29, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v35

    .line 252
    .restart local v35    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;)I

    move-result v42

    .line 253
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v5, 0x1

    return v5

    .line 249
    .end local v29    # "_arg0":Z
    .end local v35    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    .end local v42    # "_result":I
    :cond_5
    const/16 v29, 0x0

    .restart local v29    # "_arg0":Z
    goto :goto_5

    .line 259
    .end local v29    # "_arg0":Z
    :sswitch_12
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v30

    .line 263
    .local v30, "_arg0":[D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v37

    .line 265
    .local v37, "_arg1":[D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 266
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/PendingIntent;

    .line 271
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I

    move-result v42

    .line 272
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v5, 0x1

    return v5

    .line 269
    .end local v42    # "_result":I
    :cond_6
    const/16 v38, 0x0

    .local v38, "_arg2":Landroid/app/PendingIntent;
    goto :goto_6

    .line 278
    .end local v30    # "_arg0":[D
    .end local v37    # "_arg1":[D
    .end local v38    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_13
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v26

    .line 281
    .local v26, "_arg0":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I

    move-result v42

    .line 282
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v5, 0x1

    return v5

    .line 288
    .end local v26    # "_arg0":Lcom/samsung/android/location/ISLocationListener;
    .end local v42    # "_result":I
    :sswitch_14
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 291
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 296
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeSingleLocation(Landroid/app/PendingIntent;)I

    move-result v42

    .line 297
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v5, 0x1

    return v5

    .line 294
    .end local v42    # "_result":I
    :cond_7
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/app/PendingIntent;
    goto :goto_7

    .line 303
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_15
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISCurrentLocListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISCurrentLocListener;

    move-result-object v24

    .line 306
    .local v24, "_arg0":Lcom/samsung/android/location/ISCurrentLocListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestCurrentLocation(Lcom/samsung/android/location/ISCurrentLocListener;)I

    move-result v42

    .line 307
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v5, 0x1

    return v5

    .line 313
    .end local v24    # "_arg0":Lcom/samsung/android/location/ISCurrentLocListener;
    .end local v42    # "_result":I
    :sswitch_16
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 316
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeCurrentLocation(I)I

    move-result v42

    .line 317
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v5, 0x1

    return v5

    .line 323
    .end local v6    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_17
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->checkPassiveLocation()Z

    move-result v43

    .line 325
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v43, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v5, 0x1

    return v5

    .line 326
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 331
    .end local v43    # "_result":Z
    :sswitch_18
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 335
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 337
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 339
    .local v8, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 341
    .local v10, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 343
    .local v12, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 345
    .local v14, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 347
    .local v15, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 349
    .local v16, "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 351
    .local v17, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 353
    .local v19, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .local v20, "_arg10":J
    move-object/from16 v5, p0

    .line 354
    invoke-virtual/range {v5 .. v21}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v5, 0x1

    return v5

    .line 360
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":D
    .end local v10    # "_arg3":D
    .end local v12    # "_arg4":D
    .end local v14    # "_arg5":F
    .end local v15    # "_arg6":F
    .end local v16    # "_arg7":F
    .end local v17    # "_arg8":J
    .end local v19    # "_arg9":I
    .end local v20    # "_arg10":J
    :sswitch_19
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 364
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 366
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 368
    .restart local v8    # "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 370
    .restart local v10    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 372
    .restart local v12    # "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 374
    .restart local v14    # "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 376
    .restart local v15    # "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 378
    .restart local v16    # "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .restart local v17    # "_arg8":J
    move-object/from16 v5, p0

    .line 379
    invoke-virtual/range {v5 .. v18}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceStatus(IIDDDFFFJ)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v5, 0x1

    return v5

    .line 385
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":D
    .end local v10    # "_arg3":D
    .end local v12    # "_arg4":D
    .end local v14    # "_arg5":F
    .end local v15    # "_arg6":F
    .end local v16    # "_arg7":F
    .end local v17    # "_arg8":J
    :sswitch_1a
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 389
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 390
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceAddStatus(II)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v5, 0x1

    return v5

    .line 396
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 400
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 401
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceRemoveStatus(II)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v5, 0x1

    return v5

    .line 407
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 411
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 412
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofencePauseStatus(II)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v5, 0x1

    return v5

    .line 418
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 422
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 423
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceResumeStatus(II)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v5, 0x1

    return v5

    .line 429
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1e
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 433
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 434
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportCellGeofenceDetected(II)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v5, 0x1

    return v5

    .line 440
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1f
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 443
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportCellGeofenceRequestFail(I)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v5, 0x1

    return v5

    .line 449
    .end local v6    # "_arg0":I
    :sswitch_20
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    sget-object v5, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/location/Location;

    .line 452
    .local v32, "_arg0":[Landroid/location/Location;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportFlpHardwareLocation([Landroid/location/Location;)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v5, 0x1

    return v5

    .line 458
    .end local v32    # "_arg0":[Landroid/location/Location;
    :sswitch_21
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 462
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 463
    sget-object v5, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/location/FusedBatchOptions;

    .line 469
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v39

    .line 470
    .local v39, "_arg2":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v39

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v5, 0x1

    return v5

    .line 466
    .end local v39    # "_arg2":Lcom/samsung/android/location/ISLocationListener;
    :cond_9
    const/16 v34, 0x0

    .local v34, "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_9

    .line 476
    .end local v6    # "_arg0":I
    .end local v34    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_22
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 479
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopCoreBatching(I)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v5, 0x1

    return v5

    .line 485
    .end local v6    # "_arg0":I
    :sswitch_23
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 489
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 490
    sget-object v5, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/location/FusedBatchOptions;

    .line 496
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v39

    .line 497
    .restart local v39    # "_arg2":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v39

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->updateCoreBatchingOptions(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    const/4 v5, 0x1

    return v5

    .line 493
    .end local v39    # "_arg2":Lcom/samsung/android/location/ISLocationListener;
    :cond_a
    const/16 v34, 0x0

    .restart local v34    # "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_a

    .line 503
    .end local v6    # "_arg0":I
    .end local v34    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_24
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->isCoreBatchingSupported()Z

    move-result v43

    .line 505
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    if-eqz v43, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v5, 0x1

    return v5

    .line 506
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 511
    .end local v43    # "_result":Z
    :sswitch_25
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 514
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestCoreBatchOfLocations(I)V

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    const/4 v5, 0x1

    return v5

    .line 520
    .end local v6    # "_arg0":I
    :sswitch_26
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->flushCoreBatchedLocations()V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v5, 0x1

    return v5

    .line 527
    :sswitch_27
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->cleanup()V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    const/4 v5, 0x1

    return v5

    .line 534
    :sswitch_28
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 537
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->injectDeviceContext(I)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    const/4 v5, 0x1

    return v5

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
