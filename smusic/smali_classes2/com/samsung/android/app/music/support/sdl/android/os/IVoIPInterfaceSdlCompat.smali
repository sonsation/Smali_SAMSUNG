.class public Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;
.super Ljava/lang/Object;
.source "IVoIPInterfaceSdlCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVoipIdle()Z
    .locals 5

    .prologue
    .line 12
    const/4 v1, 0x1

    .line 14
    .local v1, "isVoipIdle":Z
    :try_start_0
    const-string/jumbo v3, "voip"

    .line 15
    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 16
    .local v2, "voipCall":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 17
    const/4 v1, 0x0

    .line 22
    .end local v2    # "voipCall":Landroid/os/IVoIPInterface;
    :cond_0
    :goto_0
    return v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "remote exception happened, something was wrong in voip module."

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
