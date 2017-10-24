.class public abstract Lcom/samsung/android/app/ISemDualAppManager$Stub;
.super Landroid/os/Binder;
.source "ISemDualAppManager.java"

# interfaces
.implements Lcom/samsung/android/app/ISemDualAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/ISemDualAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/ISemDualAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.ISemDualAppManager"

.field static final TRANSACTION_getAllInstalledWhitelistedPackages:I = 0x1

.field static final TRANSACTION_isInstalledWhitelistedPackage:I = 0x2

.field static final TRANSACTION_updateDualAppData:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.app.ISemDualAppManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemDualAppManager;
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
    const-string/jumbo v1, "com.samsung.android.app.ISemDualAppManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/ISemDualAppManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/app/ISemDualAppManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/app/ISemDualAppManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/ISemDualAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 43
    :sswitch_0
    const-string/jumbo v6, "com.samsung.android.app.ISemDualAppManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v7

    .line 48
    :sswitch_1
    const-string/jumbo v6, "com.samsung.android.app.ISemDualAppManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->getAllInstalledWhitelistedPackages()Ljava/util/List;

    move-result-object v4

    .line 50
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 52
    return v7

    .line 56
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2
    const-string/jumbo v8, "com.samsung.android.app.ISemDualAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v5

    .line 60
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return v7

    .line 66
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_3
    const-string/jumbo v8, "com.samsung.android.app.ISemDualAppManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 73
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 78
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 79
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v3, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_1
    return v7

    .line 76
    .end local v3    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_0

    .line 85
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .restart local v3    # "_result":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
