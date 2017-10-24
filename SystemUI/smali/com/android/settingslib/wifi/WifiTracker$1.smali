.class Lcom/android/settingslib/wifi/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "WifiTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ">>> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    const-string/jumbo v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 768
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string/jumbo v14, "wifi_state"

    .line 769
    const/4 v15, 0x4

    .line 768
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap4(Lcom/android/settingslib/wifi/WifiTracker;I)V

    .line 764
    :cond_1
    :goto_0
    return-void

    .line 770
    :cond_2
    const-string/jumbo v13, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 771
    const-string/jumbo v13, "multipleChanges"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 772
    .local v6, "isMultipleChanged":Z
    const-string/jumbo v13, "wifiConfiguration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 773
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v13, "changeReason"

    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 774
    .local v8, "reason":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-result-object v14

    .line 775
    if-eqz v6, :cond_3

    const/4 v13, 0x1

    .line 774
    :goto_1
    const/16 v15, 0xa

    invoke-virtual {v14, v15, v13, v8, v3}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 776
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v8}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 775
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 777
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "isMultipleChanged":Z
    .end local v8    # "reason":I
    :cond_4
    const-string/jumbo v13, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 778
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get10(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get10(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onScanStateChange(I)V

    .line 781
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 782
    :cond_6
    const-string/jumbo v13, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 783
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 784
    const-string/jumbo v13, "linkProperties"

    .line 783
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    invoke-static {v14, v13}, Lcom/android/settingslib/wifi/WifiTracker;->-set2(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 786
    :cond_7
    const-string/jumbo v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 788
    const-string/jumbo v13, "networkInfo"

    .line 787
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 789
    .local v5, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 791
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 792
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 793
    const-string/jumbo v13, "linkProperties"

    .line 792
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    invoke-static {v14, v13}, Lcom/android/settingslib/wifi/WifiTracker;->-set2(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 796
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker;->-set4(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 797
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker;->-set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 799
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v5}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 801
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    if-eq v13, v14, :cond_1

    .line 802
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v13

    if-eqz v13, :cond_9

    const-string/jumbo v13, "WifiTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "previousNetworkState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v15}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 803
    const-string/jumbo v15, " != currentNetworkState:"

    .line 802
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 803
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v15}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 802
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 807
    .end local v5    # "info":Landroid/net/NetworkInfo;
    :cond_a
    const-string/jumbo v13, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 809
    const-string/jumbo v13, "newState"

    .line 808
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/SupplicantState;

    .line 810
    .local v11, "supplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v13

    if-eqz v13, :cond_b

    const-string/jumbo v13, "WifiTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "supplicantState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", getDetailedStateOf: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 811
    invoke-static {v11}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 810
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 812
    const-string/jumbo v15, ", currentNetworkState: "

    .line 810
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 812
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v15}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 810
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 815
    .local v12, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_1

    .line 816
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker;->-set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    goto/16 :goto_0

    .line 818
    :cond_c
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_1

    .line 819
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v11, v13, :cond_1

    .line 820
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_1

    .line 821
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_1

    .line 822
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_1

    .line 824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker;->-set4(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v11}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker;->-set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 827
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    if-eq v13, v14, :cond_1

    .line 828
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v13

    if-eqz v13, :cond_d

    const-string/jumbo v13, "WifiTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "previousNetworkState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v15}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 829
    const-string/jumbo v15, " != currentNetworkState:"

    .line 828
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 829
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v15}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 828
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v12}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 836
    .end local v11    # "supplicantState":Landroid/net/wifi/SupplicantState;
    .end local v12    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_e
    const-string/jumbo v13, "com.samsung.android.net.wifi.WECHAT_AP_LIST"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 837
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string/jumbo v13, "WifiTracker"

    const-string/jumbo v14, "received WECHAT_AP_LIST action"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get11(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v13

    if-nez v13, :cond_10

    .line 839
    return-void

    .line 842
    :cond_10
    const-string/jumbo v13, "ssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 843
    .local v9, "ssidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 844
    .local v2, "bssidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v13, "storename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 846
    .local v10, "storeNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get11(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v13

    invoke-virtual {v13, v9, v2, v10}, Lcom/android/settingslib/wifi/WeChatWifiManager;->setWeChatAccessPoint(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 847
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap2(Lcom/android/settingslib/wifi/WifiTracker;ZZ)V

    goto/16 :goto_0

    .line 848
    .end local v2    # "bssidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "ssidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "storeNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    const-string/jumbo v13, "com.samsung.android.net.wifi.WECHAT_ERRORCODE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 849
    const-string/jumbo v13, "errorcode"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 850
    .local v4, "errorCode":I
    const-string/jumbo v13, "WifiTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive, WECHAT_ERRORCODE errorCode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get11(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v13

    if-nez v13, :cond_12

    .line 852
    return-void

    .line 854
    :cond_12
    const/4 v13, 0x3

    if-eq v4, v13, :cond_13

    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    .line 855
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get11(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    .line 856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_0

    .line 858
    .end local v4    # "errorCode":I
    :cond_14
    const-string/jumbo v13, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 859
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v13

    if-eqz v13, :cond_15

    const-string/jumbo v13, "WifiTracker"

    const-string/jumbo v14, "received WECHAT_LOGOUT action"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get11(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v13

    if-nez v13, :cond_16

    .line 861
    return-void

    .line 863
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get11(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    .line 864
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_0

    .line 865
    :cond_17
    const-string/jumbo v13, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 867
    :cond_18
    const-string/jumbo v13, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 868
    const-string/jumbo v13, "info_type"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 869
    .local v7, "msgId":I
    const/16 v13, 0x12e

    if-eq v7, v13, :cond_19

    const/16 v13, 0xb

    if-ne v7, v13, :cond_1

    .line 870
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v13}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
