.class Lcom/android/server/fingerprint/FingerprintService$9;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->clientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field final synthetic val$client:Lcom/android/server/fingerprint/ClientMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "val$client"    # Lcom/android/server/fingerprint/ClientMonitor;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$9;->val$client:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 725
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v3

    .line 726
    .local v3, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v3, :cond_0

    .line 727
    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "ClientMonitor clientDied : no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void

    .line 730
    :cond_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v2

    .line 731
    .local v2, "curClient":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$9;->val$client:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v7}, Lcom/android/server/fingerprint/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 733
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 734
    .local v0, "begin":J
    invoke-interface {v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v5

    .line 735
    .local v5, "result":I
    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClientMonitor clientDied: cancel() FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v0    # "begin":J
    .end local v5    # "result":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$9;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v6, v2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap12(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 724
    :goto_1
    return-void

    .line 736
    :catch_0
    move-exception v4

    .line 737
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "ClientMonitor clientDied: cancel()"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 741
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$9;->val$client:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v6}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    goto :goto_1
.end method
