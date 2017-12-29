.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;
.super Ljava/lang/Object;
.source "WifiApSetDataLimitDialog.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 136
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "WifiApSetDataLimitDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStateReceived, stateId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string/jumbo v3, "MobileHotspotDataLimitChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 140
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "param":Ljava/lang/String;
    const-string/jumbo v3, "WifiApSetDataLimitDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mEmCallback, param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-nez v3, :cond_1

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SetLimitCapacity"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 148
    return-void

    .line 150
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 151
    .local v0, "length":I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    if-nez v0, :cond_3

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SetLimitCapacity"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 156
    return-void

    .line 158
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 159
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->performClick()Z

    .line 161
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 162
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SetLimitCapacity"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimitChange"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 165
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 190
    .end local v0    # "length":I
    .end local v1    # "param":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void

    .line 167
    .restart local v0    # "length":I
    .restart local v1    # "param":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "SetLimitCapacity"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 171
    return-void

    .line 173
    .end local v0    # "length":I
    .end local v1    # "param":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "DisableMobileHotspotDataLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->isApDataLimited()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 175
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->performClick()Z

    .line 176
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 177
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Mobile hotspot data limit"

    const-string/jumbo v5, "turned on"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DisableMobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 180
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 182
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 183
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Mobile hotspot data limit"

    const-string/jumbo v5, "turned on"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "MobileHotspotDataLimit"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 186
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
