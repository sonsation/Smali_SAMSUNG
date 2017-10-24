.class Lcom/android/settings/DeviceInfoSettings$6;
.super Landroid/os/Handler;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DeviceInfoSettings;

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 2169
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 2170
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2171
    .local v2, "stateId":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2168
    :cond_1
    :goto_0
    return-void

    .line 2173
    :pswitch_0
    const-string/jumbo v3, "DeviceNameChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2174
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-eqz v3, :cond_9

    .line 2175
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 2176
    .local v1, "newName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2177
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "device_name"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2178
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2179
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "NewName"

    const-string/jumbo v5, "NewName"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2182
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 2184
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/DeviceInfoSettings;->isResumed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2185
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 2187
    :cond_5
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v3, v3, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2188
    const-string/jumbo v4, "device_name"

    .line 2187
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2189
    .local v0, "deviceName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2190
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2191
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "NewName"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2194
    :cond_6
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2196
    :cond_7
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3, v1}, Lcom/android/settings/DeviceInfoSettings;->showDialog(Ljava/lang/String;)V

    .line 2197
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2198
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "NewName"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2201
    :cond_8
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2206
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "newName":Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
