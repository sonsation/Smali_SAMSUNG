.class Lcom/android/server/display/WifiDisplayAdapter$5;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/IpRemoteDisplayController$Listener;


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
    .line 1554
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 9
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 1616
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IpRemoteDisplayListener onDisplayConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 1620
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get14(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1621
    if-eqz p2, :cond_6

    .line 1622
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap3(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1624
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 1625
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1640
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap26(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    .line 1642
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1645
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1646
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set14(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1647
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1650
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, v8, :cond_2

    .line 1651
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1652
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set9(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1654
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1655
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap1(Lcom/android/server/display/WifiDisplayAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1657
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->syncRemoteDisplayStatus(IZ)V

    .line 1658
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isOnlySupportsAudio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1659
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap24(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v6

    .line 1667
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "connected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap13(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1669
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1614
    return-void

    .line 1630
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap14(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    .line 1631
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 1632
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_7

    .line 1633
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setOnlySupportsAudio(Z)V

    .line 1634
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap16(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1635
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isAudioOnlyMirroring enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1619
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1637
    :cond_7
    :try_start_2
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isAudioOnlyMirroring disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1644
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1662
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->syncRemoteDisplayStatus(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V
    .locals 11
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "connectingMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 1590
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IpRemoteDisplayListener onDisplayConnecting::connectingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v8

    monitor-enter v8

    .line 1594
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1598
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1599
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v0, 0x1

    new-array v10, v0, [Landroid/hardware/display/WifiDisplay;

    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 1600
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v5

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1599
    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, v10, v1

    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayAdapter;->-set8(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1602
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connecting state = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p2}, Lcom/android/server/display/WifiDisplayAdapter;->-set6(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1605
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap1(Lcom/android/server/display/WifiDisplayAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v8

    .line 1588
    return-void

    .line 1596
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .locals 3

    .prologue
    .line 1572
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IpRemoteDisplayListener onDisplayConnectionFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1579
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1580
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1584
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    return-void

    .line 1574
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayDisconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1675
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IpRemoteDisplayListener onDisplayDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap15(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1681
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap26(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    .line 1683
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1686
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set14(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1687
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1688
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set8(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1689
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1691
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap1(Lcom/android/server/display/WifiDisplayAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap25(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1696
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1698
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set9(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1700
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set6(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1701
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v1

    .line 1705
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap27(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1673
    return-void

    .line 1679
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayDisconnecting()V
    .locals 4

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1712
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1715
    :cond_0
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "IpRemoteDisplayListener onDisplayDisconnecting"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1718
    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v2, "disconnecting"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/WifiDisplayController;->syncRemoteDisplayStatus(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1710
    return-void

    .line 1711
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .locals 3
    .param p1, "featureState"    # I

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1558
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1559
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set9(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1560
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1561
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "onFeatureStateChanged empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set8(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap19(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1556
    return-void

    .line 1557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onQosLevelChanged(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1728
    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IpRemoteDisplayListener onQosLevelChanged:: level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set11(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1726
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 1737
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onRotationChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap18(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 1734
    return-void
.end method
