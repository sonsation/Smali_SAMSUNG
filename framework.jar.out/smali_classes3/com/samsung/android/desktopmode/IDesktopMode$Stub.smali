.class public abstract Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.super Landroid/os/Binder;
.source "IDesktopMode.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopmode.IDesktopMode"

.field static final TRANSACTION_getLaunchPolicy:I = 0x5

.field static final TRANSACTION_getModeChangePolicy:I = 0x6

.field static final TRANSACTION_isDefaultDisplayBlocked:I = 0x7

.field static final TRANSACTION_isDesktopDockConnected:I = 0x1

.field static final TRANSACTION_isDesktopMode:I = 0x2

.field static final TRANSACTION_isExternalDisplayConnected:I = 0x9

.field static final TRANSACTION_isModeChangePending:I = 0x8

.field static final TRANSACTION_onConfigurationChanged:I = 0xd

.field static final TRANSACTION_registerStateCallback:I = 0xa

.field static final TRANSACTION_setDefaultDisplayOn:I = 0x4

.field static final TRANSACTION_setDefaultDisplayPowerMode:I = 0xc

.field static final TRANSACTION_setTouchScreenOn:I = 0x3

.field static final TRANSACTION_unregisterStateCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopMode;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopmode/IDesktopMode;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopMode;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 43
    :sswitch_0
    const-string/jumbo v8, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v9

    .line 48
    :sswitch_1
    const-string/jumbo v10, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopDockConnected()Z

    move-result v7

    .line 50
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v7, :cond_0

    move v8, v9

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return v9

    .line 56
    .end local v7    # "_result":Z
    :sswitch_2
    const-string/jumbo v10, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopMode()Z

    move-result v7

    .line 58
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v7, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v9

    .line 64
    .end local v7    # "_result":Z
    :sswitch_3
    const-string/jumbo v8, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    .line 68
    .local v4, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->setTouchScreenOn(ZLjava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v9

    .line 66
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_0

    .line 75
    .end local v4    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v8, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    .line 79
    .restart local v4    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->setDefaultDisplayOn(ZLjava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v9

    .line 77
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_1

    .line 86
    .end local v4    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v8, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getLaunchPolicy(Ljava/lang/String;)I

    move-result v6

    .line 90
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v9

    .line 96
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_6
    const-string/jumbo v8, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getModeChangePolicy(Ljava/lang/String;)I

    move-result v6

    .line 100
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v9

    .line 106
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_7
    const-string/jumbo v10, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDefaultDisplayBlocked()Z

    move-result v7

    .line 108
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v7, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v9

    .line 114
    .end local v7    # "_result":Z
    :sswitch_8
    const-string/jumbo v10, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isModeChangePending()Z

    move-result v7

    .line 116
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v7, :cond_5

    move v8, v9

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v9

    .line 122
    .end local v7    # "_result":Z
    :sswitch_9
    const-string/jumbo v10, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isExternalDisplayConnected()Z

    move-result v7

    .line 124
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v7, :cond_6

    move v8, v9

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v9

    .line 130
    .end local v7    # "_result":Z
    :sswitch_a
    const-string/jumbo v10, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/desktopmode/IDesktopModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z

    move-result v7

    .line 134
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v7, :cond_7

    move v8, v9

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return v9

    .line 140
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    .end local v7    # "_result":Z
    :sswitch_b
    const-string/jumbo v10, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/desktopmode/IDesktopModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    move-result-object v2

    .line 143
    .restart local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->unregisterStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z

    move-result v7

    .line 144
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v7, :cond_8

    move v8, v9

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return v9

    .line 150
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    .end local v7    # "_result":Z
    :sswitch_c
    const-string/jumbo v8, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->setDefaultDisplayPowerMode(I)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v9

    .line 159
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string/jumbo v8, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    .line 162
    sget-object v8, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 167
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v9

    .line 165
    :cond_9
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/res/Configuration;
    goto :goto_2

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
