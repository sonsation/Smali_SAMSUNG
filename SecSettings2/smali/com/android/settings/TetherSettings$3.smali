.class Lcom/android/settings/TetherSettings$3;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    const/4 v3, 0x0

    .line 1622
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1624
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get1(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1625
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 1626
    .local v0, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_3

    .line 1627
    invoke-static {}, Lcom/android/settings/TetherSettings;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1628
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Service is connected,setBluetoothTethering to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1630
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get1(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1631
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1, v3}, Lcom/android/settings/TetherSettings;->-set1(Lcom/android/settings/TetherSettings;Z)Z

    .line 1634
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1635
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1, v3}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    .line 1638
    :cond_3
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    .line 1649
    .end local v0    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1650
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->setBluetoothPanProxy(Landroid/bluetooth/BluetoothPan;)V

    .line 1621
    :cond_5
    return-void

    .line 1639
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1640
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 1641
    .restart local v0    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_4

    .line 1642
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1643
    iget-object v1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1, v3}, Lcom/android/settings/TetherSettings;->-set2(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v3, 0x0

    .line 1656
    iget-object v2, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 1657
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1658
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 1659
    iget-object v2, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1661
    if-eqz v0, :cond_1

    .line 1662
    invoke-static {}, Lcom/android/settings/TetherSettings;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1663
    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, "Service is disconnected, call closeProfileProxy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1667
    :cond_1
    const/4 v1, 0x0

    .line 1670
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1671
    iget-object v2, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->removeBluetoothPanProxy()V

    .line 1654
    :cond_3
    return-void
.end method
