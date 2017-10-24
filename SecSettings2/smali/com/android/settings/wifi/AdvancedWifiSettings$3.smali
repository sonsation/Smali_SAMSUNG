.class Lcom/android/settings/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1198
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 1200
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v5, "AdvancedWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEmCallback, stateId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string/jumbo v5, "WiFiSetSleepPolicy"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1203
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v0

    .line 1204
    .local v0, "param":I
    const-string/jumbo v5, "AdvancedWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEmCallback, param: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_sleep_policy"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1209
    .local v4, "value":I
    if-ltz v0, :cond_0

    if-le v0, v9, :cond_1

    .line 1210
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SleepPolicy"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1212
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1213
    return-void

    .line 1214
    :cond_1
    if-ne v0, v4, :cond_2

    .line 1215
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SleepPolicy"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1217
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1218
    return-void

    .line 1221
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string/jumbo v6, "sleep_policy"

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1222
    .local v1, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v1, :cond_3

    .line 1223
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1224
    .local v3, "strValue":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1225
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v1, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap6(Lcom/android/settings/wifi/AdvancedWifiSettings;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 1228
    .end local v3    # "strValue":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1229
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SleepPolicy"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1233
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1197
    .end local v0    # "param":I
    .end local v1    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v4    # "value":I
    :cond_5
    :goto_0
    return-void

    .line 1234
    :cond_6
    const-string/jumbo v5, "WiFiManageNetworks"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1235
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get8(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1236
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->onManageNetworkMenuPressed()V

    .line 1238
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1239
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiManageNetworks"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1242
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1244
    :cond_8
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFi"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1246
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1248
    :cond_9
    const-string/jumbo v5, "WiFiWpsPushButton"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1249
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get8(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1250
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap4(Lcom/android/settings/wifi/AdvancedWifiSettings;I)V

    .line 1252
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1253
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1256
    :cond_a
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1258
    :cond_b
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFi"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1260
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1262
    :cond_c
    const-string/jumbo v5, "WiFiSetPasspointOn"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1263
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get8(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1264
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFi"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1266
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1267
    :cond_d
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-nez v5, :cond_e

    .line 1268
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PasspointAP"

    const-string/jumbo v7, "TurnedOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1270
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1271
    :cond_e
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1272
    const-string/jumbo v5, "DCM"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1273
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get4(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1274
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1275
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap5(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    .line 1278
    :cond_f
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set0(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    .line 1283
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1284
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Passpoint"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1288
    :cond_10
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1280
    :cond_11
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap1(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto :goto_1

    .line 1290
    :cond_12
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Passpoint"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1292
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1294
    :cond_13
    const-string/jumbo v5, "WiFiSetPasspointOff"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1295
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get8(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_14

    .line 1296
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFi"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1298
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1299
    :cond_14
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-nez v5, :cond_15

    .line 1300
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PasspointAP"

    const-string/jumbo v7, "TurnedOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1302
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1303
    :cond_15
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1304
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap1(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    .line 1306
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1307
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Passpoint"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1311
    :cond_16
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1313
    :cond_17
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Passpoint"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1315
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1317
    :cond_18
    const-string/jumbo v5, "WiFiShowMAC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1318
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1319
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1322
    :cond_19
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1323
    :cond_1a
    const-string/jumbo v5, "WiFiShowIPAddress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1324
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1325
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1328
    :cond_1b
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1329
    :cond_1c
    const-string/jumbo v5, "SmartNetworkSwitch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1330
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get7(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1331
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get7(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1332
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1334
    :cond_1d
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "MobileNetwork"

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1336
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get2(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
