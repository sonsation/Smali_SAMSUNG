.class public abstract Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IDesktopModeUiServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

.field static final TRANSACTION_onClickButtonNegative:I = 0x2

.field static final TRANSACTION_onClickButtonPositive:I = 0x1

.field static final TRANSACTION_onDismiss:I = 0x4

.field static final TRANSACTION_onShow:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onClickButtonPositive()V

    return v1

    :sswitch_2
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onClickButtonNegative()V

    return v1

    :sswitch_3
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onShow()V

    return v1

    :sswitch_4
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->onDismiss()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
