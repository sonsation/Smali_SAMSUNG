.class Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;
.super Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemCoverServiceInfo"
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
    .line 616
    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->this$0:Lcom/android/server/cover/CoverServiceManager;

    .line 617
    invoke-direct/range {p0 .. p5}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;)V

    .line 616
    return-void
.end method


# virtual methods
.method asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 622
    invoke-static {p1}, Lcom/samsung/android/cover/ICoverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverService;

    move-result-object v0

    return-object v0
.end method

.method onCoverAppStateChanged(Z)I
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 655
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 656
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

    .line 659
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverService;->onCoverAppCovered(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 665
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method systemReady()V
    .locals 4

    .prologue
    .line 627
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 628
    const-string v1, "CoverServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemReady : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 641
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 642
    const-string v1, "CoverServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverService;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
