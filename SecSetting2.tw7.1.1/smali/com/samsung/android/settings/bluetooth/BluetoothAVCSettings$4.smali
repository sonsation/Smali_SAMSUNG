.class Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;
.super Ljava/lang/Object;
.source "BluetoothAVCSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 580
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-set0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 582
    .local v0, "bixbyA2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    const-string/jumbo v4, "BluetoothAVCSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-nez v0, :cond_0

    .line 585
    const-string/jumbo v4, "BluetoothAVCSettings"

    const-string/jumbo v5, "onStateReceived :: bixbyA2dpProfile is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    .line 587
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    .line 588
    return-void

    .line 591
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v3

    .line 592
    .local v3, "isDualPlayEnabled":Z
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v2

    .line 593
    .local v2, "isAVCEnabled":Z
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Z

    move-result v1

    .line 595
    .local v1, "isAVCAvailable":Z
    const-string/jumbo v4, "MediaVolumeSyncOn"

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 596
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 597
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 598
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "ConnectedDevices"

    const-string/jumbo v6, "Existed"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "BluetoothSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 600
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    .line 579
    :cond_1
    :goto_0
    return-void

    .line 601
    :cond_2
    if-nez v1, :cond_3

    .line 602
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "MediaVolumesync"

    const-string/jumbo v6, "Available"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    .line 604
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    goto :goto_0

    .line 605
    :cond_3
    if-eqz v2, :cond_4

    .line 606
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "MediaVolumesync"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    .line 608
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    goto :goto_0

    .line 609
    :cond_4
    if-eqz v3, :cond_5

    .line 610
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "DualAudio"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    .line 612
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    .line 613
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->onSwitchStateChange(Z)V

    goto :goto_0

    .line 615
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->onSwitchStateChange(Z)V

    goto :goto_0

    .line 617
    :cond_6
    const-string/jumbo v4, "MediaVolumeSyncOff"

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 618
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 619
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v4

    if-eq v4, v7, :cond_7

    .line 620
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "ConnectedDevices"

    const-string/jumbo v6, "Existed"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "BluetoothSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    goto/16 :goto_0

    .line 623
    :cond_7
    if-nez v1, :cond_8

    .line 624
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "MediaVolumesync"

    const-string/jumbo v6, "Available"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    .line 626
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    goto/16 :goto_0

    .line 627
    :cond_8
    if-nez v2, :cond_9

    .line 628
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const-string/jumbo v5, "MediaVolumesync"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    .line 630
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    goto/16 :goto_0

    .line 632
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->onSwitchStateChange(Z)V

    goto/16 :goto_0
.end method
