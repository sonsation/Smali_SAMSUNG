.class Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;
.super Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SViewCoverBaseServiceInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverServiceManager;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->this$0:Lcom/android/server/cover/CoverServiceManager;

    .line 562
    invoke-direct/range {p0 .. p5}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;)V

    .line 561
    return-void
.end method


# virtual methods
.method asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 567
    invoke-static {p1}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v0

    return-object v0
.end method

.method onCoverAppStateChanged(Z)I
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 600
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 601
    const-string v1, "CoverServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverAppStateChanged : covered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onCoverAppCovered(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 610
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method systemReady()V
    .locals 4

    .prologue
    .line 572
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 573
    const-string v1, "CoverServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemReady : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_1
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 586
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 587
    const-string v1, "CoverServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_1
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
