.class public Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;
.super Ljava/lang/Object;
.source "IVoIPInterfaceCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVoIPIdle()Z
    .locals 5

    .prologue
    .line 14
    sget-boolean v3, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v3, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 17
    .local v1, "isVoipIdle":Z
    :try_start_0
    new-instance v2, Lcom/samsung/android/voip/SemVoipInterfaceManager;

    invoke-direct {v2}, Lcom/samsung/android/voip/SemVoipInterfaceManager;-><init>()V

    .line 18
    .local v2, "voIpCall":Lcom/samsung/android/voip/SemVoipInterfaceManager;
    invoke-virtual {v2}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->isVoipIdle()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 24
    .end local v2    # "voIpCall":Lcom/samsung/android/voip/SemVoipInterfaceManager;
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    return v1

    .line 19
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;->TAG:Ljava/lang/String;

    const-string v4, "Runtime exception happened, something was wrong in voip module."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 24
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "isVoipIdle":Z
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;->isVoipIdle()Z

    move-result v1

    goto :goto_0
.end method
