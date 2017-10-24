.class public abstract Lcom/samsung/android/aod/IAODManager$Stub;
.super Landroid/os/Binder;
.source "IAODManager.java"

# interfaces
.implements Lcom/samsung/android/aod/IAODManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/IAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAODManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.aod.IAODManager"

.field static final TRANSACTION_isAODState:I = 0x1

.field static final TRANSACTION_requestNotificationKeys:I = 0x4

.field static final TRANSACTION_setLiveClockInfo:I = 0x6

.field static final TRANSACTION_setLiveClockNeedle:I = 0x7

.field static final TRANSACTION_updateAODTspRect:I = 0x2

.field static final TRANSACTION_updateNotificationKeys:I = 0x5

.field static final TRANSACTION_writeAODCommand:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.samsung.android.aod.IAODManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;
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
    const-string/jumbo v1, "com.samsung.android.aod.IAODManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/aod/IAODManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/android/aod/IAODManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 35
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

    .line 142
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.aod.IAODManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.aod.IAODManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->isAODState()Z

    move-result v34

    .line 52
    .local v34, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v34, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v4, 0x1

    return v4

    .line 53
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 58
    .end local v34    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.aod.IAODManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 62
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 64
    .local v29, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 66
    .local v31, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 67
    .local v32, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/samsung/android/aod/IAODManager$Stub;->updateAODTspRect(IIII)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v4, 0x1

    return v4

    .line 73
    .end local v11    # "_arg0":I
    .end local v29    # "_arg1":I
    .end local v31    # "_arg2":I
    .end local v32    # "_arg3":I
    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.aod.IAODManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 84
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/aod/IAODManager$Stub;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v4, 0x1

    return v4

    .line 90
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.aod.IAODManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->requestNotificationKeys()V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v4, 0x1

    return v4

    .line 97
    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.aod.IAODManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 101
    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v30

    .line 102
    .local v30, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->updateNotificationKeys(ILjava/util/List;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v4, 0x1

    return v4

    .line 108
    .end local v11    # "_arg0":I
    .end local v30    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.aod.IAODManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 112
    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 114
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 116
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 118
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 120
    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 122
    .local v20, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 124
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 126
    .local v24, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .local v26, "_arg8":J
    move-object/from16 v10, p0

    .line 127
    invoke-virtual/range {v10 .. v27}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockInfo(IJJJJJJJJ)I

    move-result v33

    .line 128
    .local v33, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v4, 0x1

    return v4

    .line 134
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":J
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":J
    .end local v18    # "_arg4":J
    .end local v20    # "_arg5":J
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":J
    .end local v26    # "_arg8":J
    .end local v33    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "com.samsung.android.aod.IAODManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v28

    .line 137
    .local v28, "_arg0":[C
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockNeedle([C)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
