.class public abstract Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;
.super Landroid/os/Binder;
.source "ILastPlayInfoService.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

.field static final TRANSACTION_getLastActiveState:I = 0x2

.field static final TRANSACTION_getLastPlayInfo:I = 0x1

.field static final TRANSACTION_isPlaying:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string v1, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v3, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;->getLastPlayInfo()Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;

    move-result-object v0

    .line 51
    .local v0, "_result":Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_result":Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    :sswitch_2
    const-string v1, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;->getLastActiveState()I

    move-result v0

    .line 65
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v0    # "_result":I
    :sswitch_3
    const-string v3, "com.samsung.android.app.music.service.export.information.ILastPlayInfoService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;->isPlaying()Z

    move-result v0

    .line 73
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
