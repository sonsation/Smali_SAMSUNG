.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    .prologue
    .line 1874
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v12

    .line 1876
    .local v12, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmCallback, stateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const-string/jumbo v2, "WiFiTurnOn"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1879
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1880
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1881
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1882
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1886
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1873
    :cond_1
    :goto_0
    return-void

    .line 1888
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1890
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1892
    :cond_3
    const-string/jumbo v2, "WiFiTurnOff"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1893
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1894
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1895
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1896
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1900
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1902
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1904
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1906
    :cond_6
    const-string/jumbo v2, "WiFiScan"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1907
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1908
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startScan()V

    .line 1909
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1910
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "Searching"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1914
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1916
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "Searching"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1918
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1920
    :cond_9
    const-string/jumbo v2, "WiFiSelectScanedAp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1921
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v11

    .line 1922
    .local v11, "param":Ljava/lang/String;
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmCallback, param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    if-eqz v11, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1931
    const/4 v9, 0x0

    .line 1932
    .local v9, "isFound":Z
    const/4 v10, -0x1

    .line 1934
    .local v10, "networkId":I
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v7

    .line 1935
    .local v7, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "accessPoint$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1936
    .local v1, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1937
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmCallback, getSsidStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/4 v9, 0x1

    .line 1940
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v10

    .line 1942
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1943
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "AlreadyConnected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1945
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1946
    return-void

    .line 1925
    .end local v1    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v6    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v7    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v9    # "isFound":Z
    .end local v10    # "networkId":I
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "Exists"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1927
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1928
    return-void

    .line 1949
    .restart local v1    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v6    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v7    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .restart local v9    # "isFound":Z
    .restart local v10    # "networkId":I
    :cond_c
    const/4 v2, -0x1

    if-eq v10, v2, :cond_e

    .line 1950
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2, v10}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->connect(I)V

    .line 1966
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1967
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "Connected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1971
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1972
    return-void

    .line 1952
    :cond_e
    new-instance v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1953
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    const/4 v4, 0x0

    .line 1952
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 1955
    .local v0, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-eqz v0, :cond_f

    .line 1956
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1958
    :cond_f
    const-string/jumbo v2, "WifiSettingsBase"

    const-string/jumbo v3, "preference is nul"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "Connected"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1962
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1976
    .end local v0    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v1    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_10
    if-nez v9, :cond_1

    .line 1977
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Name"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1979
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1980
    return-void

    .line 1982
    .end local v6    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v7    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v9    # "isFound":Z
    .end local v10    # "networkId":I
    .end local v11    # "param":Ljava/lang/String;
    :cond_11
    const-string/jumbo v2, "WiFiRemoveConnectAp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1983
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1984
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    .line 1985
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1986
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyDisconnected"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1990
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1992
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyDisconnected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1994
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1996
    :cond_14
    const-string/jumbo v2, "WiFiSelectConnectedAp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1997
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1998
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 1999
    .local v13, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    .line 2000
    .restart local v10    # "networkId":I
    const/4 v2, -0x1

    if-eq v10, v2, :cond_1

    .line 2001
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v10}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 2002
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v3, v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 2004
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2005
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "Connected"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2009
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2012
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "networkId":I
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "Connected"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2014
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2016
    :cond_17
    const-string/jumbo v2, "WiFiAdvanced"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2017
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    .line 2018
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2019
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiAdvanced"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2022
    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2023
    :cond_19
    const-string/jumbo v2, "WiFiDirectSettings"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2024
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2025
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2027
    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2028
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileHotspot"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2030
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2039
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onP2pMenuPressed()V

    goto/16 :goto_0

    .line 2031
    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2032
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileHotspot"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiDirectSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2034
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    .line 2036
    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2
.end method
