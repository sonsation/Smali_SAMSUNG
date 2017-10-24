.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field private mAttempts:I

.field private mReevaluateDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 782
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get23(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor;->mWatchdogChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25066

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 790
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get34(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get34(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 792
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-set20(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 794
    :cond_1
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 795
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    .line 778
    return-void

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get31(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set18(Lcom/android/server/connectivity/NetworkMonitor;I)I

    move-result v1

    const v2, 0x82006

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1011
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 1010
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1005
    const/4 v2, 0x0

    return v2

    .line 803
    :sswitch_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get31(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v4

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get35(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 804
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 822
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get29(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 822
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "CMD_REEVALUATE -> ValidatedState"

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "Network would not satisfy default request, not validating"

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap8(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get36(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 827
    const/4 v2, 0x1

    return v2

    .line 829
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get29(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get36(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 834
    const/4 v2, 0x1

    return v2

    .line 838
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get29(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get23(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get22(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "No Internet AP - stay in current state"

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 937
    :cond_4
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 842
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get21(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "Network is not verified yet - waiting for result"

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get37(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v20

    .line 846
    .local v20, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v20, :cond_4

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 848
    const-string/jumbo v5, ", isCaptivePortal: "

    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 848
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v5

    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 849
    const-string/jumbo v5, ", isAuthenticated: "

    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 849
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v5

    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 859
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get36(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 851
    :cond_8
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getSkipInternetCheck()Z

    move-result v2

    if-nez v2, :cond_7

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get37(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v2

    if-nez v2, :cond_7

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get36(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 856
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get4(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 864
    .end local v20    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_a
    const/4 v11, 0x0

    .line 865
    .local v11, "countryIso":Ljava/lang/String;
    const-string/jumbo v16, "http://www.google.com"

    .line 866
    .local v16, "mUrl":Ljava/lang/String;
    const/4 v10, 0x0

    .line 868
    .local v10, "bCn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_b

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v2

    .line 870
    const-string/jumbo v5, "connectivity"

    .line 869
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v4, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 874
    :cond_b
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v4, "CountryISO"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 880
    .end local v11    # "countryIso":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "cn"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 881
    const/4 v10, 0x1

    .line 884
    :cond_c
    const/4 v15, 0x0

    .line 886
    .local v15, "isDomainFilterApplied":Z
    const-string/jumbo v2, "content://com.sec.knox.provider/DomainFilterPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 887
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 888
    const-string/jumbo v5, "getDefaultCaptivePortalUrl"

    .line 887
    const/4 v4, 0x0

    .line 889
    const/4 v6, 0x0

    .line 890
    const/4 v7, 0x0

    .line 887
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 891
    .local v12, "cr":Landroid/database/Cursor;
    if-eqz v12, :cond_e

    .line 893
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 896
    const-string/jumbo v2, "getDefaultCaptivePortalUrl"

    .line 895
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 894
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 897
    .local v13, "domainFilterUrl":Ljava/lang/String;
    if-eqz v13, :cond_d

    .line 898
    const/4 v15, 0x1

    .line 899
    move-object/from16 v16, v13

    .line 902
    :cond_d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 907
    .end local v13    # "domainFilterUrl":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 908
    if-eqz v10, :cond_f

    .line 907
    :cond_f
    if-eqz v15, :cond_12

    .line 910
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v18

    .line 912
    .local v18, "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    if-eqz v10, :cond_11

    if-eqz v15, :cond_13

    .line 915
    :cond_11
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 916
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v6, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 918
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10400000

    .line 917
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get29(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v4, Landroid/net/Network;->netId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    .line 921
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 920
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 919
    const v5, 0x8200a

    const/4 v7, 0x1

    move/from16 v0, v21

    invoke-virtual {v2, v5, v7, v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 922
    .local v17, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 925
    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get27(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 935
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_12
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get36(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 875
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v12    # "cr":Landroid/database/Cursor;
    .end local v15    # "isDomainFilterApplied":Z
    .restart local v11    # "countryIso":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 876
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception on CountryISO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 901
    .end local v11    # "countryIso":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v12    # "cr":Landroid/database/Cursor;
    .restart local v15    # "isDomainFilterApplied":Z
    :catchall_0
    move-exception v2

    .line 902
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 901
    throw v2

    .line 913
    .restart local v18    # "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_13
    const-string/jumbo v16, "http://www.samsung.com"

    goto/16 :goto_2

    .line 929
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v17    # "msg":Landroid/os/Message;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set17(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_3

    .line 946
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "bCn":Z
    .end local v12    # "cr":Landroid/database/Cursor;
    .end local v15    # "isDomainFilterApplied":Z
    .end local v16    # "mUrl":Ljava/lang/String;
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v18

    .line 947
    .restart local v18    # "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get36(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 969
    :cond_16
    :goto_4
    const/4 v2, 0x1

    return v2

    .line 949
    :cond_17
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 951
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get28(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mRedirectUrl:Ljava/lang/String;

    .line 950
    const v8, 0x82002

    .line 951
    const/4 v9, 0x1

    .line 950
    invoke-virtual {v4, v8, v9, v5, v7}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get4(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_4

    .line 954
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get31(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->-set18(Lcom/android/server/connectivity/NetworkMonitor;I)I

    move-result v4

    const v5, 0x82006

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v4, v7}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    .line 955
    .restart local v17    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    int-to-long v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get28(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/net/metrics/NetworkEvent;->logEvent(II)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 958
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get28(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    .line 959
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mRedirectUrl:Ljava/lang/String;

    .line 958
    const v8, 0x82002

    const/4 v9, 0x1

    .line 957
    invoke-virtual {v4, v8, v9, v5, v7}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 960
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_19

    .line 962
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 964
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 965
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    const v4, 0x927c0

    if-le v2, v4, :cond_16

    .line 966
    const v2, 0x927c0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    goto/16 :goto_4

    .line 974
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_1a

    .line 975
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "handled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_1b

    const/4 v2, 0x1

    :goto_6
    return v2

    .line 977
    :cond_1a
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "not_handled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 978
    :cond_1b
    const/4 v2, 0x0

    goto :goto_6

    .line 980
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get23(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set13(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 983
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 984
    .local v19, "result":I
    packed-switch v19, :pswitch_data_0

    .line 1003
    .end local v19    # "result":I
    :cond_1c
    :goto_7
    const/4 v2, 0x1

    return v2

    .line 986
    .restart local v19    # "result":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "RESULT_VALID"

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get36(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_7

    .line 992
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "RESULT_INVALID"

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set14(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get7(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v2

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get28(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    const v7, 0x82002

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v5, v9}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 994
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 998
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "RESULT_CAPTIVE_PORTAL"

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get4(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap7(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_7

    .line 801
    nop

    :sswitch_data_0
    .sparse-switch
        0x25067 -> :sswitch_2
        0x82006 -> :sswitch_0
        0x82008 -> :sswitch_1
    .end sparse-switch

    .line 984
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
