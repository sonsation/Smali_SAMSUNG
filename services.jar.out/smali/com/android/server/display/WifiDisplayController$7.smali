.class Lcom/android/server/display/WifiDisplayController$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 2539
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2542
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2543
    .local v5, "action":Ljava/lang/String;
    const-string/jumbo v17, "android.net.wifi.p2p.STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2546
    const-string/jumbo v17, "wifi_p2p_state"

    .line 2547
    const/16 v18, 0x1

    .line 2546
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2548
    const/16 v18, 0x2

    .line 2546
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    .line 2550
    .local v10, "enabled":Z
    :goto_0
    const-string/jumbo v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/android/server/display/WifiDisplayController;->-wrap16(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2541
    .end local v10    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    .line 2546
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "enabled":Z
    goto :goto_0

    .line 2555
    .end local v10    # "enabled":Z
    :cond_2
    const-string/jumbo v17, "android.net.wifi.p2p.PEERS_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2557
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap14(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    .line 2561
    :cond_3
    const-string/jumbo v17, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2563
    const-string/jumbo v17, "networkInfo"

    .line 2562
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    .line 2565
    .local v13, "networkInfo":Landroid/net/NetworkInfo;
    const-string/jumbo v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/android/server/display/WifiDisplayController;->-wrap12(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    goto :goto_1

    .line 2570
    .end local v13    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    const-string/jumbo v17, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    .line 2572
    const-string/jumbo v17, "wifiP2pDevice"

    .line 2571
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set14(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2574
    const-string/jumbo v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->-get26(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    .line 2574
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2580
    :cond_5
    const-string/jumbo v17, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2581
    const/16 v6, 0xe

    .line 2582
    .local v6, "apState":I
    const-string/jumbo v17, "wifi_state"

    const/16 v18, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get28(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v6, v0, :cond_6

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set16(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap28(Lcom/android/server/display/WifiDisplayController;)V

    .line 2589
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_display_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_7

    const/4 v15, 0x1

    .line 2590
    .local v15, "turningWifiDisplayOn":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "display"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    .line 2591
    .local v8, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v9

    .line 2592
    .local v9, "displayStatus":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v15, :cond_0

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v6, v0, :cond_0

    .line 2593
    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v17

    if-nez v17, :cond_0

    .line 2594
    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v17

    if-nez v17, :cond_0

    .line 2595
    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2596
    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set16(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap28(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 2589
    .end local v8    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v9    # "displayStatus":Landroid/hardware/display/WifiDisplayStatus;
    .end local v15    # "turningWifiDisplayOn":Z
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "turningWifiDisplayOn":Z
    goto :goto_2

    .line 2601
    .end local v6    # "apState":I
    .end local v15    # "turningWifiDisplayOn":Z
    :cond_8
    const-string/jumbo v17, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2602
    const-string/jumbo v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    .line 2604
    .local v11, "info":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_0

    .line 2605
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2606
    const-string/jumbo v17, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiInfo;

    .line 2607
    .local v16, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v16, :cond_9

    .line 2608
    return-void

    .line 2611
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    .line 2613
    .local v4, "APFrequency":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get22(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->-get3(Lcom/android/server/display/WifiDisplayController;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get18(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2615
    const-string/jumbo v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AP is connected! AP Frquency:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " ? WfdFrequency:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->-get33(Lcom/android/server/display/WifiDisplayController;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get33(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    move/from16 v0, v17

    if-eq v4, v0, :cond_0

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22073

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    .line 2622
    .end local v4    # "APFrequency":I
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v16    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_a
    const-string/jumbo v17, "android.intent.action.HDMI_PLUGGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "com.samsung.intent.action.DISMISS_WIFI_DISPLAY_POPUP"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2625
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string/jumbo v18, "state"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set10(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get15(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get36(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2627
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "Screen Mirroring is disabled because HDMI is connected..."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get0(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22074

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap11(Lcom/android/server/display/WifiDisplayController;)V

    .line 2633
    :cond_c
    const-string/jumbo v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received ACTION_HDMI_PLUGGED : mHDMIConnected = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->-get15(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2634
    :cond_d
    const-string/jumbo v17, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string/jumbo v18, "URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set15(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 2639
    const-string/jumbo v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "dongle Update URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->-get25(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v20, 0x2ee

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2643
    :cond_e
    const-string/jumbo v17, "com.samsung.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 2644
    const-string/jumbo v7, "true"

    .line 2645
    .local v7, "changed":Ljava/lang/String;
    const-string/jumbo v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 2646
    const-string/jumbo v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2649
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap6(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get31(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get22(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 2650
    :cond_10
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "received power saving mode enabled"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22084

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    .line 2652
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get28(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap6(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap4(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set16(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap28(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 2656
    .end local v7    # "changed":Ljava/lang/String;
    :cond_12
    const-string/jumbo v17, "com.samsung.intent.action.WIFI_DISPLAY_NOT_ALLOWED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 2657
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "LimitedContents : com.samsung.intent.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 2660
    .local v12, "limitedContentsType":Ljava/lang/String;
    if-nez v12, :cond_13

    .line 2661
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "LimitedContents type is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    return-void

    .line 2664
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get22(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2665
    const-string/jumbo v17, "recording"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 2666
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "LimitedContents : recording"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22087

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    .line 2669
    :cond_14
    const-string/jumbo v17, "playback"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2670
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "LimitedContents : playback"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22086

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    .line 2674
    .end local v12    # "limitedContentsType":Ljava/lang/String;
    :cond_15
    const-string/jumbo v17, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 2675
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get28(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set16(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->-get30(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v20, 0x2ee

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2680
    :cond_16
    const-string/jumbo v17, "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get28(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set16(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->-get30(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v20, 0x2ee

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2685
    :cond_17
    const-string/jumbo v17, "com.samsung.wfd.RESULT_WFD_UPDATE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 2686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string/jumbo v18, "result"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set9(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set8(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2688
    const-string/jumbo v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SEM_ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->-get14(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2689
    :cond_18
    const-string/jumbo v17, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 2692
    const-string/jumbo v17, "requestState"

    const/16 v18, 0x0

    .line 2691
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 2694
    .local v14, "requestAccepted":Z
    const-string/jumbo v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received WifiP2pManager.WIFI_P2P_REQUEST_CHANGED_ACTION : requestAccepted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get35(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get6(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 2699
    if-eqz v14, :cond_19

    .line 2701
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "User accepted PIN connect"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x2208a

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->-get8(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v20, 0x7530

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2707
    :cond_19
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "User cancelled PIN connect or timeout"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->-wrap11(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 2711
    .end local v14    # "requestAccepted":Z
    :cond_1a
    const-string/jumbo v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set11(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_1

    .line 2713
    :cond_1b
    const-string/jumbo v17, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 2714
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "received:com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set12(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_1

    .line 2716
    :cond_1c
    const-string/jumbo v17, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2717
    const-string/jumbo v17, "WifiDisplayController"

    const-string/jumbo v18, "received:com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->-set12(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_1
.end method
