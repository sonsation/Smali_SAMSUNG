.class public Lcom/android/server/SecurityManagerService;
.super Lcom/samsung/android/service/SecurityManager/ISecurityManagerService$Stub;
.source "SecurityManagerService.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/ISecurityManagerService$Stub;-><init>()V

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "res":I
    sput-object p1, Lcom/android/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 22
    new-instance v1, Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-direct {v1, p1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    .line 23
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->setLogState(Z)V

    .line 24
    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->printVersion()V

    .line 26
    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isCCModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->initCCMode()I

    move-result v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init CCMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    .line 18
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v1, "This device does not support the MDFPP"

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSystemUid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 37
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->printVersion()V

    .line 39
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Security Exception Occurred. Only SYSTEM can use the SecurityManager Service."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 34
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    return-void
.end method


# virtual methods
.method public enableMDFPPMode(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->checkSystemUid()V

    .line 48
    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1, p1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->enableMDFPPMode(Z)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 51
    throw v0
.end method

.method public initCCMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->checkSystemUid()V

    .line 58
    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->initCCMode()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 61
    throw v0
.end method

.method public verifyVPN()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->checkSystemUid()V

    .line 68
    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->verifyVPN()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 71
    throw v0
.end method

.method public verifyWPA()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SecurityManagerService;->checkSystemUid()V

    .line 78
    iget-object v1, p0, Lcom/android/server/SecurityManagerService;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->verifyWPA()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 81
    throw v0
.end method
