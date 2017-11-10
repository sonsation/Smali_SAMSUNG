.class public abstract Lcom/samsung/android/apex/service/IApexService$Stub;
.super Landroid/os/Binder;
.source "IApexService.java"

# interfaces
.implements Lcom/samsung/android/apex/service/IApexService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/service/IApexService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/service/IApexService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.apex.service.IApexService"

.field static final TRANSACTION_getMotionPhotoComposer:I = 0x3

.field static final TRANSACTION_requestId:I = 0x1

.field static final TRANSACTION_sendFilePath:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.apex.service.IApexService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/apex/service/IApexService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/apex/service/IApexService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.apex.service.IApexService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/apex/service/IApexService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/apex/service/IApexService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/apex/service/IApexService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/apex/service/IApexService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "com.samsung.android.apex.service.IApexService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v6

    goto :goto_0

    :sswitch_1
    const-string v3, "com.samsung.android.apex.service.IApexService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/apex/service/IApexService$Stub;->requestId()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v6

    goto :goto_0

    :sswitch_2
    const-string v3, "com.samsung.android.apex.service.IApexService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/apex/service/IApexService$Stub;->sendFilePath(JLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v6

    goto :goto_0

    :sswitch_3
    const-string v3, "com.samsung.android.apex.service.IApexService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/apex/service/IMotionPhotoComposerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/apex/service/IMotionPhotoComposerListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/service/IApexService$Stub;->getMotionPhotoComposer(Lcom/samsung/android/apex/service/IMotionPhotoComposerListener;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v6

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
