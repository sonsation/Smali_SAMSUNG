.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;
.super Landroid/os/Binder;
.source "ICorePlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

.field static final TRANSACTION_addQueue:I = 0x9

.field static final TRANSACTION_addQueueItems:I = 0xa

.field static final TRANSACTION_buffering:I = 0x17

.field static final TRANSACTION_duration:I = 0x15

.field static final TRANSACTION_getExtraInformation:I = 0x1a

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getMusicExtras:I = 0x4

.field static final TRANSACTION_getMusicMetadata:I = 0x1

.field static final TRANSACTION_getMusicPlaybackState:I = 0x2

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getPlayingItemExtras:I = 0x1f

.field static final TRANSACTION_getQueueList:I = 0x3

.field static final TRANSACTION_getRadioMetadata:I = 0x1d

.field static final TRANSACTION_getRadioPlaybackState:I = 0x1e

.field static final TRANSACTION_moveQueueItem:I = 0xd

.field static final TRANSACTION_next:I = 0x12

.field static final TRANSACTION_openQueue:I = 0x7

.field static final TRANSACTION_openQueuePosition:I = 0x8

.field static final TRANSACTION_pause:I = 0x11

.field static final TRANSACTION_play:I = 0x10

.field static final TRANSACTION_position:I = 0x16

.field static final TRANSACTION_prev:I = 0x13

.field static final TRANSACTION_registerCallbackListener:I = 0x5

.field static final TRANSACTION_removeQueueAudioIds:I = 0xc

.field static final TRANSACTION_removeQueuePosition:I = 0xb

.field static final TRANSACTION_seek:I = 0x14

.field static final TRANSACTION_sendCustomEvent:I = 0x18

.field static final TRANSACTION_sendCustomEventBundle:I = 0x19

.field static final TRANSACTION_togglePlay:I = 0xf

.field static final TRANSACTION_toggleQueueMode:I = 0xe

.field static final TRANSACTION_unregisterCallbackListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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

    .line 410
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v10

    .line 49
    .local v10, "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v10, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 61
    .end local v10    # "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :sswitch_2
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v10

    .line 63
    .local v10, "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v10, :cond_1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 75
    .end local v10    # "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :sswitch_3
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getQueueList()Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    move-result-object v10

    .line 77
    .local v10, "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v10, :cond_2

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 89
    .end local v10    # "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    :sswitch_4
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 91
    .local v10, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v10, :cond_3

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    :goto_4
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 103
    .end local v10    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    move-result-object v1

    .line 106
    .local v1, "_arg0":Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    :sswitch_6
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    move-result-object v1

    .line 115
    .restart local v1    # "_arg0":Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 121
    .end local v1    # "_arg0":Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    :sswitch_7
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    .line 129
    .local v3, "_arg2":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    .line 136
    .local v4, "_arg3":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 138
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    .local v6, "_arg5":Z
    :goto_6
    move-object v0, p0

    .line 139
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->openQueue(ILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZ)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    .end local v4    # "_arg3":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    goto :goto_5

    .line 138
    .restart local v5    # "_arg4":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_6

    .line 145
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[J
    .end local v4    # "_arg3":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .end local v5    # "_arg4":I
    :sswitch_8
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    .line 152
    .local v3, "_arg2":Z
    :goto_7
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->openQueuePosition(IIZ)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 151
    .end local v3    # "_arg2":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 158
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_9
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 162
    .local v1, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    .line 166
    .restart local v3    # "_arg2":Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 167
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->addQueue([JIZI)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 164
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 173
    .end local v1    # "_arg0":[J
    .end local v2    # "_arg1":I
    :sswitch_a
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 176
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    .line 182
    .local v1, "_arg0":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    .line 186
    .restart local v3    # "_arg2":Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->addQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZI)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 179
    .end local v1    # "_arg0":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    goto :goto_9

    .line 184
    .restart local v2    # "_arg1":I
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 193
    .end local v1    # "_arg0":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 196
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->removeQueuePosition([I)I

    move-result v10

    .line 197
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 203
    .end local v1    # "_arg0":[I
    .end local v10    # "_result":I
    :sswitch_c
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 206
    .local v1, "_arg0":[J
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->removeQueueAudioIds([J)I

    move-result v10

    .line 207
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 213
    .end local v1    # "_arg0":[J
    .end local v10    # "_result":I
    :sswitch_d
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->moveQueueItem(II)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 224
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_e
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->toggleQueueMode(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 233
    .end local v1    # "_arg0":I
    :sswitch_f
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->togglePlay()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 240
    :sswitch_10
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->play()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 247
    :sswitch_11
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->pause()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 254
    :sswitch_12
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->next()V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 261
    :sswitch_13
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 264
    .local v1, "_arg0":Z
    :goto_b
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->prev(Z)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 263
    .end local v1    # "_arg0":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 270
    :sswitch_14
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 273
    .local v8, "_arg0":J
    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->seek(J)J

    move-result-wide v10

    .line 274
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 280
    .end local v8    # "_arg0":J
    .end local v10    # "_result":J
    :sswitch_15
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->duration()J

    move-result-wide v10

    .line 282
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 288
    .end local v10    # "_result":J
    :sswitch_16
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->position()J

    move-result-wide v10

    .line 290
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 296
    .end local v10    # "_result":J
    :sswitch_17
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->buffering()I

    move-result v10

    .line 298
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 304
    .end local v10    # "_result":I
    :sswitch_18
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->sendCustomEvent(ILjava/lang/String;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 315
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_19
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 325
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 323
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_c

    .line 331
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_1a
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 334
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 341
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v10

    .line 343
    .local v10, "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v10, :cond_c

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 351
    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 349
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 355
    .end local v10    # "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :sswitch_1c
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v10

    .line 357
    .local v10, "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v10, :cond_d

    .line 359
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 365
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 363
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 369
    .end local v10    # "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :sswitch_1d
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v10

    .line 371
    .local v10, "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v10, :cond_e

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 379
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 377
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 383
    .end local v10    # "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :sswitch_1e
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v10

    .line 385
    .local v10, "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v10, :cond_f

    .line 387
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 393
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 391
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 397
    .end local v10    # "_result":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :sswitch_1f
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getPlayingItemExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 399
    .local v10, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    if-eqz v10, :cond_10

    .line 401
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 407
    :goto_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
