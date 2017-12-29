.class Lcom/android/settings/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/Settings;

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 993
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 994
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bixby state Id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string/jumbo v5, "Search"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 996
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/settings/Settings$1$1;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/Settings$1$1;-><init>(Lcom/android/settings/Settings$1;Ljava/lang/String;)V

    .line 1006
    const-wide/16 v8, 0x1f4

    .line 996
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 992
    :goto_0
    return-void

    .line 1007
    :cond_0
    const-string/jumbo v5, "TSecurity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1008
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1009
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1010
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.skt.t_smart_charge"

    const-string/jumbo v6, "com.skt.t_smart_charge.Main_Activity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v5, v1}, Lcom/android/settings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1013
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1014
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1015
    :cond_1
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1018
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    .line 1019
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1022
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    .line 1023
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 1025
    :cond_3
    const-string/jumbo v5, "UserManualSearch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1026
    const/4 v2, 0x0

    .line 1027
    .local v2, "param":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-eqz v5, :cond_4

    .line 1028
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    .line 1031
    .end local v2    # "param":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    .line 1032
    iget-object v6, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v6}, Lcom/android/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/settings/Utils;->getUserManualSearchURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1031
    invoke-virtual {v5, v6}, Lcom/android/settings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 1033
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1034
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1035
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "SearchKeyword"

    const-string/jumbo v7, "exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "User manual_Search"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1038
    :cond_5
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 1039
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1038
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1048
    :catch_1
    move-exception v0

    .line 1049
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1050
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1041
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1042
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "SearchKeyword"

    const-string/jumbo v7, "match"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "User manual_Search"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1045
    :cond_7
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 1046
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 1045
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1053
    :cond_8
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-static {v5}, Lcom/android/settings/Settings;->-wrap2(Lcom/android/settings/Settings;)V

    .line 1054
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-static {v5, v3}, Lcom/android/settings/Settings;->-wrap0(Lcom/android/settings/Settings;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1055
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-static {v5, v3}, Lcom/android/settings/Settings;->-wrap1(Lcom/android/settings/Settings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    .local v4, "tileId":Ljava/lang/String;
    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bixby state Id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Tile id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string/jumbo v5, "TRoaming"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1058
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1059
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    .line 1060
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1061
    return-void

    .line 1063
    :cond_9
    const-string/jumbo v5, "ServiceProvider"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1064
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1065
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    .line 1066
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1067
    return-void

    .line 1070
    :cond_a
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v5, v4}, Lcom/android/settings/Settings;->openTileForBiby(Ljava/lang/String;)Z

    .line 1071
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1072
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1073
    :cond_b
    iget-object v5, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    iget-object v5, v5, Lcom/android/settings/Settings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1075
    .end local v4    # "tileId":Ljava/lang/String;
    :cond_c
    return-void
.end method
