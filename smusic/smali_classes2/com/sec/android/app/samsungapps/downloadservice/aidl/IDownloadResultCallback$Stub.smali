.class public abstract Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;
.super Landroid/os/Binder;
.source "IDownloadResultCallback.java"

# interfaces
.implements Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

.field static final TRANSACTION_onDownloadCanceled:I = 0x5

.field static final TRANSACTION_onDownloadFailed:I = 0x4

.field static final TRANSACTION_onDownloadSuccess:I = 0x3

.field static final TRANSACTION_onInstallFailed:I = 0x2

.field static final TRANSACTION_onProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;
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
    const-string v1, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 51
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 52
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->onProgress(JJ)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    :sswitch_2
    const-string v5, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->onInstallFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->onDownloadSuccess()V

    goto :goto_0

    .line 71
    :sswitch_4
    const-string v5, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->onDownloadFailed()V

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v5, "com.sec.android.app.samsungapps.downloadservice.aidl.IDownloadResultCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback$Stub;->onDownloadCanceled()V

    goto :goto_0

    .line 38
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
