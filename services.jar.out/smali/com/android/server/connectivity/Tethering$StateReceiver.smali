.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 42
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1659
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1660
    .local v4, "action":Ljava/lang/String;
    if-nez v4, :cond_0

    return-void

    .line 1661
    :cond_0
    const-string/jumbo v36, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get23(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v37

    monitor-enter v37

    .line 1663
    :try_start_0
    const-string/jumbo v36, "connected"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    .line 1664
    .local v33, "usbConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const-string/jumbo v38, "rndis"

    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v38

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set14(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1666
    if-eqz v33, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get26(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get31(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v38, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap22(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1669
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set15(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const-string/jumbo v38, "ncm"

    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v38

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set12(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1672
    if-eqz v33, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get20(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get21(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v38, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap21(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1675
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set13(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v37

    .line 1658
    .end local v33    # "usbConnected":Z
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 1662
    :catchall_0
    move-exception v36

    monitor-exit v37

    throw v36

    .line 1678
    :cond_4
    const-string/jumbo v36, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 1680
    const-string/jumbo v36, "networkInfo"

    .line 1679
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/NetworkInfo;

    .line 1681
    .local v21, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v21, :cond_3

    .line 1682
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v36

    sget-object v37, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_3

    .line 1683
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get28(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v36

    const v37, 0x50003

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1686
    .end local v21    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v36, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto :goto_0

    .line 1688
    :cond_6
    const-string/jumbo v36, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get32(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get17(Lcom/android/server/connectivity/Tethering;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap18(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1692
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get33(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get17(Lcom/android/server/connectivity/Tethering;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap19(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1695
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get17(Lcom/android/server/connectivity/Tethering;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap18(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1699
    :cond_9
    const-string/jumbo v36, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_15

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get33(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-nez v36, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get32(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    .line 1699
    if-eqz v36, :cond_15

    .line 1700
    :cond_a
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get24()I

    move-result v36

    if-nez v36, :cond_15

    .line 1701
    const-string/jumbo v36, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1702
    .local v32, "type":Ljava/lang/String;
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    if-eqz v32, :cond_3

    .line 1704
    const-string/jumbo v36, "NUM"

    const/16 v37, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1705
    .local v22, "numExtra":I
    if-gez v22, :cond_b

    const/16 v22, 0x0

    .line 1706
    :cond_b
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    return-void

    .line 1708
    :cond_c
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set11(I)I

    .line 1709
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->-set3(I)I

    .line 1710
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "**number of client: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1715
    const-string/jumbo v36, "VZW"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "statusbar"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/StatusBarManager;

    .line 1717
    .local v31, "statusBar":Landroid/app/StatusBarManager;
    const/4 v15, 0x0

    .line 1718
    .local v15, "iconId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "wifi"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 1719
    .local v35, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v36

    if-eqz v36, :cond_e

    .line 1720
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    sget-object v37, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_d

    .line 1721
    sget-object v36, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v37, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    add-int/lit8 v37, v37, -0x1

    aget v15, v36, v37

    .line 1725
    :goto_1
    const-string/jumbo v36, "wifi_ap"

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1726
    const-string/jumbo v36, "wifi_ap"

    const/16 v37, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const v37, 0x10808cf

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap19(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1723
    :cond_d
    sget-object v36, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v37

    aget v15, v36, v37

    goto :goto_1

    .line 1729
    :cond_e
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Wifi Ap is not enabled."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const-string/jumbo v36, "wifi_ap"

    const/16 v37, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1731
    const-string/jumbo v36, "wifi_ap"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1733
    .end local v15    # "iconId":I
    .end local v31    # "statusBar":Landroid/app/StatusBarManager;
    .end local v35    # "wm":Landroid/net/wifi/WifiManager;
    :cond_f
    const-string/jumbo v36, "SPRINT"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const v37, 0x10808ce

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap19(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1735
    :cond_10
    const-string/jumbo v36, "TMO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_11

    .line 1736
    const-string/jumbo v36, "NEWCO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    .line 1735
    if-eqz v36, :cond_12

    .line 1737
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const v37, 0x10808cb

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap18(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1741
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const v37, 0x10808cd

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap18(Lcom/android/server/connectivity/Tethering;I)V

    .line 1743
    const-string/jumbo v36, "ATT"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_13

    const-string/jumbo v36, "AIO"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->readSalesCode()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    :cond_13
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v36

    if-nez v36, :cond_3

    .line 1744
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "createMaxApNotification(), clients = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get0()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_14

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto/16 :goto_0

    .line 1748
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1753
    .end local v22    # "numExtra":I
    .end local v32    # "type":Ljava/lang/String;
    :cond_15
    const-string/jumbo v36, "ATT"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_16

    const-string/jumbo v36, "com.samsung.android.net.wifi.MAXAP_NOTI"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_16

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1755
    :cond_16
    const-string/jumbo v36, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_17

    .line 1756
    const-string/jumbo v36, "wifi_state"

    const/16 v37, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1757
    .local v7, "apState":I
    packed-switch v7, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    .line 1768
    :pswitch_2
    const-string/jumbo v36, "ATT"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v36

    if-nez v36, :cond_3

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1773
    .end local v7    # "apState":I
    :cond_17
    const-string/jumbo v36, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1f

    .line 1774
    const-string/jumbo v36, "wifiap_power_mode_alarm_option"

    const/16 v37, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 1775
    .local v23, "option":I
    if-nez v23, :cond_1b

    .line 1778
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "wifi_ap_plugged_type"

    invoke-static/range {v36 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v25

    .line 1782
    .local v25, "pluggedType":I
    :goto_2
    const-string/jumbo v36, "TMO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_18

    if-nez v25, :cond_3

    .line 1783
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "wifi_ap_time_out_value"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get6()I

    move-result v38

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1784
    .local v27, "powermode_value":I
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "ALARM_START : set "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " sec"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    if-eqz v27, :cond_19

    .line 1786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v12, v36, v38

    .line 1788
    .local v12, "expireTime":J
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v36, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v36

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v5, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v36, "wifiap_power_mode_alarm_option"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    const/high16 v38, 0x10000000

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    .line 1792
    .local v24, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "alarm"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 1793
    .local v6, "am":Landroid/app/AlarmManager;
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v12, v13, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1795
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set1(Z)Z

    .line 1796
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_0

    .line 1779
    .end local v5    # "alarm_intent":Landroid/content/Intent;
    .end local v6    # "am":Landroid/app/AlarmManager;
    .end local v12    # "expireTime":J
    .end local v24    # "pending":Landroid/app/PendingIntent;
    .end local v25    # "pluggedType":I
    .end local v27    # "powermode_value":I
    :catch_0
    move-exception v9

    .line 1780
    .local v9, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v25, 0x0

    .restart local v25    # "pluggedType":I
    goto/16 :goto_2

    .line 1798
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v27    # "powermode_value":I
    :cond_19
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get3()Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 1799
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v36, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v36

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1800
    .restart local v5    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v36, "wifiap_power_mode_alarm_option"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    const/high16 v38, 0x10000000

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    .line 1803
    .restart local v24    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "alarm"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 1804
    .restart local v6    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1806
    .end local v5    # "alarm_intent":Landroid/content/Intent;
    .end local v6    # "am":Landroid/app/AlarmManager;
    .end local v24    # "pending":Landroid/app/PendingIntent;
    :cond_1a
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_0

    .line 1809
    .end local v25    # "pluggedType":I
    .end local v27    # "powermode_value":I
    :cond_1b
    const/16 v36, 0x4

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    .line 1810
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "WIFIAP_POWER_MODE_VALUE_CHANGED, clients = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    if-nez v36, :cond_3

    .line 1812
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v37

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Lcom/android/server/connectivity/Tethering;->-wrap14(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1815
    :cond_1c
    const/16 v36, 0x1

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    .line 1816
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "ALARM_EXPIRE"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set1(Z)Z

    .line 1818
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "power"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PowerManager;

    .line 1822
    .local v26, "pm":Landroid/os/PowerManager;
    const-string/jumbo v36, "MobileAPCloseService"

    const/16 v37, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    .line 1824
    .local v20, "mStopService":Landroid/os/PowerManager$WakeLock;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1829
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "wifi"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 1831
    .restart local v35    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v34

    .line 1832
    .local v34, "wifiApState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "wifi_ap_time_out_value"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get6()I

    move-result v38

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1833
    .restart local v27    # "powermode_value":I
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "powermode_value = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    if-nez v36, :cond_1d

    const/16 v36, 0xd

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1d

    if-eqz v27, :cond_1d

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "connectivity"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    .line 1836
    .local v18, "mCm":Landroid/net/ConnectivityManager;
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "--> data disable"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "--> ap disable"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1842
    .end local v18    # "mCm":Landroid/net/ConnectivityManager;
    :cond_1d
    if-eqz v20, :cond_3

    .line 1844
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1845
    const/16 v20, 0x0

    .local v20, "mStopService":Landroid/os/PowerManager$WakeLock;
    goto/16 :goto_0

    .line 1825
    .end local v27    # "powermode_value":I
    .end local v34    # "wifiApState":I
    .end local v35    # "wm":Landroid/net/wifi/WifiManager;
    .local v20, "mStopService":Landroid/os/PowerManager$WakeLock;
    :catch_1
    move-exception v11

    .line 1826
    .local v11, "e":Ljava/lang/Throwable;
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1846
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v27    # "powermode_value":I
    .restart local v34    # "wifiApState":I
    .restart local v35    # "wm":Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v11

    .line 1847
    .restart local v11    # "e":Ljava/lang/Throwable;
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Cannot release wake lock ~~"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1850
    .end local v11    # "e":Ljava/lang/Throwable;
    .end local v20    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v26    # "pm":Landroid/os/PowerManager;
    .end local v27    # "powermode_value":I
    .end local v34    # "wifiApState":I
    .end local v35    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1e
    const/16 v36, 0x2

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 1851
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "ALARM_STOP"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get2()Z

    move-result v36

    if-nez v36, :cond_3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get3()Z

    move-result v36

    if-eqz v36, :cond_3

    .line 1853
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v36, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v36

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1854
    .restart local v5    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v36, "wifiap_power_mode_alarm_option"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    const/high16 v38, 0x10000000

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    .line 1856
    .restart local v24    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "alarm"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 1857
    .restart local v6    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1858
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_0

    .line 1861
    .end local v5    # "alarm_intent":Landroid/content/Intent;
    .end local v6    # "am":Landroid/app/AlarmManager;
    .end local v23    # "option":I
    .end local v24    # "pending":Landroid/app/PendingIntent;
    :cond_1f
    const-string/jumbo v36, "android.net.wifi.wifiap_stand_by_mode_start"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_20

    .line 1862
    const-string/jumbo v36, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1863
    .restart local v32    # "type":Ljava/lang/String;
    if-eqz v32, :cond_3

    .line 1864
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "[WIFI] onReceive() WIFIAP_STAND_BY_MODE_START intent, type of EVENT: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const-string/jumbo v36, "no_data"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "wifi"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 1867
    .restart local v35    # "wm":Landroid/net/wifi/WifiManager;
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "--> ap disable"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 1871
    .end local v32    # "type":Ljava/lang/String;
    .end local v35    # "wm":Landroid/net/wifi/WifiManager;
    :cond_20
    const-string/jumbo v36, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_29

    .line 1872
    const-string/jumbo v36, "TMO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_21

    .line 1873
    const-string/jumbo v36, "NEWCO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    .line 1872
    if-eqz v36, :cond_3

    .line 1874
    :cond_21
    const-string/jumbo v36, "level"

    const/16 v37, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1875
    .local v19, "mLevel":I
    const-string/jumbo v36, "plugged"

    const/16 v37, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1876
    .restart local v25    # "pluggedType":I
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "lowBatteryThreshold = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0xf

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get32(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-nez v36, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get33(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_27

    :cond_22
    const/16 v36, 0xf

    move/from16 v0, v19

    move/from16 v1, v36

    if-gt v0, v1, :cond_27

    if-nez v25, :cond_27

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get18(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v36

    if-nez v36, :cond_27

    .line 1879
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "showLowBatteryNotification"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-wrap17(Lcom/android/server/connectivity/Tethering;)V

    .line 1888
    :cond_23
    :goto_4
    if-nez v25, :cond_24

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get15()Z

    move-result v36

    if-nez v36, :cond_25

    :cond_24
    if-eqz v25, :cond_3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get15()Z

    move-result v36

    if-nez v36, :cond_3

    .line 1889
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "wifi_ap_plugged_type"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1890
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v36, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v36

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v14, "i":Landroid/content/Intent;
    const-string/jumbo v36, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_26

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1895
    :cond_26
    if-nez v25, :cond_28

    .line 1896
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Unplugged"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set9(Z)Z

    goto/16 :goto_0

    .line 1882
    .end local v14    # "i":Landroid/content/Intent;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get18(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v36

    if-eqz v36, :cond_23

    .line 1883
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "clearLowBatteryNotification"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;)V

    goto/16 :goto_4

    .line 1912
    .restart local v14    # "i":Landroid/content/Intent;
    :cond_28
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Plugged"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set9(Z)Z

    goto/16 :goto_0

    .line 1926
    .end local v14    # "i":Landroid/content/Intent;
    .end local v19    # "mLevel":I
    .end local v25    # "pluggedType":I
    :cond_29
    const-string/jumbo v36, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2c

    .line 1927
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Boot complete."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set8(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get16(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v36

    if-nez v36, :cond_2a

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set10(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/knox/custom/SystemManager;)Lcom/samsung/android/knox/custom/SystemManager;

    .line 1935
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get16(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v36

    if-eqz v36, :cond_2b

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get16(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetState()Z

    move-result v36

    .line 1935
    if-eqz v36, :cond_2b

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "adb_enabled"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_2b

    .line 1939
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Activate USB Net on boot up"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    .line 1944
    :cond_2b
    const-string/jumbo v36, "enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string/jumbo v38, "TETHER_ALWAYS_ON_MODE"

    invoke-static/range {v37 .. v38}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 1945
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const-string/jumbo v36, "net.tether.always"

    const-string/jumbo v37, "1"

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    .line 1962
    :cond_2c
    const-string/jumbo v36, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_30

    .line 1963
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_2f

    .line 1966
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const-string/jumbo v36, "network_management"

    invoke-static/range {v36 .. v36}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 1969
    .local v8, "b":Landroid/os/IBinder;
    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v29

    .line 1970
    .local v29, "service":Landroid/os/INetworkManagementService;
    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1973
    .local v17, "ifaces":[Ljava/lang/String;
    :try_start_4
    invoke-interface/range {v29 .. v29}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v17

    .line 1979
    const/16 v36, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v37, v0

    :goto_5
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    aget-object v16, v17, v36

    .line 1980
    .local v16, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2e

    .line 1981
    const-string/jumbo v38, "Tethering"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/server/connectivity/Tethering;->-get23(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v38

    monitor-enter v38

    .line 1984
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1985
    .local v30, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v30, :cond_2d

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v39

    if-eqz v39, :cond_2d

    .line 1986
    const-string/jumbo v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2d
    monitor-exit v38

    .line 1979
    .end local v30    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2e
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_5

    .line 1974
    .end local v16    # "iface":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 1975
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    return-void

    .line 1983
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v16    # "iface":Ljava/lang/String;
    :catchall_1
    move-exception v36

    monitor-exit v38

    throw v36

    .line 1993
    .end local v8    # "b":Landroid/os/IBinder;
    .end local v16    # "iface":Ljava/lang/String;
    .end local v17    # "ifaces":[Ljava/lang/String;
    .end local v29    # "service":Landroid/os/INetworkManagementService;
    :cond_2f
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1996
    :cond_30
    const-string/jumbo v36, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 1997
    const-string/jumbo v36, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    .line 1996
    if-eqz v36, :cond_3

    .line 1998
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Tethering Denied"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v17

    .line 2000
    .restart local v17    # "ifaces":[Ljava/lang/String;
    const/16 v36, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v37, v0

    :goto_6
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    aget-object v16, v17, v36

    .line 2001
    .restart local v16    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_32

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v38

    const-string/jumbo v39, "wifi"

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    .line 2003
    .restart local v35    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2000
    .end local v35    # "wm":Landroid/net/wifi/WifiManager;
    :cond_31
    :goto_7
    add-int/lit8 v36, v36, 0x1

    goto :goto_6

    .line 2004
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_33

    .line 2005
    const-string/jumbo v38, "Tethering"

    const-string/jumbo v39, "setBluetoothTethering"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Lcom/android/server/connectivity/Tethering;->-wrap15(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;)V

    goto :goto_7

    .line 2008
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v28

    .line 2009
    .local v28, "result":I
    if-eqz v28, :cond_31

    .line 2010
    const-string/jumbo v38, "Tethering"

    const-string/jumbo v39, "Tether off error"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1757
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
