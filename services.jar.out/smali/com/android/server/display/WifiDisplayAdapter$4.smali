.class Lcom/android/server/display/WifiDisplayAdapter$4;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .locals 3
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1469
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get14(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1472
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    .line 1472
    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 1468
    return-void

    .line 1475
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1476
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap17(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    const/4 v7, 0x2

    .line 1410
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get14(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1416
    if-eqz p2, :cond_4

    .line 1417
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap3(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1419
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 1420
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1436
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap26(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    .line 1438
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 1439
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1443
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set14(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1445
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1446
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1448
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isOnlySupportsAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap24(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v6

    .line 1454
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "connected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap13(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1407
    return-void

    .line 1425
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap14(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    .line 1426
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 1427
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_5

    .line 1428
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setOnlySupportsAudio(Z)V

    .line 1429
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap16(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1430
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isAudioOnlyMirroring enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1414
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1432
    :cond_5
    :try_start_2
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isAudioOnlyMirroring disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1440
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .locals 3
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    const/4 v2, 0x1

    .line 1343
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayConnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1345
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get14(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1347
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1351
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1352
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1342
    return-void

    .line 1349
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V
    .locals 4
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "connectingMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1362
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayConnecting::connectingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "connecting"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1367
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get14(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1369
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1373
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1375
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connecting state = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p2}, Lcom/android/server/display/WifiDisplayAdapter;->-set6(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1378
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1358
    return-void

    .line 1371
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .locals 3

    .prologue
    .line 1389
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1397
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1398
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1402
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    return-void

    .line 1393
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayDisconnected()V
    .locals 3

    .prologue
    .line 1487
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap15(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap26(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    .line 1498
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1502
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1503
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set8(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1504
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set6(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1506
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set14(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1508
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1509
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1512
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap25(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1518
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap27(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1483
    return-void

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayDisconnecting()V
    .locals 3

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1527
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1530
    :cond_0
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "onDisplayDisconnecting"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1533
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v2, "disconnecting"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1524
    return-void

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2
    .param p1, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set15(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 1463
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1460
    return-void

    .line 1461
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .locals 3
    .param p1, "featureState"    # I

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set9(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1261
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1262
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "onFeatureStateChanged empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set8(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1257
    return-void

    .line 1258
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 1543
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onRotationChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap18(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 1540
    return-void
.end method

.method public onScanFinished()V
    .locals 3

    .prologue
    .line 1330
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onScanFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get17(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set13(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1336
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1327
    return-void

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onScanResults([Landroid/hardware/display/WifiDisplay;)V
    .locals 5
    .param p1, "availableDisplays"    # [Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1302
    const-string/jumbo v2, "WifiDisplayAdapter"

    const-string/jumbo v3, "onScanResults"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    .line 1306
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get14(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1309
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get6(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 1312
    .local v0, "changed":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-nez v0, :cond_2

    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 1313
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v2

    .line 1314
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayAdapter;->-get6(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v4

    .line 1313
    if-eq v2, v4, :cond_1

    const/4 v0, 0x1

    .line 1312
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1309
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 1313
    .restart local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 1317
    :cond_2
    if-eqz v0, :cond_3

    .line 1318
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1319
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap8(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1320
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap28(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1321
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    .line 1299
    return-void

    .line 1305
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onScanStarted()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1272
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1273
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get17(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1277
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "onScanStarted"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get16(Lcom/android/server/display/WifiDisplayAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set12(Lcom/android/server/display/WifiDisplayAdapter;Z)Z

    .line 1282
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set8(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1285
    :cond_0
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "onScanStarted |Change device"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set13(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1293
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1271
    return-void

    .line 1288
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set8(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1272
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
