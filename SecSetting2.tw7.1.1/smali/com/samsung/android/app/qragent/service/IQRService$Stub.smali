.class public abstract Lcom/samsung/android/app/qragent/service/IQRService$Stub;
.super Landroid/os/Binder;
.source "IQRService.java"

# interfaces
.implements Lcom/samsung/android/app/qragent/service/IQRService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/qragent/service/IQRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/qragent/service/IQRService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.app.qragent.service.IQRService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.samsung.android.app.qragent.service.IQRService"

    .line 26
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 30
    :cond_0
    new-instance v1, Lcom/samsung/android/app/qragent/service/IQRService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/qragent/service/IQRService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 24
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 27
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/samsung/android/app/qragent/service/IQRService;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lcom/samsung/android/app/qragent/service/IQRService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.app.qragent.service.IQRService"

    .line 42
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v6

    :sswitch_1
    const-string/jumbo v7, "com.samsung.android.app.qragent.service.IQRService"

    .line 47
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->getQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 51
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-nez v3, :cond_0

    .line 57
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    :goto_0
    return v6

    .line 53
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v3, p3, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.app.qragent.service.IQRService"

    .line 63
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->linkQRCodeWithFilePath(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v6

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.app.qragent.service.IQRService"

    .line 73
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->linkQRCodeWithRawData(Ljava/lang/String;)I

    move-result v2

    .line 77
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v6

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_4
    const-string/jumbo v5, "com.samsung.android.app.qragent.service.IQRService"

    .line 83
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    .line 91
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->linkQRCodeWithBitmap(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 92
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v6

    .line 86
    .end local v2    # "_result":I
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_1

    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_5
    const-string/jumbo v7, "com.samsung.android.app.qragent.service.IQRService"

    .line 98
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v0, 0x0

    .line 106
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->isQRCode(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 107
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v6

    .line 101
    .end local v4    # "_result":Z
    :cond_2
    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_2

    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v4    # "_result":Z
    :cond_3
    move v5, v6

    .line 108
    goto :goto_3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
