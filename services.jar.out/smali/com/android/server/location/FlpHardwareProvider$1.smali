.class Lcom/android/server/location/FlpHardwareProvider$1;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/FlpHardwareProvider;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get2(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/location/ISLocationManager;->flushCoreBatchedLocations()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/FlpHardwareProvider$1;->getVersion()I

    move-result v1

    if-lt v1, v3, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap10(Lcom/android/server/location/FlpHardwareProvider;)V

    .line 544
    :goto_0
    return-void

    .line 556
    :cond_1
    const-string/jumbo v1, "FlpHardwareProvider"

    .line 557
    const-string/jumbo v2, "Tried to call flushBatchedLocations on an unsupported implementation"

    .line 556
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSupportedBatchSize()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap7(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap6(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .locals 4
    .param p1, "deviceEnabledContext"    # I

    .prologue
    .line 580
    const-string/jumbo v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Convert HW FLP request : injectDeviceContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get2(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->injectDeviceContext(I)V

    .line 579
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap11(Lcom/android/server/location/FlpHardwareProvider;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap12(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v2, "Replacing an existing IFusedLocationHardware sink"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 475
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap8(Lcom/android/server/location/FlpHardwareProvider;)V

    .line 466
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestBatchOfLocations(I)V
    .locals 3
    .param p1, "batchSizeRequested"    # I

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get2(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->requestCoreBatchOfLocations(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap17(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 531
    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v1, 0x65

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap23(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    .line 499
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap3(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap19(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    .line 494
    :cond_0
    return-void
.end method

.method public stopBatching(I)V
    .locals 4
    .param p1, "requestId"    # I

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/location/FlpHardwareProvider;->-wrap23(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    .line 508
    const-string/jumbo v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Convert HW FLP request : stopBatching id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v1

    if-lez v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get2(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->stopCoreBatching(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap20(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 516
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get3(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get3(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->-get3(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 504
    :cond_1
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsDeviceContextInjection()Z
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 574
    const/4 v0, 0x1

    return v0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap1(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/location/FlpHardwareProvider;->-set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 479
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v1, 0x67

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap23(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    .line 526
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap4(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap21(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    .line 521
    :cond_0
    return-void
.end method
