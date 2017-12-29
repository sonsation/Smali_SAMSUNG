.class public abstract Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;
.super Landroid/os/Binder;
.source "IAsrService.java"

# interfaces
.implements Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 26
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 30
    :cond_0
    new-instance v1, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 24
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 27
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService;

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
    .locals 6
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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 42
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v5

    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 47
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->setConfig(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v5

    .line 50
    :cond_0
    sget-object v4, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;

    .local v2, "_arg0":Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;
    goto :goto_0

    .end local v2    # "_arg0":Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;
    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 61
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;

    move-result-object v1

    .line 64
    .local v1, "_arg0":Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;
    invoke-virtual {p0, v1}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->registerResponseListener(Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v5

    .end local v1    # "_arg0":Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse;
    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 70
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->unregisterResponseListener()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v5

    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 77
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->startListening()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v5

    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 84
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->stopListening()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v5

    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 91
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->cancelRecognition()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v5

    :sswitch_7
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 98
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 101
    .local v3, "_arg0":[B
    invoke-virtual {p0, v3}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->sendAudio([B)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v5

    .end local v3    # "_arg0":[B
    :sswitch_8
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 107
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->destroy()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v5

    :sswitch_9
    const-string/jumbo v4, "com.samsung.android.svoice.asrserviceinterface.IAsrService"

    .line 114
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 122
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrService$Stub;->setClientParams(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    return v5

    .line 117
    :cond_1
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
