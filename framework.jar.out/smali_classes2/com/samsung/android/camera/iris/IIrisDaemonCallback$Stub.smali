.class public abstract Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;
.super Landroid/os/Binder;
.source "IIrisDaemonCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisDaemonCallback"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticated:I = 0x3

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onEnumerate:I = 0x7

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onIRPropertyChanged:I = 0x6

.field static final TRANSACTION_onImageProcessed:I = 0x8

.field static final TRANSACTION_onRemoved:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemonCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 163
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 46
    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v5, 0x1

    return v5

    .line 51
    :sswitch_1
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 55
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 57
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 59
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    move-object/from16 v5, p0

    .line 60
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onEnrollResult(JIII)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v5, 0x1

    return v5

    .line 66
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 70
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    sget-object v5, Lcom/samsung/android/camera/iris/EyeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/iris/EyeInfo;

    .line 76
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onAcquired(JLcom/samsung/android/camera/iris/EyeInfo;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v5, 0x1

    return v5

    .line 74
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg1":Lcom/samsung/android/camera/iris/EyeInfo;
    goto :goto_0

    .line 82
    .end local v4    # "_arg1":Lcom/samsung/android/camera/iris/EyeInfo;
    .end local v6    # "_arg0":J
    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 86
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 88
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 90
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .local v16, "_arg3":[B
    move-object/from16 v11, p0

    move-wide v12, v6

    move v14, v8

    move v15, v9

    .line 91
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onAuthenticated(JII[B)V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v5, 0x1

    return v5

    .line 97
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":[B
    :sswitch_4
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 101
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 102
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onError(JI)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v5, 0x1

    return v5

    .line 108
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    :sswitch_5
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 112
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 114
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 115
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onRemoved(JII)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v5, 0x1

    return v5

    .line 121
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_6
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 125
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 127
    .local v24, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 128
    .local v26, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onIRPropertyChanged(JLjava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v5, 0x1

    return v5

    .line 134
    .end local v6    # "_arg0":J
    .end local v24    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 138
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v25

    .line 140
    .local v25, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v27

    .line 141
    .local v27, "_arg2":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onEnumerate(J[I[I)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v5, 0x1

    return v5

    .line 147
    .end local v6    # "_arg0":J
    .end local v25    # "_arg1":[I
    .end local v27    # "_arg2":[I
    :sswitch_8
    const-string/jumbo v5, "com.samsung.android.camera.iris.IIrisDaemonCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 151
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 153
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 155
    .local v21, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 157
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg4":I
    move-object/from16 v17, p0

    move-wide/from16 v18, v6

    move/from16 v20, v8

    move/from16 v22, v10

    .line 158
    invoke-virtual/range {v17 .. v23}, Lcom/samsung/android/camera/iris/IIrisDaemonCallback$Stub;->onImageProcessed(JI[BII)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v5, 0x1

    return v5

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
