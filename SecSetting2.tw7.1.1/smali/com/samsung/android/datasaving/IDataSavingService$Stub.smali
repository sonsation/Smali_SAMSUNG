.class public abstract Lcom/samsung/android/datasaving/IDataSavingService$Stub;
.super Landroid/os/Binder;
.source "IDataSavingService.java"

# interfaces
.implements Lcom/samsung/android/datasaving/IDataSavingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/datasaving/IDataSavingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.samsung.android.datasaving.IDataSavingService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IDataSavingService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.samsung.android.datasaving.IDataSavingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/datasaving/IDataSavingService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 42
    :sswitch_0
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    return v2

    .line 47
    :sswitch_1
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->startSaving()V

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    const/4 v2, 0x1

    return v2

    .line 54
    :sswitch_2
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->stopSaving()V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v2, 0x1

    return v2

    .line 61
    :sswitch_3
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->bindServices()V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v2, 0x1

    return v2

    .line 68
    :sswitch_4
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 74
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg2":J
    move-object/from16 v2, p0

    .line 75
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getSavedBytesByUid(IJJ)J

    move-result-wide v14

    .line 76
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    const/4 v2, 0x1

    return v2

    .line 82
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v14    # "_result":J
    :sswitch_5
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 85
    .local v8, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getUsageText(J)Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x1

    return v2

    .line 92
    .end local v8    # "_arg0":J
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 96
    .restart local v8    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 97
    .restart local v4    # "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4, v5}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getSavedBytesForAllUid(JJ)J

    move-result-wide v14

    .line 98
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    const/4 v2, 0x1

    return v2

    .line 104
    .end local v4    # "_arg1":J
    .end local v8    # "_arg0":J
    .end local v14    # "_result":J
    :sswitch_7
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->setCurrentIMSI(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v2, 0x1

    return v2

    .line 113
    .end local v11    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    move-result-object v10

    .line 116
    .local v10, "_arg0":Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->setOnSavingStateChangeListener(Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v2, 0x1

    return v2

    .line 122
    .end local v10    # "_arg0":Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
    :sswitch_9
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    move-result-object v10

    .line 125
    .restart local v10    # "_arg0":Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->removeOnSavingStateChangeListener(Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v2, 0x1

    return v2

    .line 131
    .end local v10    # "_arg0":Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
    :sswitch_a
    const-string/jumbo v2, "com.samsung.android.datasaving.IDataSavingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/datasaving/IDataSavingService$Stub;->getSavingState()I

    move-result v12

    .line 133
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v2, 0x1

    return v2

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
