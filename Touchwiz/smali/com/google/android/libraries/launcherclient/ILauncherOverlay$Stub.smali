.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;
.super Landroid/os/Binder;
.source "ILauncherOverlay.java"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.libraries.launcherclient.ILauncherOverlay"

.field static final TRANSACTION_closeOverlay:I = 0x6

.field static final TRANSACTION_endScroll:I = 0x3

.field static final TRANSACTION_getVoiceSearchLanguage:I = 0xb

.field static final TRANSACTION_hasOverlayContent:I = 0xd

.field static final TRANSACTION_isVoiceDetectionRunning:I = 0xc

.field static final TRANSACTION_onPause:I = 0x7

.field static final TRANSACTION_onResume:I = 0x8

.field static final TRANSACTION_onScroll:I = 0x2

.field static final TRANSACTION_openOverlay:I = 0x9

.field static final TRANSACTION_requestVoiceDetection:I = 0xa

.field static final TRANSACTION_startScroll:I = 0x1

.field static final TRANSACTION_windowAttached:I = 0x4

.field static final TRANSACTION_windowDetached:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
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
    const-string v1, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->startScroll()V

    goto :goto_0

    .line 53
    :sswitch_2
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 56
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onScroll(F)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":F
    :sswitch_3
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->endScroll()V

    goto :goto_0

    .line 67
    :sswitch_4
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 76
    .local v0, "_arg0":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    move-result-object v1

    .line 78
    .local v1, "_arg1":Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "_arg1":Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;
    .end local v2    # "_arg2":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    goto :goto_1

    .line 84
    .end local v0    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    :sswitch_5
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 87
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowDetached(Z)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Z
    :sswitch_6
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->closeOverlay(I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onPause()V

    goto :goto_0

    .line 106
    :sswitch_8
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onResume()V

    goto :goto_0

    .line 112
    :sswitch_9
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->openOverlay(I)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 123
    .local v0, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->requestVoiceDetection(Z)V

    goto/16 :goto_0

    .line 128
    .end local v0    # "_arg0":Z
    :sswitch_b
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->isVoiceDetectionRunning()Z

    move-result v3

    .line 138
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v3, :cond_3

    move v0, v4

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v3    # "_result":Z
    :sswitch_d
    const-string v5, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->hasOverlayContent()Z

    move-result v3

    .line 146
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v3, :cond_4

    move v0, v4

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
